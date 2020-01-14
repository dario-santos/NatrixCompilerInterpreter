
(* The type of tokens. *)

type token = 
  | WHILE
  | VAL
  | TYPE
  | TO
  | TIMES
  | SCANF
  | RSHIFT
  | RPR
  | RETURN
  | RBK
  | RBC
  | PRINTN
  | PRINT
  | PLUS
  | OR
  | OF
  | NOT
  | NEQ
  | MOD
  | MINUS
  | MININT
  | MAXINT
  | LT
  | LSHIFT
  | LPR
  | LET
  | LBK
  | LBC
  | INT
  | IN
  | IF
  | IDENT of (Ast.ident)
  | GT
  | GET
  | FUNCTION
  | FOREACH
  | FOR
  | FILLED
  | EQ
  | EOF
  | ELSE
  | DIV
  | DELIMITER
  | CST of (int64)
  | COMMA
  | COLON
  | BY
  | BITXOR
  | BITOR
  | BITNOT
  | BITAND
  | ASSIGN
  | ARRAY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
