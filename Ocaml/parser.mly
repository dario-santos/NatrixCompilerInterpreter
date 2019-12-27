%{
  open Ast
%}

%token <int>       CST
%token <Ast.binop> CMP
%token <string>    IDENT
%token IF ELSE RETURN PRINT VAL INT
%token PLUS MINUS TIMES DIV
%token LPR "(" 
%token RPR ")"
%token LBC "{"
%token RBC "}"
%token LBK "["
%token RBK "]"
%token AND "&&"
%token OR "||"
%token NOT "!"
%token ASSIGN "="
%token COLON ":"
%token DELIMITER ";"
%token EOF

/* Definição das prioridades e associatividades dos tokens */

%left OR
%left AND
%nonassoc NOT
%nonassoc CMP
%left PLUS MINUS
%left TIMES DIV MOD
%nonassoc LBK

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
| PRINT "(" e = expr ")" ";"                  { Sprint(e) }
| IF "(" e = expr ")" "{" s1 = stmt "}" ELSE "{" s2 = stmt "}" { Sif(e, s1, s2)}
| VAL id = IDENT ":" INT "=" e = expr ";"     {Sdeclare(id, e)}
| RETURN e = expr ";"                         {Sreturn e}
| id = IDENT ":""=" e = expr ";"              {Sassign(id, e)}
;

expr:
| c = CST                           { Cst c }
| id = IDENT                        { Var id }
| e1 = expr "[" e2 = expr "]"       { Eget (e1, e2)}
| NOT e1 = expr                     { Eunop (Unot, e1)}
| e1 = expr o = binop e2 = expr     { Ebinop (o, e1, e2) }
| "(" e = expr ")"                  { e }
;

%inline binop:
| PLUS  { Badd }
| MINUS { Bsub }
| TIMES { Bmul }
| DIV   { Bdiv }
| c=CMP { c    }
| AND   { Band }
| OR    { Bor  }
;
