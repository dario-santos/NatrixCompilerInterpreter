(*
  Última alteração: 27-12-2019
  Descricao: Árvore de sintaxe abastrata do Natrix
*)

type ident = string

type unop =
  | Uneg 
  | Unot

and binop =
  | Badd | Bsub | Bmul | Bdiv
  | Beq | Bneq | Blt | Ble | Bgt | Bge
  | Band | Bor 

and expr =
  | Ecst of int
  | Eminint
  | Emaxint
  | Eset of expr * expr
  | Eident of ident
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr
  | Ecall of ident * expr list
  | Eget of ident * expr (* e1[e2] *)

and stmt =
  | Sif of expr * stmt * stmt
  | Sreturn of expr
  | Sassign of ident * expr
  | Sdeclare of ident * costumtype * expr
  | Sset of ident * expr
  | Sarray of ident * expr * costumtype
  | Sdeclarearray of ident * ident * expr
  | Sprint of expr
  | Sblock of stmt list
  | Sforeach of ident * expr * stmt
  | Seval of expr
  | Saset of ident * expr * expr (* id[e2] := e3 *)
  
and stmts =                                              (* Para não podermos definir funções dentro de instruções *) 
  | Stblock of stmts list
  | Stfunction of ident * argument list * costumtype * stmt
  | Stmt of stmt

and argument = ident * costumtype

and costumtype = 
  | Int
  | CTid of ident
  
and program = stmts
