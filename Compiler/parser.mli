
(* The type of tokens. *)

type token = 
  | VAL
  | TYPE
  | TO
  | TIMES
  | RPR
  | RETURN
  | RBK
  | RBC
  | PRINT
  | PLUS
  | OR
  | OF
  | NOT
  | MINUS
  | MININT
  | MAXINT
  | LPR
  | LBK
  | LBC
  | INT
  | IN
  | IF
  | IDENT of (Ast.ident)
  | FUNCTION
  | FOREACH
  | FILLED
  | EOF
  | ELSE
  | DIV
  | DELIMITER
  | CST of (int)
  | COMMA
  | COLON
  | CMP of (Ast.binop)
  | BY
  | ASSIGN
  | ARRAY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
