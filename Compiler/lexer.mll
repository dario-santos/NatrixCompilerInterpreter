{
  open Lexing
  open Ast
  open Parser
  open Int64

  exception Lexing_error of string


  let create_hashtable size init =
    let tbl = Hashtbl.create size in
    List.iter (fun (key, data) -> Hashtbl.add tbl key data) init;
    tbl
  
  let keyword_table =
    create_hashtable 32
    [
      ("val", VAL);
      ("int", INT);
      ("if", IF);
      ("else", ELSE);
      ("foreach", FOREACH);
      ("in", IN);
      ("type", TYPE);
      ("array", ARRAY);
      ("of", OF);
      ("filled", FILLED);
      ("by", BY);
      ("print", PRINT);
      ("printn",PRINTN);
      ("function", FUNCTION);
      ("return", RETURN);
      ("maxint", MAXINT);
      ("minint", MININT)
    ]

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }
}

let digit      = ['0'-'9']
let letter     = ['a'-'z' 'A'-'Z']
let integer    = digit+
let id         = ('_'|letter)('_'|letter|digit)*
let newline    = ['\n']
let whitespace = [' ' '\t']

rule analisador = parse
  | "//"            { singlecomment lexbuf}
  | "(*"            { multicomment lexbuf }
  | newline         { new_line lexbuf; analisador lexbuf}
  | whitespace      { analisador lexbuf}
  | '='             { [ASSIGN] }
  | '('             { [LPR] }
  | ')'             { [RPR] }
  | '['             { [LBK] }
  | ']'             { [RBK] }
  | '{'             { [LBC] }
  | '}'             { [RBC] }
  | '+'             { [PLUS] }
  | '-'             { [MINUS] }
  | '*'             { [TIMES] }
  | '/'             { [DIV] }
  | '%'             { [MOD] }
  | "<"             { [CMP Blt] }
  | "<="            { [CMP Ble] }
  | ">"             { [CMP Bgt] }
  | ">="            { [CMP Bge] }
  | "=="            { [CMP Beq] }
  | "!="            { [CMP Bneq] }
  | "||"            { [OR] }
  | "&&"            { [AND] }
  | "!"             { [NOT] }
  | ':'             { [COLON] }
  | ';'             { [DELIMITER] }
  | ".."            { [TO] }
  | ','             { [COMMA] }
  | integer as snum 
    { 
      try
        [CST (Int64.of_string snum)]
      with _ -> raise (Lexing_error ("The constant is too big : " ^ snum)) }
  | id as word      
  { try
      let token = Hashtbl.find keyword_table word in  
      [token]
    with Not_found -> [IDENT word]
  }
  | eof       { [EOF] }
  | _ as c    { raise (Lexing_error (Char.escaped c)) }

and singlecomment = parse
  | '\n'      { newline lexbuf; analisador lexbuf}
  | eof       { [EOF]}
  | _         { singlecomment lexbuf}

and multicomment = parse
  | "*)"      { analisador lexbuf}
  | eof       { raise (Lexing_error "comentario nao fechado")}
  | '\n'      {new_line lexbuf; multicomment lexbuf}
  | _         { multicomment lexbuf}

{
  let next_token =
    let tokens = Queue.create () in
    fun lb ->
      if Queue.is_empty tokens then 
      begin
        let l = analisador lb in
        List.iter (fun t -> Queue.add t tokens) l
      end;
      Queue.pop tokens
}