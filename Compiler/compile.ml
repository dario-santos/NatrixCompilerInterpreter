(* Produção de código para a linguagem Natrix *)

(*
  Todo: 
  - tudo o que não foi implementado
  - Utilizar variáveis 64 bits em vez de 32 bit, exemplo maxint
*)
  
(* Produção de código para a linguagem natrix*)
      
open Format
open X86_64
open Ast
      

(* Excepção por levantar quando uma variável é mal utilizada *)
exception VarUndef of string
exception Error of string

let error s = raise (Error s)

(* Tipos de dados*)
type value_type = int * int (* inicio, fim *)

(* Tamanho da frame, em byte (cada variável local ocupa 8 bytes) *)
let frame_size = ref 0

let number_of_for = ref 0
let number_of_bool_tests = ref 0
let number_of_ifs = ref 0

type table_ctx = (string, (value_type * int)) Hashtbl.t
let (function_ctx : (string, X86_64.text) Hashtbl.t) = Hashtbl.create 17

let rec find_id id l = 
    match l with
    | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
    | _ -> []

let rec compile_expr ctxs = function
  | Ecst i ->
      movq (imm i) (reg rax) ++
      pushq (reg rax)
  | Eset (e1, e2) ->
      compile_expr ctxs e1 ++ (* inicio *)
      compile_expr ctxs e2    (* fim *)
  | Eminint -> 
      movq (imm 0) (reg rax) ++
      pushq (reg rax) 
  | Emaxint ->
      movq (imm 2147483647) (reg rax) ++
      pushq (reg rax)
  | Eident id -> 
    if (List.length(find_id (id ^ "_fim") ctxs)) != 0
    then
      let ctx = List.hd( List.rev (find_id (id ^ "_fim") ctxs)) in
      let inicio_ofs = - snd(Hashtbl.find ctx (id ^ "_inicio")) in
      let fim_ofs = - snd(Hashtbl.find ctx (id ^ "_fim")) in
      movq (ind ~ofs:inicio_ofs rbp) (reg rax) ++
      pushq (reg rax) ++
      movq (ind ~ofs:fim_ofs rbp) (reg rax) ++
      pushq (reg rax)
    else
      let _ = if (List.length(find_id id ctxs)) == 0 then raise (VarUndef id) in
      let ctx = List.hd( List.rev (find_id id ctxs)) in
      let ofs = - snd(Hashtbl.find ctx id) in
      movq (ind ~ofs rbp) (reg rax) ++
      pushq (reg rax)
  | Ebinop (Bdiv, e1, e2) -> (* um caso particular para a divisão *)
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++
      movq (imm 0) (reg rdx) ++
      popq rbx ++
      popq rax ++
      idivq (reg rbx) ++
      pushq (reg rax)
  | Ebinop (Badd | Bsub | Bmul as o , e1, e2) ->
    let op = match o with
      | Badd -> addq
      | Bsub -> subq
      | Bmul -> imulq
      | _ -> assert false
    in
    compile_expr ctxs e1 ++
    compile_expr ctxs e2 ++
    popq rbx ++
    popq rax ++
    op !%rbx !%rax ++
    pushq !%rax
  | Ebinop (Band | Bor as o, e1, e2) ->
    let op = 
      match o with 
      | Band -> andq
      | Bor -> orq
      | _ -> assert false
    in
    compile_expr ctxs e1 ++
    compile_expr ctxs e2 ++
    popq rbx ++
    popq rax ++
    op (reg rbx) (reg rax) ++
    pushq (reg rax)
  | Ebinop (Beq | Bneq | Blt | Ble | Bgt | Bge as o, e1, e2) ->
    let op = match o with
      | Beq -> je
      | Bneq-> jne
      | Blt -> jl
      | Ble -> jle
      | Bgt -> jg
      | Bge -> jge
      | _ -> assert false
    in
    number_of_bool_tests := !number_of_bool_tests + 1;
    let current_bool_test = string_of_int(!number_of_bool_tests) in
    compile_expr ctxs e1 ++
    compile_expr ctxs e2 ++
    popq rbx ++
    popq rax ++
    cmpq (reg rbx) (reg rax) ++
    op ("bool_true_" ^ current_bool_test) ++
    movq (imm 0) (reg rax) ++
    pushq (reg rax) ++
    jmp ("bool_end_" ^ current_bool_test) ++
    label ("bool_true_" ^ current_bool_test) ++
    movq (imm 1) (reg rax) ++
    pushq (reg rax) ++
    label ("bool_end_" ^ current_bool_test)
  | Eunop (Unot, e1) ->
    number_of_bool_tests := !number_of_bool_tests + 1;
    let current_bool_test = string_of_int(!number_of_bool_tests) in
    compile_expr ctxs e1 ++
    popq rax ++
    cmpq (imm 0) (reg rax) ++
    je ("bool_true_" ^ current_bool_test) ++
    movq (imm 0) (reg rax) ++
    pushq (reg rax) ++
    jmp ("bool_end_" ^ current_bool_test) ++
    label ("bool_true_" ^ current_bool_test) ++
    movq (imm 1) (reg rax) ++
    pushq (reg rax) ++
    label ("bool_end_" ^ current_bool_test)
  | Ecall (f, el) ->
    begin
      try
        ignore(Hashtbl.find function_ctx f);
        call f
      with Not_found -> error "função não implementada"
    end
  | _ -> error "Not implemented"
    
and compile_stmt ctxs = function
  | Sif (e, s1, s2) ->
    number_of_ifs := !number_of_ifs + 1;
    let current_if_test = string_of_int(!number_of_ifs) in
    compile_expr ctxs e ++
    popq rax ++
    cmpq (imm 0) (reg rax) ++
    jne ("if_true_" ^ current_if_test) ++
    compile_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s2 ++
    jmp ("if_end_" ^ current_if_test) ++
    label ("if_true_" ^ current_if_test) ++
    compile_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s1 ++
    label ("if_end_" ^ current_if_test)
  | Sdeclare (id, t ,e) ->
    let ctx = List.hd (List.rev ctxs) in
    if Hashtbl.mem ctx (id ^ "_fim") then error "Sdeclare: o identificador deve ser único";
    if Hashtbl.mem ctx id then error "Sdeclare: o identificador deve ser único";
    let next = !frame_size in
    frame_size := 8 + !frame_size;
    let code =
      compile_expr ctxs e ++
      popq rax ++
      movq (reg rax) (ind ~ofs:(-next) rbp)
    in
    Hashtbl.add ctx id ((0, max_int), (next));
    code
  | Sassign (id, e1)  ->
      if (List.length (find_id id ctxs)) == 0 then error "Sassign: variável não declarada";
      let ctx = List.hd (List.rev (find_id id ctxs)) in
      let ofs = - snd(Hashtbl.find ctx id) in 
      compile_expr ctxs e1 ++
      popq rax ++
      movq (reg rax) (ind ~ofs rbp)

  | Sset (id, set) ->
    let ctx = List.hd (List.rev ctxs) in
    if Hashtbl.mem ctx (id ^ "_fim") then error "Sset: o identificador deve ser único";
    if Hashtbl.mem ctx id then error "Sset: o identificador deve ser único";
    let next = !frame_size in
    frame_size := 16 + !frame_size;
    let code =
        compile_expr ctxs set ++
        popq rax ++
        popq rbx ++
        movq (reg rbx) (ind ~ofs:(-next) rbp) ++
        movq (reg rax) (ind ~ofs:(-(next + 8)) rbp)
      in
      Hashtbl.add ctx (id ^ "_inicio") ((0, max_int), (next));
      Hashtbl.add ctx (id ^ "_fim") ((0, max_int), (next + 8));
      code
  | Sprint e ->
    compile_expr ctxs e ++
    popq rdi ++
    call "print_int"
  | Sblock bl -> 
    let block = List.rev(interpret_block_stmt ctxs bl) in
    List.fold_right (++) block nop
  | Sforeach(x, e, bl) ->
      let ctxs = (ctxs@[(Hashtbl.create 17 : table_ctx)]) in
      let code = compile_stmt ctxs (Sdeclare(x, Int, Ecst 0)) in
      let ctx = List.hd (List.rev ctxs) in
      let ofs = - snd(Hashtbl.find ctx x) in  
      number_of_for := !number_of_for + 1;
      let foreach_index = string_of_int(!number_of_for) in  
      let loop_initialize = 
        code ++
        compile_expr ctxs e ++
        popq rbx ++
        popq rax ++
        movq (reg rax) (ind ~ofs rbp) ++
        pushq (reg rbx) ++
        label ("foreach_" ^ x ^ foreach_index)
      in
      let body = compile_stmt ctxs bl in
        loop_initialize ++ 
        body ++
        movq (ind ~ofs rbp) (reg rax) ++
        incq (reg rax) ++
        movq (reg rax) (ind ~ofs rbp) ++ 
        popq rax ++
        pushq (reg rax) ++
        cmpq (reg rax) (ind ~ofs rbp) ++
        jle ("foreach_" ^ x ^ foreach_index) ++
        popq rax
  | _ -> error "COMPILE STMT"
        
and interpret_block_stmt ctx = function
  | [] -> [nop]
  | s :: sl -> (interpret_block_stmt ctx sl) @ [compile_stmt ctx s]
        
and interpret_block_stmts ctx = function
  | [] -> [nop]
  | s::sl -> (interpret_block_stmts ctx sl) @ [compile_stmts ctx s]
        
and compile_stmts ctxs = function  
  | Stfunction (f, args, return, body) -> 
      (* f -> id *)
      (* args lista de argumentos, tem que ser declarados no contexto da função*)
      (* return -> tipo de retorno *)
      (* body -> corpo *)
      if Hashtbl.mem function_ctx f then error "Stfunction funcao ja declarada";
      let code = 
          compile_stmt ctxs body ++
          ret
      in
      Hashtbl.add function_ctx f code;
      nop
  | Stblock bl -> 
    let block = List.rev(interpret_block_stmts ctxs bl) in
    List.fold_right (++) block nop
  | Stmt s     -> compile_stmt ctxs s

(* Compilação do programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let ctxs = [(Hashtbl.create 17 : table_ctx)] in
  let code = compile_stmts ctxs p in
  let p =
    { text =
        globl "main" ++ label "main" ++
        subq (imm !frame_size) !%rsp ++ (* aloca a frame *)
        leaq (ind ~ofs:(!frame_size - 8) rsp) rbp ++ (* %rbp = ... *)
        code ++
        addq (imm !frame_size) !%rsp ++ (* desaloca a frame *)
        movq (imm 0) !%rax ++ (* exit *)
        ret ++
        label "print_int" ++
        movq !%rdi !%rsi ++
        leaq (lab ".Sprint_int") rdi ++
        movq (imm 0) !%rax ++
        call "printf" ++
        ret;
      data = label ".Sprint_int" ++ string "%d\n"
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  X86_64.print_program fmt p;
   (* "flush" do buffer para garantir que tudo foi para aí escrito
     antes de o fechar *)
  fprintf fmt "@?";
  close_out f
