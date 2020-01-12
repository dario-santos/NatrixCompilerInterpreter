(* Produção de código para a linguagem Natrix *)
      
open Format
open X86_64
open Ast
      
exception VarUndef of string
exception Error of string
let error s = raise (Error s)

let minint = 0
let maxint = 2147483647

(* Tamanho da frame, em byte (cada variável local ocupa 8 bytes) *)
let frame_size = ref 0

(* Variáveis para garantir que cada for/if/etc. tem labels com nomes diferentes *)
let number_of_for = ref 0
let number_of_bool_tests = ref 0
let number_of_ifs = ref 0
let number_of_tipagens = ref 0
let number_of_arraydefs = ref 0

(* Hashtbl para as funções, a outra para os diferentes contextos *)
                 (*id, (tipo, ofs) *)
type table_ctx = (string, (Ast.costumtype * int)) Hashtbl.t
let (function_ctx : (string, table_ctx * costumtype) Hashtbl.t) = Hashtbl.create 17
(*                   nome    ctx         retorno *)

let functions_code = ref nop

let rec find_id ctxs id = 
    match ctxs with
    | hd::tl -> if Hashtbl.mem hd id then [hd] @ (find_id tl id) else (find_id tl id) 
    | _ -> []
let is_rbx_in_type_boundaries ctxs t = 
  match t with
  | Int ->
    number_of_tipagens := !number_of_tipagens + 1;
    let current_tipagem_test = string_of_int(!number_of_tipagens) in
    cmpq (imm minint) (reg rbx) ++
    jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("inicio_true_" ^ current_tipagem_test) ++
    cmpq (imm maxint) (reg rbx) ++
    jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("fim_true_" ^ current_tipagem_test) 
  | CTid t -> 
    if List.length (find_id ctxs (t ^ "_fim")) = 0 then error "get_type_boundaries: Tipo nao definido";
    let ctx = List.hd (List.rev (find_id ctxs (t ^ "_fim"))) in
    let inicio_ofs = - snd(Hashtbl.find ctx (t ^ "_inicio")) in  
    let fim_ofs = - snd(Hashtbl.find ctx (t ^ "_fim")) in
    number_of_tipagens := !number_of_tipagens + 1;
    let current_tipagem_test = string_of_int(!number_of_tipagens) in
    movq (ind ~ofs:(inicio_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (reg rbx) ++
    jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("inicio_true_" ^ current_tipagem_test) ++
    movq (ind ~ofs:(fim_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (reg rbx) ++
    jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("fim_true_" ^ current_tipagem_test)

let is_in_type_boundaries ctxs id_ofs t = 
  match t with
  | Int ->
    number_of_tipagens := !number_of_tipagens + 1;
    let current_tipagem_test = string_of_int(!number_of_tipagens) in
    cmpq (imm minint) (ind ~ofs:(-id_ofs) rbp) ++
    jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("inicio_true_" ^ current_tipagem_test) ++
    cmpq (imm maxint) (ind ~ofs:(-id_ofs) rbp) ++
    jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("fim_true_" ^ current_tipagem_test) 
  | CTid t -> 
    if List.length (find_id ctxs (t ^ "_fim")) = 0 then error "get_type_boundaries: Tipo nao definido";
    let ctx = List.hd (List.rev (find_id ctxs (t ^ "_fim"))) in
    let inicio_ofs = - snd(Hashtbl.find ctx (t ^ "_inicio")) in  
    let fim_ofs = - snd(Hashtbl.find ctx (t ^ "_fim")) in
    number_of_tipagens := !number_of_tipagens + 1;
    let current_tipagem_test = string_of_int(!number_of_tipagens) in
    movq (ind ~ofs:(inicio_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (ind ~ofs:(-id_ofs) rbp) ++
    jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("inicio_true_" ^ current_tipagem_test) ++
    movq (ind ~ofs:(fim_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (ind ~ofs:(-id_ofs) rbp) ++
    jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("fim_true_" ^ current_tipagem_test)
    
let rec compile_expr ctxs = function
  | Ecst i ->
      movq (imm i) (reg rax) ++
      pushq (reg rax)
  | Eset (e1, e2) ->
      compile_expr ctxs e1 ++ (* inicio *)
      compile_expr ctxs e2    (* fim *)
  | Eminint -> 
      movq (imm minint) (reg rax) ++
      pushq (reg rax) 
  | Emaxint ->
      movq (imm maxint) (reg rax) ++
      pushq (reg rax)
  | Eident id -> 
    if (List.length(find_id ctxs (id ^ "_fim"))) != 0
    then
      let ctx = List.hd( List.rev (find_id ctxs (id ^ "_fim"))) in
      let inicio_ofs = - snd(Hashtbl.find ctx (id ^ "_inicio")) in
      let fim_ofs = - snd(Hashtbl.find ctx (id ^ "_fim")) in
      movq (ind ~ofs:inicio_ofs rbp) (reg rax) ++
      pushq (reg rax) ++
      movq (ind ~ofs:fim_ofs rbp) (reg rax) ++
      pushq (reg rax)
    else
      let _ = if (List.length(find_id ctxs id)) == 0 then raise (VarUndef id) in
      let ctx = List.hd( List.rev (find_id ctxs id)) in
      let ofs = - snd(Hashtbl.find ctx id) in
      movq (ind ~ofs rbp) (reg rax) ++
      pushq (reg rax) 
  | Ebinop (Bdiv, e1, e2) -> (* um caso particular para a divisão *)
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++
      movq (imm 0) (reg rdx) ++
      popq rbx ++
      popq rax ++
      cmpq (imm 0) (reg rbx) ++
      je "print_error_z" ++
      idivq (reg rbx) ++
      pushq (reg rax)
  | Ebinop (Bmod, e1, e2) ->
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++
      movq (imm 0) (reg rdx) ++
      popq rbx ++
      popq rax ++
      cmpq (imm 0) (reg rbx) ++
      je "print_error_z" ++
      idivq (reg rbx) ++
      pushq (reg rdx)

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
    op (reg rbx) (reg rax) ++
    pushq (reg rax)
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
  | Ecall ("size", [e1]) -> 
    (*
      1 - verificar que é um conjunto
      2 - ir buscar o inicio e o fim
      3 - fim - inicio
      4 - print do resultado
    *)
    compile_expr ctxs e1 ++
    popq rax ++ (* Fim *)
    popq rbx ++ (* Inicio *)
    subq (reg rbx) (reg rax) ++
    pushq (reg rax) 
  | Ecall (f, el) ->
    if not (Hashtbl.mem function_ctx f) then error "Funcao nao implementada";
    let ctx, return = Hashtbl.find function_ctx f in
    let code = ref nop in
    let arguments = Hashtbl.fold (fun _ v acc -> v :: acc) ctx [] in
    if (List.length arguments) - 1 != (List.length el) then error "Assinatura invalida";
    for i = 0 to (List.length el) - 1 do
    (*
        1- ir buscar o valor da expressão
        2- atribuir esse valor ao argumento
    *)
      let t, ofs = (List.nth arguments i) in
      code := !code ++
        compile_expr ctxs (List.nth el i) ++
        popq rax ++
        movq (reg rax) (ind ~ofs:(-ofs) rbp) ++ (* Falta associar o ofs ao argumento certo*)
        is_rbx_in_type_boundaries ctxs t;
    done;
    (* Tratar do retorno e tipagem *)
    !code ++ 
    call f ++
    movq (reg rax) (reg rbx) ++
    is_rbx_in_type_boundaries ctxs return ++
    pushq (reg rax)
  | _ -> error "Not implemented"

let get_type_size ctxs s = 
  match s with
  | Eset (e1, e2) ->
    compile_expr ctxs e1 ++
    popq rax ++ (* Fim *)
    popq rbx ++ (* Inicio *)
    subq (reg rbx) (reg rax) ++
    pushq (reg rax)
  | _ -> compile_expr ctxs s

let rec compile_stmt ctxs = function
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

  | Sreturn (e1) -> 
    compile_expr ctxs e1 ++
    popq rax ++
    ret
  | Sdeclare (id, t ,e) ->
    let ctx = List.hd (List.rev ctxs) in
    if Hashtbl.mem ctx (id ^ "_fim") then error "Sdeclare: o identificador deve ser único";
    if Hashtbl.mem ctx id then error "Sdeclare: o identificador deve ser único";
    let ofs = - !frame_size in
    frame_size := 8 + !frame_size;
    let code =
      compile_expr ctxs e ++
      popq rax ++
      movq (reg rax) (ind ~ofs rbp) ++
      is_in_type_boundaries ctxs (-ofs) t
    in
    Hashtbl.add ctx id (t, (-ofs));
    code
  | Sdeclarearray (id, ida, e) ->
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem ctx (id ^ "_array0") then error "o identificador deve ser único";   (*Se já existir uma array neste ctx *)
      if Hashtbl.mem ctx (id ^ "_fim") then error "o identificador deve ser único";      (*Se já existir um conjunto neste ctx *)
      if Hashtbl.mem ctx (id ^ "_defarray") then error "o identificador deve ser único"; (*Se já existir uma def de array neste ctx *)
      if Hashtbl.mem ctx id then error "o identificador deve ser único";                 (*Se já existir uma variável neste ctx *)
      if Hashtbl.mem function_ctx id then error "o identificador deve ser único";        (*Se já existir uma função neste ctx *)
      (*
        1 - Verificar que o id ainda não foi usado
        2 - Verificar se o tipo existe
        3 - Ir buscar o valor da expressão, verificar se é um inteiro válido
        4 - Reservar n elementos
      *)
      number_of_arraydefs := !number_of_arraydefs + 1;
      let current_arraydefs = string_of_int(!number_of_arraydefs) in
      let ofs = !frame_size in
      frame_size := 16 + !frame_size;
      let code =
        label ("arraydef_" ^ current_arraydefs) ++
        popq rax ++ (* value  *)
        movq (reg rbx) (ind ~ofs rbp) ++
        (* Verificar o valor *)
        popq rbx ++ (* size *)
        decq (reg rbx) ++
        pushq (reg rbx) ++
        cmpq (imm 0) (reg rbx) ++
        jl ("arraydef_" ^ current_arraydefs)
      in
      Hashtbl.add ctx (id ^ "_array0") (Int, -ofs);
      code
  | Sassign (id, e1)  ->
      if (List.length (find_id ctxs id)) == 0 then error "Sassign: variável não declarada";
      let ctx = List.hd (List.rev (find_id ctxs id)) in
      let t, ofs = Hashtbl.find ctx id in
      let ofs = -ofs in
      compile_expr ctxs e1 ++
      popq rax ++
      movq (reg rax) (ind ~ofs rbp) ++
      is_in_type_boundaries ctxs (-ofs) t
  | Sarray (id, sz, t) -> 
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem ctx (id ^ "_array0") then error "o identificador deve ser único";   (*Se já existir uma array neste ctx *)
      if Hashtbl.mem ctx (id ^ "_fim") then error "o identificador deve ser único";      (*Se já existir um conjunto neste ctx *)
      if Hashtbl.mem ctx (id ^ "_defarray") then error "o identificador deve ser único"; (*Se já existir uma def de array neste ctx *)
      if Hashtbl.mem ctx id then error "o identificador deve ser único";                 (*Se já existir uma variável neste ctx *)
      if Hashtbl.mem function_ctx id then error "o identificador deve ser único";           (*Se já existir uma função neste ctx *)
      (*
        1 - Verificar que o id ainda não foi usado
        2 - Verificar se o tipo existe
        3 - Ir buscar o valor da expressão, verificar se é um conjunto
        
        ofs + 0  -> id_array_start
        ofs + 8  -> id_array_elements
        ofs + 16 -> id_array_t_inicio
        ofs + 32 -> id_array_t_fim  
      *)
      let size = get_type_size ctxs sz in
      let ofs = - !frame_size in
      frame_size := 32 + !frame_size;
      let code = 
        size ++
        (* Guardar o valor do size *)
        popq rax ++ 
        movq (imm 0) (ind ~ofs rbp) ++
        movq (reg rax) (ind ~ofs:(ofs - 8) rbp) ++       
        compile_expr ctxs t ++
        popq rax ++ (* fim *)
        popq rbx ++ (* inicio*)
        movq (reg rbx) (ind ~ofs:(ofs - 16) rbp) ++
  
        movq (reg rbx) (ind ~ofs:(ofs - 24) rbp)
      in
      Hashtbl.add ctx (id ^ "_array_start") (Int   , -(ofs));
      Hashtbl.add ctx (id ^ "_array_elements") (Int, -(ofs + 8));
      Hashtbl.add ctx (id ^ "_array_t_inicio") (Int, -(ofs + 16));
      Hashtbl.add ctx (id ^ "_array_t_fim") (Int   , -(ofs + 24));
      code
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
      Hashtbl.add ctx (id ^ "_inicio") (Int, (next));
      Hashtbl.add ctx (id ^ "_fim") (Int, (next + 8));
      code
  | Sprint e ->
      compile_expr ctxs e ++
      popq rdi ++
      call "print_int"
  | Sprintn e ->
      compile_expr ctxs e ++
      popq rdi ++
      call "printn_int"
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
      let ctx = (Hashtbl.create 17 : table_ctx) in
      (* Argumentos da função *)
      let rec translate_arguments = function
        | hd::tl ->
          let id, t = hd in
          if id = f then error "Stfunction: os argumentos nao pode ter um nome igual ao da funcao"; 
          if Hashtbl.mem ctx id  then error "Stfunction: os argumentos nao podem ter nomes iguais"; 
          let ofs = - !frame_size in
          let code =
            frame_size := 8 + !frame_size;
            movq (imm 0) (ind ~ofs rbp)
          in
          Hashtbl.add ctx id (t, (-ofs));
          code ++ translate_arguments tl
        | _ -> nop
      in
      let arguments_code = translate_arguments args in
      functions_code := !functions_code ++
        label f ++
        compile_stmt (ctxs@[ctx]) body ++
        (* Se chegou aqui é porque não houve returns *)
        call "print_error_f" ++
        ret;
      Hashtbl.add function_ctx f (ctx, return);
      arguments_code

  | Stblock bl -> 
      let block = List.rev(interpret_block_stmts ctxs bl) in
      List.fold_right (++) block nop
  | Stmt s     -> compile_stmt ctxs s

(* Compilação do programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let ctxs = [(Hashtbl.create 17 : table_ctx)] in
  let code = compile_stmts ctxs p in
  functions_code := !functions_code; 
  let p =
    { text =
        globl "main" ++ label "main" ++
        subq (imm !frame_size) !%rsp ++ (* aloca a frame *)
        leaq (ind ~ofs:(!frame_size - 8) rsp) rbp ++ (* %rbp = ... *)
        code ++
        label "end" ++
        addq (imm !frame_size) !%rsp ++ (* desaloca a frame *)
        movq (imm 0) (reg rax) ++ (* exit *)
        ret ++
        label "printn_int" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprintn_int") rdi ++
        movq (imm 0) (reg rax) ++
        call "printf" ++
        ret ++
        label "print_int" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_int") rdi ++
        movq (imm 0) (reg rax) ++
        call "printf" ++
        ret ++
        label "print_error_t" ++
        movq !%rdi !%rsi ++
        leaq (lab ".Sprint_error_t") rdi ++
        movq (imm 0) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        label "print_error_z" ++
        movq !%rdi !%rsi ++
        leaq (lab ".Sprint_error_z") rdi ++
        movq (imm 0) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        label "print_error_f" ++
        movq !%rdi !%rsi ++
        leaq (lab ".Sprint_error_f") rdi ++
        movq (imm 0) !%rax ++
        call "printf" ++
        jmp "end" ++
        !functions_code;
      data = 
        label ".Sprintn_int" ++ string "%d\n" ++
        label ".Sprint_int" ++ string "%d" ++
        label ".Sprint_error_z" ++ string "Erro: Divisao por zero.\n" ++
        label ".Sprint_error_t" ++ string "Erro de tipagem\n" ++
        label ".Sprint_error_f" ++ string "Funcao sem retorno\n"
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  X86_64.print_program fmt p;
   (* "flush" do buffer para garantir que tudo foi para aí escrito antes de o fechar *)
  fprintf fmt "@?";
  close_out f
