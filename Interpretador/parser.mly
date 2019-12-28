%{
  open Ast
%}

%token <int>       CST
%token <Ast.binop> CMP
%token <Ast.ident> IDENT
%token IF ELSE PRINT VAL INT
%token FOREACH IN TO
%token FUNCTION RETURN
%token TYPE
%token ARRAY OF FILLED BY
%token MAXINT MININT
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
%token COMMA ","
%token EOF

/* Definição das prioridades e associatividades dos tokens */

%left OR
%left AND
%nonassoc NOT
%nonassoc CMP
%left PLUS MINUS
%left TIMES DIV
%nonassoc LBK
%nonassoc TO
/* Ponto de entrada da gramática */
%start prog

/* Tipo dos valores devolvidos pelo parser */
%type <Ast.program> prog

%%

prog:
| b = list(stmts) EOF { Stblock b }
;

stmts:
| FUNCTION f = ident "(" x = separated_list(",", argument_list) ")" ":"  r = type_def "{" s = suite "}" { Stfunction(f, x, r, s)}
| s = stmt                                                                       { Stmt s } 
;

argument_list:
|  id = ident ":" t = type_def {(id, t)}
;

suite:
| l = list(stmt) { Sblock l }
;

stmt:
| s = simple_stmt                                                 { s } 
| IF "(" e = expr ")" "{" s1 = suite "}"                          { Sif(e, s1, Sblock [])}
| IF "(" e = expr ")" "{" s1 = suite "}" ELSE "{" s2 = suite "}"  { Sif(e, s1, s2)}
| FOREACH id = ident IN set = expr "{" s = suite "}"              { Sforeach(id, set, s)}
;

simple_stmt:
| RETURN e = expr ";"                              { Sreturn e }
| VAL id = ident ":" t = type_def "=" e = expr ";" { Sdeclare(id, t ,e) }
| TYPE id = ident "=" "[" set = expr "]" ";"       { Sset (id, set) }
| TYPE id = ident ":" ARRAY size = expr OF t = expr ";"   { Sarray (id, size, t) }
| VAL id = ident ":" t = ident FILLED BY e = expr ";" { Sdeclarearray(id, t ,e) }
| id = ident ":""=" e = expr ";"                   { Sassign(id, e) }
| id = ident "["e2 = expr"]" ":""=" e3 = expr ";"  { Saset (id, e2, e3) }
| PRINT "(" e = expr ")" ";"                       { Sprint e }
;

type_def:
| INT           { Int }
| id = ident    { CTid id }
;

expr:
| c = CST                           { Ecst c }
| MAXINT                            { Emaxint }
| MININT                            { Eminint }
| id = ident                        { Eident id }
| e1 = expr TO e2 = expr            { Eset(e1, e2)}
| id = ident "[" e2 = expr "]"      { Eget (id, e2)}
| NOT e1 = expr                     { Eunop (Unot, e1)}
| e1 = expr o = binop e2 = expr     { Ebinop (o, e1, e2) }
| id = ident "(" l = separated_list("," , expr) ")" {Ecall(id, l)}
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

ident:
  id = IDENT { id }
;