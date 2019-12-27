{
  open Lexing
  open Parser
  open Printf
  
  exception Lexing_error of char

  let create_hashtable size init =
    let tbl = Hashtbl.create size in
    List.iter (fun (key, data) -> Hashtbl.add tbl key data) init;
    tbl
  
  let keyword_table =
    create_hashtable 16
    [
      ("val", VAL);
      ("int", INT);
      ("if", IF);
      ("then", THEN);
      ("else", ELSE);
      ("print", PRINT)
    ]

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }
}

let digit      = ['0'-'9']
let letter     = ['a'-'z' 'A'-'Z']
let integer    = digit+
let id         = ('_'|letter)(letter|digit)*
let newline    = ['\n']
let whitespace = [' ' '\t']

rule analisador = parse
  | "//"            { singlecomment lexbuf}
  | "(*"            { multicomment lexbuf }
  | newline         { newline lexbuf; printf "\n"; analisador lexbuf}
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
  | digit+ as snum  { printf "%s" snum; let num = int_of_string snum in CST(num)}
  | id as word      
  { try
    let token = Hashtbl.find keyword_table word in
      printf "%s" word; 
      token
    with Not_found ->
      printf "%s" word; 
      ID word
    }
  | eof       { raise End_of_file }
  | _ as c    { raise (Lexing_error c) }

and singlecomment = parse
  | '\n'      { newline lexbuf; analisador lexbuf}
  | eof       { raise (Lexing_error ' ')}
  | _         { singlecomment lexbuf}

and multicomment = parse
  | "*)"      { analisador lexbuf}
  | eof       { raise (Lexing_error ' ')}
  | _         { multicomment lexbuf}