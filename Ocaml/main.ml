(* Ficheiro principal do Lexer/Parser Natrix *)

open Format
open Lexing

(* localiza um erro indicando a linha e a coluna *)
let localisation pos =
  let l = pos.pos_lnum in
  let c = pos.pos_cnum - pos.pos_bol + 1 in
  eprintf "Linha %d, caracteres %d-%d:\n" l (c-1) c

  let () =
  let file = 
    if Array.length Sys.argv > 1  
      then
      if (Filename.check_suffix Sys.argv.(1) ".nx") then
        open_in Sys.argv.(1)
      else 
      raise (Arg.Bad "O ficheiro nao tem a extensao .nx")
    else stdin
  in
  let lexbuf = Lexing.from_channel file in
  try
   let _ = Parser.prog Lexer.analisador lexbuf in
    close_in file;
  with
    | Lexer.Lexing_error c ->
	    (* Erro léxico. Recupera-se a posição absoluta e converte-se para número de linha *)
	    localisation (Lexing.lexeme_start_p lexbuf);
	    eprintf "Erro durante a análise léxica: %s@." c;
	    exit 1
    | Parser.Error ->
	    (* Erro sintáctio. Recupera-se a posição e converte-se para número de linha *)
	    localisation (Lexing.lexeme_start_p lexbuf);
	    eprintf "Erro durante a análise sintáctica@.";
      exit 1
    | End_of_file -> printf "\nSucesso: atingido o fim do ficheiro\n"