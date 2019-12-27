type program = stmts list

and stmts =
  | If of boolean_expr * stmts * stmts
  | Assign of string * expr
  | Print of expr

and expr =
  | Cst of int
  | Var of string
  | Binop of binop * expr * expr

and boolean_expr = 
  | Boolop of boolop * expr * expr

and binop = Add | Sub | Mul | Div

and boolop = Lt | Gt | Let | Get | Eq | Neq

