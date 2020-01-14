(*
  Última alteração: 28-12-2019
  Descricao: Parser do Natrix
*)

%{
  open Ast
%}

%token <int64>     CST
%token <Ast.ident> IDENT
%token IF ELSE PRINT PRINTN SCANF VAL INT
%token FOREACH IN TO WHILE FOR DO
%token CONTINUE BREAK
%token FUNCTION RETURN
%token TYPE
%token ARRAY OF FILLED BY
%token MAXINT MININT
%token PLUS MINUS TIMES DIV MOD
%token BITAND BITOR BITXOR LSHIFT RSHIFT BITNOT
%token GT GET LT LET 
%token EQ NEQ
%token TERNARY "?"
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

%left TERNARY
%left OR
%left AND
%left BITOR
%left BITXOR
%left BITAND
%left EQ NEQ
%left GT LT GET LET 
%left LSHIFT RSHIFT
%left PLUS MINUS
%left TIMES DIV MOD
%left NOT BITNOT

/* Ponto de entrada da gramática */
%start prog

/* Tipo dos valores devolvidos pelo parser */
%type <Ast.program> prog

%%

prog:
| b = list(stmts) EOF { Stblock b }
;

stmts:
| FUNCTION f = ident "(" x = separated_list(",", argument_list) ")" ":"  r = type_def "{" s = suite "}" 
              { Stfunction(f, x, r, s)}
| s = stmt    { Stmt s } 
;

argument_list:
|  id = ident ":" t = type_def {(id, t)}
;

suite:
| "{" l = list(stmt) "}" { Sblock l }
| s = stmt               { Sblock [s] }
;

stmt:
| s = simple_stmt                                 { s } 
| IF "(" e = expr ")" s1 = suite                  { Sif(e, s1, Sblock []) }
| IF "(" e = expr ")" s1 = suite ELSE s2 = suite  { Sif(e, s1, s2) }
| FOREACH id = ident IN set = expr  s = suite     { Sforeach(id, set, s) }
| WHILE "(" e = expr ")" s = suite                { Swhile(e, s) }
| FOR "(" VAL id = ident ":" t = type_def "=" e = expr ";" cond = expr ";" incr = expr ")" s = suite  {Sfor(id, t, e, cond, incr, s)} 
| DO s = suite WHILE "(" e = expr ")" ";"         { Sdowhile(e,s) }
;

simple_stmt:
| RETURN e = expr ";"                              { Sreturn e }
| BREAK ";"                                        { Sbreak }
| CONTINUE ";"                                     { Scontinue }
| VAL id = ident ":" t = type_def "=" e = expr ";" { Sdeclare (id, t ,e) }
| VAL id = ident ":" t = ident FILLED BY e = expr ";" { Sdeclarearray (id, t ,e) }
| TYPE id = ident "=" set = expr ";"               { Sset (id, set) }
| TYPE id = ident ":" ARRAY size = expr OF t = expr ";"   { Sarray (id, size, t) }
| id = ident ":""=" e = expr ";"                   { Sassign (id, e) }
| id = ident "["e2 = expr"]" ":""=" e3 = expr ";"  { Saset (id, e2, e3) }
| PRINT "(" e = expr ")" ";"                       { Sprint e }
| PRINTN "(" e = expr ")" ";"                      { Sprintn e }
| SCANF "(" id = ident ")" ";"                     { Sscanf id }
| ";"                                              { Snothing }
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
| "[" e1 = expr TO e2 = expr "]"    { Eset(e1, e2)}
| id = ident "[" e2 = expr "]"      { Eget (id, e2)}
| u = unop e1 = expr                { Eunop (u, e1)}
| e1 = expr o = binop e2 = expr     { Ebinop (o, e1, e2) }
| id = ident "(" l = separated_list("," , expr) ")" {Ecall(id, l)}
| cond = expr "?" e1 = expr ":" e2 = expr { Eternary(cond, e1, e2)}
| "(" e = expr ")"                  { e }
;

%inline unop:
| NOT    {Unot}
| BITNOT {Ubitnot}
;

%inline binop:
| PLUS  { Badd }
| MINUS { Bsub }
| TIMES { Bmul }
| DIV   { Bdiv }
| MOD   { Bmod }
| EQ    { Beq }
| NEQ   { Bneq }
| GT    { Bgt }
| LT    { Blt }
| GET   { Bge }
| LET   { Ble }
| AND   { Band }
| OR    { Bor  }
| BITAND{ Bitand } 
| BITOR { Bitor }
| BITXOR{ Bitxor }
| LSHIFT{ Bitls }
| RSHIFT{ Bitrs }
;

ident:
  id = IDENT { id }
;