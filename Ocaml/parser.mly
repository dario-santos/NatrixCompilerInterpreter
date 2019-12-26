%{
  open Ast
%}

%token <int> CST
%token <string> ID
%token INT
%token IF THEN ELSE
%token PRINT
%token FOREACH IN DO
%token FUNCTION
%token DELIMITER
%token VAR VAL
%token PLUS MINUS TIMES DIV
%token LT GT LET GET EQ NEQ AND OR NOT
%token LPR RPR LBC RBC LBK RBK
%token ASSIGN
%token TYPE_ASSIGN
%token EOF

/* Definição das prioridades e associatividades dos tokens */

%nonassoc IN
%left PLUS MINUS
%left TIMES DIV
%nonassoc uminus

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
| PRINT e = expr             { Print e }
;

expr:
| c = CST                        { Cst c }
| id = ID                        { Var id }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2) }
| MINUS e = expr %prec uminus    { Binop (Sub, Cst 0, e) }
| LPR e = expr RPR               { e }
;

%inline op:
| PLUS  { Add }
| MINUS { Sub }
| TIMES { Mul }
| DIV   { Div }
;



