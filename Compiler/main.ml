
(* Ficheiro principal do compilador arithc *)

open Format
open Lexing
open Parser
open Compile
open Ast

(**)

let rec print_expr = function
  | Ecst n                -> printf " Ecst(%d) " n
  | Eset (e1, e2)         -> printf " Eset("; print_expr e1; print_expr e2; printf ") "
  | Eminint               -> printf " Eminint(minint) "
  | Emaxint               -> printf " Emaxint(maxint) "
  | Ebinop (Band, e1, e2) -> printf " Ebinop(Band,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (Bor, e1, e2)  -> printf " Ebinop(Bor,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Ebinop (_, e1, e2)    -> printf " Ebinop(Op,"; print_expr e1; printf ", "; print_expr e2; printf ") "
  | Eunop (Unot, e1)      -> printf " Eunop(Unot,"; print_expr e1; printf ") "
  | Ecall ("size", [e1])  -> printf " Ecall(size,"; print_expr e1; printf ") "
  | Ecall (f, el)         -> printf " Ecall(FUNCTION) "
  | Eident id             -> printf " Eident(%s) " id
  | Eget (id, e2)         -> printf " Eget(%s," id; print_expr e2; printf ") " 


(* interpretação de uma instrução - não devolve nada *)
and print_stmt = function
  | Sif (e, s1, s2) -> printf "Sif("; print_expr e; printf ", "; print_stmt s1; printf ","; print_stmt s2; printf ")"
  | Sreturn e       -> printf "Sreturn("; print_expr e; printf ")"
  | Sassign (id, e1)-> printf "Sassign(%s, " id; print_expr e1; printf ")"
  | Sdeclare (id, t ,e1) -> printf "Sdeclare(%s, t, " id ; print_expr e1; printf ")"
  | Sprint e        -> printf "Sprint("; print_expr e; printf ")"
  | Sblock bl       -> interpret_block_stmt  bl
  | Seval e         -> printf "Seval("; print_expr e; printf ")"
  | _ -> raise Not_found
  
and print_stmts = function  
  | Stfunction (f, args, return, body) -> printf "Stfunction()"
  | Stblock bl -> interpret_block_stmts bl
  | Stmt s -> print_stmt s

and interpret_block_stmt  = function
  | [] -> printf "\n"
  | s :: sl -> print_stmt s; printf "\n";interpret_block_stmt sl

and interpret_block_stmts = function
  | [] -> printf "\n"
  | s :: sl -> print_stmts s; printf "\n"; interpret_block_stmts sl

(* interpretação de um ficheiro *)
let print_file s = print_stmts s

(**)


(* Opção de compilação, para parar na fase de parsing *)
let parse_only = ref false
let print_ast = ref false

(* Nome dos ficheiros fonte e alvo *)
let ifile = ref ""
let ofile = ref ""

let set_file f s = f := s

(* As opções do compilador que são mostradas quando é invocada o comando arithc --help *)
let options =
  ["-parse-only", Arg.Set parse_only,
   "  Executar somente o parsing";
  "-print-ast", Arg.Set print_ast,
  "  Executar somente o parsing";
   "-o", Arg.String (set_file ofile),
   "<file>  Para indicar o nome do ficheiro em saída"]

let usage = "usage: arithc [option] file.exp"

(* localiza um erro indicando a linha e a coluna *)
let localisation pos =
  let l = pos.pos_lnum in
  let c = pos.pos_cnum - pos.pos_bol + 1 in
  eprintf "File \"%s\", line %d, characters %d-%d:\n" !ifile l (c-1) c

let () =
  (* Parsing da linha de comando *)
  Arg.parse options (set_file ifile) usage;

  (* Verifica-se que o nome do ficheiro fonte foi bem introduzido *)
  if !ifile="" then begin eprintf "Nenhum ficheiro para compilar\n@?"; exit 1 end;

  (* Este ficheiro deve ter como extensão  .nx *)
  if not (Filename.check_suffix !ifile ".nx") then begin
    eprintf "O ficheiro em entrada deve ter a extensão .nx\n@?";
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
    if !print_ast then print_file p;

    (* Compilação da árvore de sintaxe abstracta p. O código máquina
       resultante desta transformação deve ficar escrito no ficheiro alvo ofile. *)
    Compile.compile_program p !ofile
  with
    | Lexer.Lexing_error c ->
	(* Erro léxico. Recupera-se a posição absoluta e converte-se para número
           de linha *)
	localisation (Lexing.lexeme_start_p buf);
	eprintf "Erro durante a análise léxica: %s@." c;
	exit 1
    | Parser.Error ->
	(* Erro sintáctio. Recupera-se a posição e converte-se para número
           de linha *)
	localisation (Lexing.lexeme_start_p buf);
	eprintf "Erro durante a análise sintáctica@.";
	exit 1
    | Compile.VarUndef s->
	(* Erro de utilização de variáveis durante a compilação *)
	eprintf
	  "Erro de compilação: a variável  %s não está definida@." s;
  exit 1
  | Compile.Error s->
	(* Erro de utilização de variáveis durante a compilação *)
	eprintf
	  "Erro de compilação:  %s @." s;
  exit 1
  | Compile.HashError ctx -> eprintf "erro_hash: "; Hashtbl.iter (fun x _ -> eprintf "%s \n" x) ctx; eprintf " @."; exit 1
  (* Debug *)
