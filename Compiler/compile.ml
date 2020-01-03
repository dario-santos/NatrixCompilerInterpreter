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

exception HashError of ((string, unit) Hashtbl.t)

module StrMap = Map.Make(String)
      
(* Compilação de uma expressão *)
      
let rec compile_expr ctx = function
  | Ecst i ->
    movq (imm i)  (reg rax) ++
    pushq (reg rax)
  | Eminint -> 
    movq (imm 0) (reg rax) ++
    pushq (reg rax)
  | Emaxint ->
    movq (imm 2147483647) (reg rax) ++
    pushq (reg rax)
  | Eident x ->
      if not (Hashtbl.mem ctx x) then raise (VarUndef x);
      movq (lab x) !%rax ++
      pushq !%rax
    | Ebinop (Bdiv, e1, e2)-> (* um caso particular para a divisão *)
        compile_expr ctx e1 ++
        compile_expr ctx e2 ++
        movq (imm 0) (reg rdx) ++
        popq rbx ++
        popq rax ++
        idivq (reg rbx) ++
        pushq (reg rax)
    | Ebinop (o, e1, e2)->
        let op = match o with
          | Badd -> addq
          | Bsub -> subq
          | Bmul -> imulq
          | _ -> assert false
        in
        compile_expr ctx e1 ++
        compile_expr ctx e2 ++
        popq rbx ++
        popq rax ++
        op !%rbx !%rax ++
        pushq !%rax
    | _ -> error "Not implemented"
    
    (*Letin (x, e1, e2) ->
        if !frame_size = next then frame_size := 8 + !frame_size;
        comprec env next e1 ++
        popq rax ++
        movq !%rax (ind ~ofs:(-next) rbp) ++
        comprec (StrMap.add x next env) (next + 8) e2*)

and compile_stmt ctx = function
  | Sdeclare (id, t ,e) ->
    ignore(if Hashtbl.mem ctx id then error "Sdeclare: o identificador deve ser único"); (*Se já existir uma variável no scope *)
    let code =
      compile_expr ctx e ++
      popq rax ++
      movq (reg rax) (lab id)
    in
    Hashtbl.add ctx id ();
    code
  | Sprint e ->  
      compile_expr ctx e ++
      popq rdi ++
      call "print_int"
  | _ -> error "COMPILE STMT"
        
and interpret_block_stmt ctx = function
  | [] -> [nop]
  | s :: sl -> (interpret_block_stmt ctx sl) @ [compile_stmt ctx s]
        
and interpret_block_stmts ctx = function
  | [] -> [nop]
  | s::sl -> (interpret_block_stmts ctx sl) @ [compile_stmts ctx s]
        
and compile_stmts ctx = function  
  | Stfunction (f, args, return, body) -> error "compile_stmts Stfunction not implemented"
  | Stblock bl -> 
    let block = List.rev(interpret_block_stmts ctx bl) in
    List.fold_right (++) block nop
  | Stmt s     -> compile_stmt ctx s

(* Compilação do programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let code = compile_stmts (Hashtbl.create 17 : (string, unit)) p in
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
      data =
        Hashtbl.fold (fun x _ l -> label x ++ dquad [1] ++ l) genv
          (label ".Sprint_int" ++ string "%d\n")
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  X86_64.print_program fmt p;
   (* "flush" do buffer para garantir que tudo foi para aí escrito
     antes de o fechar *)
  fprintf fmt "@?";
  close_out f
