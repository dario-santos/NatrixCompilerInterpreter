type unop =
  | Uneg 
  | Unot

and binop =
  | Badd | Bsub | Bmul | Bdiv | Bmod
  | Beq | Bneq | Blt | Ble | Bgt | Bge
  | Band | Bor 

and expr =
  | Cst of int
  | Var of string
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr
  | Ecall of string * expr list
  | Elist of expr list
  | Eget of expr * expr (* e1[e2] *)

and stmt =
  | Sif of expr * stmt * stmt
  | Sreturn of expr
  | Sassign of string * expr
  | Sdeclare of string * expr
  | Sprint of expr
  | Sblock of stmt list
  | Sfor of string * expr * stmt
  | Seval of expr
  | Sset of expr * expr * expr (* e1[e2] = e3 *)

type program = stmt list
