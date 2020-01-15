open Ast
open Format

let rec print_expr_list = function
  | [hd] -> print_expr hd
  | hd::tl -> print_expr hd; printf ", " ; print_expr_list tl
  | _ -> ()

and print_expr = function
  | Ecst n                -> printf " Ecst( %s ) " (Int64.to_string n)
  | Eset (e1, e2)         -> printf " Eset( "; print_expr e1; print_expr e2; printf ") "
  | Eminint               -> printf " Eminint "
  | Emaxint               -> printf " Emaxint "
  | Ebinop (Band, e1, e2) -> printf " Ebinop( Band, "; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (Bor, e1, e2)  -> printf " Ebinop( Bor, "; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (_, e1, e2)    -> printf " Ebinop( Op, "; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Eunop (_ , e1)        -> printf " Eunop( Unot, "; print_expr e1; printf ") "
  | Ecall ("size", [e1])  -> printf " Ecall( size, "; print_expr e1; printf ") "
  | Ecall (f, el)         -> printf " Ecall( %s, " f; print_expr_list el; printf " ) "  
  | Eident id             -> printf " Eident( %s ) " id
  | Eget (id, e2)         -> printf " Eget( %s," id; print_expr e2; printf ") " 

and print_stmt = function
  | Sif (e, s1, elif) -> printf "Sif("; print_expr e; printf ", "; print_stmt s1; printf ","; printf ")"
  | Sreturn e       -> printf "Sreturn("; print_expr e; printf ")"
  | Sassign (id, e1)-> printf "Sassign(%s, " id; print_expr e1; printf ")"
  | Sdeclare (id, t ,e1) -> printf "Sdeclare(%s, t, " id ; print_expr e1; printf ")"
  | Sset (id, e)    -> printf "Sset(%s, " id; print_expr e; printf ")"
  | Sarray(id,sz,_) -> printf "Sarray(%s, " id; print_expr sz; printf ", "; printf "_ )"
  | Sdeclarearray(id, ida, e) -> printf "Sdeclarearray(%s, %s, " id ida; print_expr e; printf ")"
  | Sprint e        -> printf "Sprint("; print_expr e; printf ")"
  | Sprintn e       -> printf "Sprintn("; print_expr e; printf ")"
  | Sscanf id       ->printf "Sscanf( %s )" id
  | Sblock bl       -> interpret_block_stmt  bl
  | Sforeach(x, e, bl) -> printf "Sforeach(%s, " x; print_expr e; printf ",\n"; print_stmt bl; printf ")"
  | Swhile(e, bl) -> printf "Swhile( "; print_expr e; printf ",\n"; print_stmt bl; printf ")"
  | Saset (id, e1, e2) -> printf "Saset(%s, " id; print_expr e1; printf ", "; print_expr e2; printf ")"
  
and print_argument_list = function
  | [arg1] -> let id, t = arg1 in printf " %s : " id; print_costum_type t
  | arg1 :: tl -> let id, t = arg1 in printf " %s : " id; print_costum_type t; printf ", "; print_argument_list tl
  | [] -> ()

and print_costum_type = function 
  | Int -> printf "int"
  | CTid t -> printf "t"

and print_stmts = function  
  | Stfunction (f, args, return, body) -> printf "Stfunction( %s, (" f ; print_argument_list args; printf "), "; print_costum_type return; printf ", "; print_stmt body
  | Stblock bl -> interpret_block_stmts bl
  | Stmt s -> print_stmt s

and interpret_block_stmt  = function
  | [] -> printf "\n"
  | s :: sl -> print_stmt s; printf "\n";interpret_block_stmt sl

and interpret_block_stmts = function
  | [] -> printf "\n"
  | s :: sl -> print_stmts s; printf "\n"; interpret_block_stmts sl

let print_file s = print_stmts s
