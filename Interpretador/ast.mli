(*
  Última alteração: 27-12-2019
  Descricao: Árvore de sintaxe abastrata do Natrix
*)

type ident = string

type unop =
  | Uneg 
  | Unot

and binop =
  | Badd | Bsub | Bmul | Bdiv | Bmod
  | Beq | Bneq | Blt | Ble | Bgt | Bge
  | Band | Bor 

and expr =
  | Ecst of int
  | Eminint
  | Emaxint
  | Eident of ident
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr
  | Ecall of ident * expr list
  | Elist of expr list
  | Eget of expr * expr (* e1[e2] *)

and stmt =
  | Sif of expr * stmt * stmt
  | Sreturn of expr
  | Sassign of ident * expr
  | Sdeclare of ident * expr
  | Sprint of expr
  | Sblock of stmt list
  | Sforeach of ident * expr * expr * stmt
  | Seval of expr
  | Sset of expr * expr * expr (* e1[e2] = e3 *)

and program = stmt
