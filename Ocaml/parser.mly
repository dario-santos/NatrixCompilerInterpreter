%{
  open Ast
%}

%token <int> CST
%token <string> ID
%token INT
%token IF THEN ELSE
%token PRINT
%token VAL
%token PLUS MINUS TIMES DIV
%token LT GT LET GET EQ NEQ
%token LPR "(" 
%token RPR ")"
%token LBC "{"
%token RBC "}"
%token LBK "["
%token RBK "]"
%token ASSIGN "="
%token TYPE_ASSIGN ":"
%token DELIMITER ";"
%token EOF

/* Definição das prioridades e associatividades dos tokens */

%left PLUS MINUS
%left TIMES DIV

/* Ponto de entrada da gramática */
%start prog

/* Tipo dos valores devolvidos pelo parser */
%type <Ast.program> prog

%%

prog:
| p = stmts EOF { List.rev p }
;

stmts:
| i = stmt           { [i] }
| l = stmts i = stmt { i :: l }
;


stmt:
| PRINT "(" e = expr ")" ";"            { Print(e) }
| IF "(" be = boolean_expr ")" "{" s1 = stmt "}" ELSE "{" s2 = stmt "}" { If(be, s1, s2)}
| VAL id = ID ":" INT "=" e = expr ";"   {Assign(id, e)}
;

expr:
| "(" e = expr ")"               { e }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2) } 
| id = ID                        { Var id }
| c = CST                        { Cst c }
;

boolean_expr:
| "(" e = boolean_expr ")"       { e }
| e1 = expr o = bop e2 = expr    { Boolop (o, e1, e2) }
;

%inline bop:
| LT    {Lt}
| GT    {Gt}
| LET   {Let}
| GET   {Get}
| EQ    {Eq}
| NEQ   {Neq}
;

%inline op:
| PLUS  { Add }
| MINUS { Sub }
| TIMES { Mul }
| DIV   { Div }
;



