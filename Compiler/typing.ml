open Ast

exception Error of string

let error s = raise (Error s)

type typ =
  | Tint
  | Tset of typ * typ
  | Tarray
  | Tarrayvar

let string_of_typ = function
  | Tint -> "Tint"
  | Tset _-> "Tset"
  | Tarray -> "Tarray"
  | Tarrayvar -> "Tarrayvar"

let string_of_binop = function
  | Badd -> "+"
  | Bsub -> "-"
  | Bdiv -> "/"
  | Bmod -> "%"
  | Bmul -> "*"
  | Beq -> "=="
  | Bneq -> "!="
  | Blt -> "<" 
  | Ble -> "<="
  | Bgt -> ">" 
  | Bge -> ">="
  | Band -> "&&"
  | Bor -> "||"

let is_int = function
  | Tint -> true
  | _    -> false

let is_set = function
  | Tset _ -> true
  | _      -> false

let is_array = function
  | Tarray -> true
  | _      -> false

let is_arrayvar = function 
  | Tarrayvar -> true
  | _         -> false

(* table_ctx representa um scope, contexto *)
type table_ctx = (string, typ) Hashtbl.t

(* As funções são globais *)
let functions = (Hashtbl.create 17 : (string, table_ctx * costumtype * stmt) Hashtbl.t)

let rec find_id id l = 
  match l with
  | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
  | _ -> []

let costumtype_to_typ ctxs id = 
  match id with
  | Int -> Tint
  | CTid t ->
    let ctxs_in = find_id t ctxs in
    if List.length(ctxs_in) == 0 then error ("Lexical analisys: The type " ^ t ^ " is not defined");
    let ctx = List.hd (List.rev ctxs_in) in
    Hashtbl.find ctx t

let rec verify_expr ctxs = function
  | Ecst n -> Tint
  | Eminint | Emaxint -> Tint
  | Eset (e1, e2) ->
      let t1 = verify_expr ctxs e1 in
      let t2 = verify_expr ctxs e2 in
      if not (is_int t1) || not(is_int t2) then error ("Lexical analysis: The boundaries of a set need to be integers"); 
      Tset(t1, t2)
  | Ebinop (op, e1, e2) -> 
      let t1 = verify_expr ctxs e1 in
      let t2 = verify_expr ctxs e2 in
      if not (is_int t1) || not (is_int t2) then error ("Lexical analysis: The operator " ^ (string_of_binop op) ^ " expects two integers but was given " ^ (string_of_typ t1) ^ " and " ^ (string_of_typ t2) ^ "."); 
      Tint
  | Eunop (Unot, e1) ->
      let t1 = verify_expr ctxs e1 in
      if not (is_int t1) then error ("Lexical analysis: The operator ! expects one integer but was given " ^ (string_of_typ t1) ^ "."); 
      Tint
  | Ecall ("size", [el]) ->
      (* 1 - Verificar que el é do tipo Tset ou Tarrayvar *)
      let t1 = verify_expr ctxs el in
      if not (is_set t1) && not(is_arrayvar t1) then error ("The function size accepts types Tset and Tarrayvar but was given " ^ (string_of_typ t1) ^ "."); 
      
      (* 2 - Se tudo correu bem entao retornamos o int *)
      Tint

  | Ecall (f, el) ->
      (* 1 - Verificar se f existe *)
      if not (Hashtbl.mem functions f) then error ("Could not find a function with the identifier " ^ f ^ ".");
      let function_ctx ,return,_ = Hashtbl.find functions f in

      (* 2 - Verificar se todos os parametros de el sao inteiros ou conjuntos*)
      let rec verify_arguments = function
        | hd::tl -> 
          let tp = verify_expr ctxs hd in
          if not(is_int tp) && not(is_set tp) then error ("Invalid type in the function call to " ^ f ^ ", was expecting an Tint or set but got " ^(string_of_typ tp) ^ ".")
        | [] -> ()
      in
      verify_arguments el;
      
      (* 4 - Verificar se passamos o mesmo numero de argumentos *)
      if (List.length el) != (Hashtbl.length function_ctx)  then error ("Invalid call to the function " ^ f ^ ", got " ^ string_of_int(List.length el) ^ " arguments but was expecting " ^ string_of_int(Hashtbl.length function_ctx) ^ ".");
      
      (* 5 - Se tudo correu bem entao retornamos o int *)
      Tint

  | Eident id ->
      (* 1 - Verificar que o id existe *)
      if List.length(find_id id ctxs) == 0 then error ("Lexical analysis: Variable " ^ id ^ " not found"); 
      let ctx = List.hd (List.rev(find_id id ctxs)) in
      
      (* 2 - Retornar o tipo do id*)
      Hashtbl.find ctx id

  | Eget (id, e1) -> 
      (* 1 - Verificar que o id existe *)
      if List.length(find_id id ctxs) == 0 then error ("Lexical analysis: Variable " ^ id ^ " not found"); 
      
      (* 2 - Verificar que id e do tipo Tarrayvar *)
      let ctx = List.hd (List.rev(find_id id ctxs)) in
      let t1 = Hashtbl.find ctx id in
      if not (is_arrayvar t1) then error ("Lexical analysis: The type " ^ string_of_typ t1 ^ " can\'t be used as an array.");

      (* 3 - Verificar que e2 e do tipo int *)
      let t2 = verify_expr ctxs e1 in
      if not (is_int  t2) then error ("Lexical analysis: The type " ^ string_of_typ t1 ^ " can\'t be used as an index to access elements of an array.");

      (* 4 - Retornar Tint*)
      Tint

(* Verificacao de uma instrucao - Instruções nao devolvem um valor *)
let rec verify_stmt ctxs = function
  | Sif (e, s1, s2) ->
      (* 1 - Verificar a expressao e do tipo Tint *)
      let t1 = verify_expr ctxs e in
      if not (is_int t1) then error ("Lexical analisys: The expression of the if statement needs to be evaluated an integer.");
      
      (* 2 - Verificar os dois ramos do if *)
      verify_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s1;
      verify_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s2

  | Sreturn e ->
    (* 1 - Verificar se o retorno e do tipo Tint*)
    let t1 = verify_expr ctxs e in
    if not(is_int t1) then error ("Lexical analysis: The return statement only supports integers.")
  
  | Sdeclare (id, t, e) ->
      (* 1 - Verificar se o nome ja nao esta a ser usado *)
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem functions id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");     
      if Hashtbl.mem ctx id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");
      
      (* 2 - Verificar se o tipo existe e é do tipo Tint ou Tset *)
      let tp = costumtype_to_typ ctxs t in
      if not (is_int tp) && not (is_set tp) then error ("Lexical analysis: Error declaring a variable. Was expecting the type Tint or Tset but was given " ^ string_of_typ tp ^ ".");

      (* 3 - Verificar se e do tipo Tint*)
      let t1 = verify_expr ctxs e in
      if not(is_int t1) then error ("Lexical analysis: the declaration statement only supports integers but was given a " ^ string_of_typ t1 ^ ".");
      Hashtbl.add ctx id t1

  | Sassign (id, e1)    ->
      (* 1 - Verificar se a variavel existe *)
      if List.length(find_id id ctxs) == 0 then error ("Lexical analysis: The variable " ^ id ^ " is not defined.");

      (* 2 - Verificar se estamos a lhe dar um Tint *)
      let t1 = verify_expr ctxs e1 in
      if not(is_int t1) then error ("Lexical analisys: the assignment statement only supports integers bu was given a " ^ string_of_typ t1 ^".")

  | Sdeclarearray (id, ida, e) ->
      (* 1 - Verificar se o id e unico *)
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem functions id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");     
      if Hashtbl.mem ctx id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");

      (* 2 - Verificar se ida existe e é do tipo Tarray *)
      if List.length(List.rev (find_id ida ctxs)) == 0 then error ("Lexical analysis: The array type " ^ id ^ " is not defined.");
      let array_ctx = List.hd (List.rev (find_id ida ctxs)) in
      let ta = Hashtbl.find array_ctx ida in
      if not (is_array ta) then error ("Lexical analysis: Error declaring an array. Was expecting the type Tarray but was given " ^ string_of_typ ta ^ ".");

      (* 3 - Verificar se _e_ e do tipo Tint*)
      let t1 = verify_expr ctxs e in
      if not (is_int t1) then error ("Lexical analysis: Error declaring an array. The elements can only be filled with integers but was given " ^ string_of_typ t1 ^ ".");
      Hashtbl.add ctx id Tarrayvar

  | Sarray (id, sz, t) ->
      (* 1 - Verificar se o id e unico *)
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem functions id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");     
      if Hashtbl.mem ctx id then error ("Lexical analysis: The identifier " ^ id ^ " is already defined.");

      (* 2 - Verificar se o sz é um Tint ou Tset *)
      let t1 = verify_expr ctxs sz in
      if not (is_int t1) && not (is_set t1) then error ("Lexical analysis: Error defining an array. The size of an array needs to be of the type Tint or Tset but was given " ^ string_of_typ t1 ^ ".");

      (*3 - Verificar se t é do tipo Tset*)
      let t2 = verify_expr ctxs t in
      if not (is_set t2) then error ("Lexical analysis: Error defining an array. The range of an array needs to be of the type Tset but was given " ^ string_of_typ t1 ^ ".");
      Hashtbl.add ctx id Tarray 

  | Sset (id, set) ->
      (* 1 - Verificar se o nome ja nao esta a ser usado *)
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem functions id then error ("Error defining a set. The identifier " ^ id ^ " is already defined.");     
      if Hashtbl.mem ctx id then error ("Error defining a set. The identifier " ^ id ^ " is already defined.");
  
      (* 2 - Verificar se estamos a lhe dar um set *)
      let t1 = verify_expr ctxs set in
      if not(is_set t1) then error ("Error defining a set. Was expecting a Tset but was given " ^ string_of_typ t1 ^ ".");
      Hashtbl.add ctx id t1

  | Sprint e ->
      (* 1 - Verificar se estamos a receber um Tint*)
      let t1 = verify_expr ctxs e in
      if not (is_int t1) then error ("The print statement only supports Tint but was given a " ^ string_of_typ t1 ^ ".")
  
  | Sprintn e -> 
      (* 1 - Verificar se estamos a receber um Tint*)
      let t1 = verify_expr ctxs e in
      if not (is_int t1) then error ("The print statement only supports Tint but was given a " ^ string_of_typ t1 ^ ".")
  | Sscanf id -> 
      (* 1 - Verificar se a variavel existe *)
      if List.length(find_id id ctxs) == 0 then error ("Lexical analysis: The variable " ^ id ^ " is not defined.");

      (* 2 - Verificar se id e do tipo Tint *)
      let ctx = List.hd (List.rev(find_id id ctxs)) in
      let t1 = Hashtbl.find ctx id in
      if not (is_int t1) then error ("The scanf statement only supports Tint but was given a " ^ string_of_typ t1 ^ ".")

  | Sblock bl -> verify_block_stmt ctxs bl
  | Sforeach(id, set, bl) ->
      (* 1 - Adiciona o contexto do for e declaracao da sua variavel *)
      let ctxs = ctxs@[(Hashtbl.create 17 : table_ctx)] in
      verify_stmt ctxs (Sdeclare(id, Int, Ecst(0L)));

      (* 2 - Verifica que foi passado um conjunto *)
      let t1 = verify_expr ctxs set in
      if not (is_set t1) then error ("The foreach statement needs a initializer set.");
  
      (* 3 - Verifica o corpo *)
      verify_stmt ctxs bl

  | Saset (id, e1, e2) ->
      (* 1 - Verificar que id existe *)
      if List.length(find_id id ctxs) == 0 then error ("The variable " ^ id ^ " is not defined.");
      
      (* 2 - Verificar se ida existe e é do tipo Tarray *)
      let array_ctx = List.hd (List.rev (find_id id ctxs)) in
      let ta = Hashtbl.find array_ctx id in
      if not (is_arrayvar ta) then error ("Error declaring an array. Was expecting the type Tarrayvar but was given " ^ string_of_typ ta ^ ".");
   
      (* 3 - Verificar que o index é do tipo Tint *)
      let t1 = verify_expr ctxs e1 in
      if not(is_int t1) then error ("The assignment statement was expecting a index of the type Tint but was given " ^ string_of_typ t1 ^ ".");
  
      (* 4 - Verificar que o novo valor e do tipo Tint *)
      let t2 = verify_expr ctxs e2 in
      if not(is_int t2) then error ("The assignment statement only supports integers but was given a " ^ string_of_typ t2  ^ ".")  
  
and verify_stmts ctxs = function  
  | Stfunction (f, args, return, body) -> 
    (* 1 - Verifica que o o identificador de f ja nao esta em uso *)
    let ctx = List.hd (List.rev ctxs) in
    if Hashtbl.mem ctx f then error ("Lexical analysis: The identifier " ^ f ^ " is already in use.");
    if Hashtbl.mem functions f then error ("Lexical analysis: The identifier " ^ f ^ " is already in use.");
    
    (* 2 - Verifica se todos os argumentos sao unicos e sao do tipo int ou set *)
    let args_ctx = (Hashtbl.create 17 : table_ctx) in
    
    let rec verify_arguments = function
      | hd::tl ->
        (* 2.1 - Verificar se o nome e unico *)
        let name, t = hd in
        let tp = costumtype_to_typ ctxs t in
        if Hashtbl.mem args_ctx name then error ("Lexical analysis: There are multiple arguments with the same identifier in the function " ^ f ^ "."); 
        if name = f then error ("Lexical analysis: There's a parameter with the function name, on the function " ^ f ^ "."); 
        
        (* 2.2 - Verificar do tipo set ou int *)
        if not (is_set tp) && not (is_int tp) then error ("Lexical analysis: Expectet and int or a set but got " ^ (string_of_typ tp) ^ " in the function "^ f ^ ".");
        
        (* 2.3 - As variaveis so podem receber inteiros *)
        Hashtbl.add args_ctx name Tint;
        verify_arguments tl
      | [] -> ()
      in
    verify_arguments args;

    (* 3 - Verifica se o tipo do retorno e int ou set *)
    let return_typ = costumtype_to_typ ctxs return in
    if not(is_int return_typ) && not (is_set return_typ) then error ("Lexical analysis: The return of the function " ^ f ^ " needs to be an int or set.");
    
    (* 4 - Verifica se o corpo esta bem tipado *)
    let body_context = Hashtbl.copy args_ctx in
    verify_stmt (ctxs@[body_context]) body;
    
    (* 5 - Se estiver tudo em ordem entao guarda a funcao *)
    Hashtbl.add functions f (args_ctx, return, body)

  | Stblock bl -> verify_block_stmts ctxs bl
  | Stmt s -> verify_stmt ctxs s

and verify_block_stmt ctxs = function
  | [] -> ()
  | s :: sl -> verify_stmt ctxs s; verify_block_stmt ctxs sl

and verify_block_stmts ctxs = function
  | [] -> ()
  | s :: sl -> verify_stmts ctxs s; verify_block_stmts ctxs sl

(* Realiza a analise semantica de um ficheiro *)
let file s = verify_stmts [(Hashtbl.create 17 : table_ctx)] s
