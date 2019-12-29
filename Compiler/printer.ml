open Ast 
open Format

let rec print_expr = function
  | Ecst n                -> printf " Ecst(%d) " n
  | Eset (e1, e2)         -> printf " Eset("; print_expr e1; print_expr e2; printf ") "
  | Eminint               -> printf " Eminint(minint) "
  | Emaxint               -> printf " Emaxint(maxint) "
  | Ebinop (Band, e1, e2) -> printf " Ebinop(Band,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (Bor, e1, e2)  -> printf " Ebinop(Bor,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (_, e1, e2)    -> printf " Ebinop(Op,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Eunop (Unot, e1)      -> printf " Eunop(Unot,"; print_expr e1; printf ") "
  | Ecall ("size", [e1])  -> printf " Ecall(size,"; print_expr e1; printf ") "
  | Ecall (f, el)         -> printf " Ecall(FUNCTION) "
  | Eident id             -> printf " Eident(%s) " id
  | Eget (id, e2)         -> printf " Eget(%s," id; print_expr e2; printf ") " 


(* interpretação de uma instrução - não devolve nada *)
and print_stmt = function
  | Sif (e, s1, s2) -> printf "Sif("; print_expr e; printf ", "; print_stmt s1; printf ","; print_stmt s2; printf ")"
  | Sreturn e       -> printf "Sreturn("; print_expr e; printf ")"
  | Sassign (id, e1)-> printf "Sassign(%s, " id; print_expr e1; printf ")"
  | Sdeclare (id, t ,e1) -> printf "Sdeclare(%s, t, " id ; print_expr e1; printf ")"
  | Sprint e        -> printf "Sprint("; print_expr e; printf ")"
  | Sblock bl       -> interpret_block_stmt  bl
  | Seval e         -> printf "Seval("; print_expr e; printf ")"
  | _ -> raise Not_found
  
and print_stmts = function  
  | Stfunction (f, args, return, body) -> printf "Stfunction()"
  | Stblock bl -> interpret_block_stmts bl
  | Stmt s -> print_stmt s

and interpret_block_stmt  = function
  | [] -> ()
  | s :: sl -> print_stmt s; interpret_block_stmt sl

and interpret_block_stmts = function
  | [] -> ()
  | s :: sl -> print_stmts s; interpret_block_stmts sl

(* interpretação de um ficheiro *)
let print_file s = print_stmts s
(* --------------------------------*)