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

let digit      = ['0'-'9']
let letter     = ['a'-'z' 'A'-'Z']
let id         = ('_' | letter)(letter|digit)*
let whitespace = [' ' '\t']
let newline    = ['\n']
let binop      = ['+' '-' '*' '/']
let parentises = [ '(' ')' '[' ']' '{' '}']
let assign     = [ '=' ':']

rule analisador = parse
  | newline         { printf "\n"}
  | whitespace      { printf " "}
  | '='             { printf "="}
  | ':'             { printf ":"}
  | ';'             { printf ";"}
  | binop as op     { printf "%c" op}
  | "<" | ">" | "<=" | ">=" | "==" | "!=" | "!" | "||" | "&&" as op
                    { printf "%s" op}
  | parentises as p { printf "%c" p}
  | digit+ as inum  { printf "%s" inum}
  | id as word      { printf "%s" word}                        
  | eof             { raise End_of_file }
  | _ as c          { raise End_of_file }
  
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


