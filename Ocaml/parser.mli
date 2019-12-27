
(* The type of tokens. *)

type token = 
  | VAL
  | TIMES
  | RPR
  | RETURN
  | RBK
  | RBC
  | PRINT
  | PLUS
  | OR
  | NOT
  | MINUS
  | LPR
  | LBK
  | LBC
  | INT
  | IF
  | IDENT of (string)
  | EOF
  | ELSE
  | DIV
  | DELIMITER
  | CST of (int)
  | COLON
  | CMP of (Ast.binop)
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
