{
  open Printf
  open Parser
  
  exception Lexing_error of char

  let create_hashtable size init =
    let tbl = Hashtbl.create size in
    List.iter (fun (key, data) -> Hashtbl.add tbl key data) init;
    tbl
  
  let keyword_table =
    create_hashtable 16
    [
      ("val", VAL);
      ("var", VAR);
      ("INT", INT);
      ("if", IF);
      ("then", THEN);
      ("else", ELSE);
      ("foreach", FOREACH);
      ("in", IN);
      ("do", DO);
      ("function", FUNCTION)
    ]
}

let digit      = ['0'-'9']
let letter     = ['a'-'z' 'A'-'Z']
let integer    = digit+
let id         = ('_'|letter)(letter|digit)*
let newline    = ['\n']
let whitespace = [' ' '\t']
let binop      = ['+' '-' '*' '/']
let delimiter  = [';']

rule analisador = parse
  | "//"            { singlecomment lexbuf}
  | "(*"            { multicomment lexbuf }
  | newline         { printf "\n"; analisador lexbuf}
  | whitespace      { printf " "; analisador lexbuf}
  | '='             { printf "="; ASSIGN}
  | ':'             { printf ":"; TYPE_ASSIGN}
  | ';'             { printf ";"; DELIMITER}
  | '('             { printf "("; LPR }
  | ')'             { printf ")"; RPR }
  | '['             { printf "["; LBK }
  | ']'             { printf "]"; RBK }
  | '{'             { printf "{"; LBC }
  | '}'             { printf "}"; RBC }
  | '+'             { printf "+"; PLUS }
  | '-'             { printf "-"; MINUS }
  | '*'             { printf "*"; TIMES }
  | '/'             { printf "/"; DIV }
  | "<"             { printf "<"; LT }
  | ">"             { printf ">"; GT }
  | "<="            { printf "<="; LET }
  | ">="            { printf ">="; GET }
  | "=="            { printf "=="; EQ }
  | "!="            { printf "!="; NEQ }
  | "!"             { printf "!";  NOT }
  | "&&"            { printf "&&"; AND }
  | "||"            { printf "||"; OR }
  
  | digit+ as snum  { let num = int_of_string snum in CST(num)}
  | id as word      
  { try
    let token = Hashtbl.find keyword_table word in
    printf "%s" word; 
    token
    with Not_found ->
     printf "%s" word; 
     ID word
    }
  | eof        { raise End_of_file }
  | _          { raise End_of_file }

and singlecomment = parse
  | '\n'  { analisador lexbuf}
  | eof   { raise End_of_file}
  | _     { singlecomment lexbuf}

and multicomment = parse
  | "*)"  { analisador lexbuf}
  | eof   { raise End_of_file}
  | _     { multicomment lexbuf}