(*
  Última alteração: 28-12-2019
  Descricao: Árvore de sintaxe abastrata do Natrix
*)

type ident = string

type unop = 
  | Unot
  | Ubitnot

and binop =
  | Badd | Bsub | Bmul | Bdiv | Bmod
  | Beq | Bneq | Blt | Ble | Bgt | Bge
  | Band | Bor 
  | Bitand | Bitor | Bitxor | Bitls | Bitrs

and expr =
  | Ecst of int64
  | Eminint
  | Emaxint
  | Eset of expr * expr
  | Eident of ident
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr
  | Ecall of ident * expr list
  | Eget of ident * expr (* id[e2] *)
  | Eternary of expr * expr * expr

and stmt =
  | Sif of expr * stmt * stmt
  | Sreturn of expr
  | Sbreak
  | Scontinue
  | Sassign of ident * expr
  | Sdeclare of ident * costumtype * expr
  | Sset of ident * expr
  | Sarray of ident * expr * expr
  | Sdeclarearray of ident * ident * expr
  | Sprint of expr
  | Sprintn of expr
  | Sscanf of ident
  | Sblock of stmt list
  | Sfor of ident * costumtype * expr * expr * expr * stmt
  | Sforeach of ident * expr * stmt
  | Swhile of expr * stmt
  | Sdowhile of expr * stmt
  | Saset of ident * expr * expr (* id[e2] := e3 *)
  | Snothing

(* Para não podermos definir funções dentro de instruções *)
and stmts =                                               
  | Stblock of stmts list
  | Stfunction of ident * argument list * costumtype * stmt
  | Stmt of stmt

and argument = ident * costumtype

and costumtype = 
  | Int
  | CTid of ident
  
and program = stmts
