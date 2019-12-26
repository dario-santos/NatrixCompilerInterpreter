
(* The type of tokens. *)

type token = 
  | VAR
  | VAL
  | TYPE_ASSIGN
  | TIMES
  | THEN
  | RPR
  | RBK
  | RBC
  | PRINT
  | PLUS
  | OR
  | NOT
  | NEQ
  | MINUS
  | LT
  | LPR
  | LET
  | LBK
  | LBC
  | INT
  | IN
  | IF
  | ID of (string)
  | GT
  | GET
  | FUNCTION
  | FOREACH
  | EQ
  | EOF
  | ELSE
  | DO
  | DIV
  | DELIMITER
  | CST of (int)
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
