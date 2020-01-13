
(* Ficheiro principal do compilador arithc *)

open Format
open Lexing
open Parser
open Compile
open Ast

(* Opção de compilação, para parar na fase de parsing *)
let parse_only = ref false
let print_ast = ref false
let interpt = ref false

(* Nome dos ficheiros fonte e alvo *)
let ifile = ref ""
let ofile = ref ""

let set_file f s = f := s

(* As opções do compilador que são mostradas quando é invocada o comando --help *)
let options =
  ["-parse-only", Arg.Set parse_only,
   "  Executar somente o parsing";
  "-print-ast", Arg.Set print_ast,
  "  Executar somente o parsing";
  "-interpt", Arg.Set interpt,
  "  Utilizar o interpretador";
   "-o", Arg.String (set_file ofile),
   "<file>  Para indicar o nome do ficheiro em saída"]

let usage = "usage: natrix [option] file.nx"

(* localiza um erro indicando a linha e a coluna *)
let localisation pos =
  let l = pos.pos_lnum in
  let c = pos.pos_cnum - pos.pos_bol + 1 in
  eprintf "\n\nFile \"%s\", line %d, characters %d-%d:\n" !ifile l (c-1) c

let () =
  (* Parsing da linha de comando *)
  Arg.parse options (set_file ifile) usage;

  (* Verifica-se que o nome do ficheiro fonte foi bem introduzido *)
  if !ifile="" then begin eprintf "\n\nerror:\n\n    Was expecting a file but got none. Pass the file to compile\n\n@?"; exit 1 end;

  (* Este ficheiro deve ter como extensão .nx *)
  if not (Filename.check_suffix !ifile ".nx") then begin
    eprintf "The input file must be of the type .nx\n@?";
    Arg.usage options usage;
    exit 1
  end;

   (* Por omissão, o ficheiro alvo tem o mesmo nome que o ficheiro fonte,
     só muda a extensão *)
  if !ofile="" then ofile := Filename.chop_suffix !ifile ".nx" ^ ".s";

  (* Abertura do ficheiro fonte em leitura *)
  let f = open_in !ifile in

  (* Criação do buffer de análise léxica *)
  let buf = Lexing.from_channel f in

  try
    (* Parsing: A função Parser.prog transforma o buffer d'análise léxica
       numa árvore de sintaxe abstracta se nenujk erro  (léxico ou sintáctico)
       foi detectado.
       A função Lexer.token é utilizada por Parser.prog para obter
       o próximo token. *)
    let p = Parser.prog Lexer.next_token buf in
    close_in f;

    (* Pára-se aqui se só queremos o parsing *)
    if !parse_only then exit 0;
    if !print_ast then Printer.print_file p; 

    (* Compilação da árvore de sintaxe abstracta p. O código máquina
       resultante desta transformação deve ficar escrito no ficheiro alvo ofile. *)
    Typing.file p;
    if !interpt then begin Interp.file p; exit 0; end;
      Compile.compile_program p !ofile
  with
  | Lexer.Lexing_error c ->
  (* Erro léxico. Recupera-se a posição absoluta e converte-se para número de linha *)
      localisation (Lexing.lexeme_start_p buf);
	    eprintf "\nerror:\n\n  Lexical error: invalid symbol: %s.\n\n@." c;
      exit 1
  | Parser.Error ->
	    (* Erro sintáctio. Recupera-se a posição e converte-se para número de linha *)
	    localisation (Lexing.lexeme_start_p buf);
	    eprintf "\nerror:\n\n   Syntatic error: invalid derivation.\n\n@.";
      exit 1
  | Typing.Error s -> 
      eprintf "\nerror:\n\n  Semmantic analysis:\n    %s\n@." s;
      exit 1
  | Compile.VarUndef s->
	    (* Erro de utilização de variáveis durante a compilação *)
	    eprintf "\nerror:\n\n  Erro de compilação: a variável  %s não está definida@." s;
      exit 1
  | Compile.Error s->
	    (* Erro de utilização de variáveis durante a compilação *)
	    eprintf "\nerror:\n\n  Erro de compilação:\n  %s\n@." s;
      exit 1
  | Interp.Error s ->
	    (* Erro de utilização de variáveis durante a compilação *)
	    eprintf "\nerror:\n\n    Erro de interpretação:\n  %s\n@." s;
      exit 1
  | Interp.Return _ -> 
	    (* Erro de utilização de variáveis durante a compilação *)
	    eprintf "\nerror:\n\n    Erro de interpretação:\n Run-time error: Illegal return statement. You can only use return statements inside functions  \n@.";
      exit 1