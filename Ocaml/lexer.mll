{
  open Printf
  
  exception Lexing_error of char

  let create_hashtable size init =
    let tbl = Hashtbl.create size in
    List.iter (fun (key, data) -> Hashtbl.add tbl key data) init;
    tbl

  type token =
    | IF | THEN | ELSE
    | FUNCTION
    | VAL
    | TYPE
    | ARRAY
    | FOREACH | IN | DO
    | ID of string
    | OP of char
    | BOP of string
    | INT of int
    | LP | RP
  
  let keyword_table =
    create_hashtable 16
    [
      ("val", VAL);
      ("if", IF);
      ("then", THEN);
      ("else", ELSE);
      ("foreach", FOREACH);
      ("in", IN);
      ("do", DO);
      ("function", FUNCTION);
      ("type", TYPE);
      ("array", ARRAY)
    ]
}

let letter = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let id = letter (letter | digit)*
let integer = digit+
let space = [' ' '\t' '\n']

rule analisador = parse
  | '+' | '-' | '*' | '/' as op { printf "operator: %c\n" op; OP op }
  | ">" | "<" | ">=" | "<=" | "==" | "!=" | "&&" | "||" as bop {printf "Boolean operator: %s\n" bop; BOP bop } 
  | '(' { printf "Left parentises: (\n"; LP }
  | ')' { printf "Rigth parentises: )\n"; RP}
  | integer as inum
    { let num = int_of_string inum in
        printf "integer: %s (%d)\n" inum num;
        INT num
    }
  | id as word
    { try
      let token = Hashtbl.find keyword_table word in
      printf "keyword: %s\n" word;
      token
      with Not_found -> 
        printf "identifier: %s\n" word;
        ID word
    }
  | space+                      { analisador lexbuf }
  | eof                         { raise End_of_file }
  | _ as c                      { raise (Lexing_error c) }
  
{
  let rec parse lexbuf =
    let token = analisador lexbuf in
    parse lexbuf
  
  let main () =
    let cin =
      if Array.length Sys.argv > 1 
      then open_in Sys.argv.(1)
      else stdin
    in
    let lexbuf = Lexing.from_channel cin in
    try parse lexbuf
    with End_of_file -> ()
  let _ = Printexc.print main ()
}


