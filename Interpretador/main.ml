(* Ficheiro principal do Lexer/Parser Natrix *)

open Format
open Lexing
open Parser

let usage = "usage: natrix [options] file.nx"

let parse_only = ref false

let spec =
  [
    "--parse-only", Arg.Set parse_only, "  stop after parsing";
  ]

let file =
  let file = ref None in
  let set_file s =
    if not (Filename.check_suffix s ".nx") then
      raise (Arg.Bad "no .nx extension");
    file := Some s
  in
  Arg.parse spec set_file usage;
  match !file with Some f -> f | None -> Arg.usage spec usage; exit 1

let report (b,e) =
  let l = b.pos_lnum in
  let fc = b.pos_cnum - b.pos_bol + 1 in
  let lc = e.pos_cnum - b.pos_bol + 1 in
  eprintf "File \"%s\", line %d, characters %d-%d:\n" file l fc lc

let () =
  let c = open_in file in
  let lb = Lexing.from_channel c in
  try
    let f = Parser.prog Lexer.next_token lb in
    close_in c;
    if !parse_only then exit 0;
    Interp.file f
  with
    | Lexer.Lexing_error s ->
	      report (lexeme_start_p lb, lexeme_end_p lb);
	      eprintf "\nlexical error: %s@." s;
	      exit 1
    | Parser.Error ->
	      report (lexeme_start_p lb, lexeme_end_p lb);
	      eprintf "\nsyntax error@.";
	      exit 1
    | Interp.Error s ->
	      eprintf "\nerror: %s@." s;
        exit 1
    | End_of_file -> 
        printf "\nSucesso\n"; 
        exit 1
    | e ->
	    eprintf "\nAnomaly: %s\n@." (Printexc.to_string e);
	    exit 2
