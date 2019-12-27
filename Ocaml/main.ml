(* Ficheiro principal do Lexer/Parser Natrix *)

open Format
open Lexing

(* localiza um erro indicando a linha e a coluna *)
let localisation pos =
  let l = pos.pos_lnum in
  let c = pos.pos_cnum - pos.pos_bol + 1 in
  eprintf "Line %d, characters %d-%d:\n" l (c-1) c

let () =
  (* Parsing da linha de comando *)
  let file = 
    if Array.length Sys.argv > 1  
      then open_in Sys.argv.(1)
    else stdin
  in
  let lexbuf = Lexing.from_channel file in

  try
    (* Parsing: A função Parser.prog transforma o buffer d'análise léxica  
       numa árvore de sintaxe abstracta se nenujk erro  (léxico ou sintáctico) 
       foi detectado.
       A função Lexer.token é utilizada por Parser.prog para obter
       o próximo token. *)
    let _ = Parser.prog Lexer.analisador lexbuf in
    close_in file;

  with
    | Lexer.Lexing_error c ->
	    (* Erro léxico. Recupera-se a posição absoluta e converte-se para número de linha *)
	    localisation (Lexing.lexeme_start_p lexbuf);
	    eprintf "Erro durante a análise léxica: %c@." c;
	    exit 1
    | Parser.Error ->
	    (* Erro sintáctio. Recupera-se a posição e converte-se para número de linha *)
	    localisation (Lexing.lexeme_start_p lexbuf);
	    eprintf "Erro durante a análise sintáctica@.";
      exit 1
    | End_of_file -> printf "\nSucesso: atingido o fim do ficheiro\n"