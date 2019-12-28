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

/* Ponto de entrada da gramática */
%start prog

/* Tipo dos valores devolvidos pelo parser */
%type <Ast.program> prog

%%

prog:
| dl = list(def) b = nonempty_list(stmt) EOF { dl, Sblock b }
;

def:
| FUNCTION f = ident "(" x = separated_list(",", ident) ")" ":"  r = type_def "{" s = suite "}" { f, x, r, s }
;

suite:
| l = nonempty_list(stmt) { Sblock l }
;

stmt:
| s = simple_stmt                                                 { s } 
| IF "(" e = expr ")" "{" s1 = suite "}"                          { Sif(e, s1, Sblock [])}
| IF "(" e = expr ")" "{" s1 = suite "}" ELSE "{" s2 = suite "}"  { Sif(e, s1, s2)}
| FOREACH id = ident IN e1 = expr TO e2 = expr "{" s = suite "}"  { Sforeach(id, e1, e2, s)}
;

simple_stmt:
| RETURN e = expr ";"                              { Sreturn e }
| VAL id = ident ":" t = type_def "=" e = expr ";" { Sdeclare(id, t ,e) }
| id = ident ":""=" e = expr ";"                   { Sassign(id, e) }
| e1 = expr "["e2 = expr"]" ":""=" e3 = expr ";"   { Sset (e1, e2, e3) }
| PRINT "(" e = expr ")" ";"                       { Sprint e }
| TYPE id = ident "=" "[" e1 = expr TO e2 = expr "]" ";" { Ssetdef (id, e1, e2) }
;

type_def:
| INT           { Int }
| id = ident    { CTset id }
;

expr:
| c = CST                           { Ecst c }
| MAXINT                            { Emaxint }
| MININT                            { Eminint }
| id = ident                        { Eident id }
| e1 = expr "[" e2 = expr "]"       { Eget (e1, e2)}
| NOT e1 = expr                     { Eunop (Unot, e1)}
| e1 = expr o = binop e2 = expr     { Ebinop (o, e1, e2) }
| "(" e = expr ")"                  { e }
| id = ident "(" l = separated_list("," , expr) ")" {Ecall(id, l)}
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