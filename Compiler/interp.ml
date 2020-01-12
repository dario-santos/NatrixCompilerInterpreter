open Ast
open Format
open Int64

exception Error of string

let error s = raise (Error s)

exception Return of int64

let minint = Int64.zero
let maxint = Int64.max_int

(* Tipos de dados*)
type value =
  | Vint of int64                  (* valor       *)
  | Vset of int64 * int64            (* inicio, fim *)
  | Vlist of value array * value (* lista, range*)

let vset_to_tuplo = function
  | Vint n     -> (minint, (Int64.sub n 1L))
  | Vset (i,f) -> (i, f)
  | _          -> error "A função vset_to_tuplo aceita apenas conjuntos"

let vlist_to_tuple = function
  | Vlist (l,range) -> l, range
  | _               -> error "list expected" 

let string_of_value = function
  | Vint n      -> Int64.to_string n
  | Vset (i, f) -> "[" ^ Int64.to_string i ^ " ," ^ Int64.to_string f ^ "]"
  | _           -> error "A função string_of_value aceita apenas Vint e Vset "

let size_of_value = function
  | Vint n     -> (Int64.sub n minint) 
  | Vset(i,f)  -> Int64.sub f i
  | Vlist(_,r) -> let i,f = vset_to_tuplo r in Int64.sub f i

(* Funcao print *)
let rec print_value = function
  | Vint n -> if n < minint || n > maxint then error "The print function does not support negative numbers" else printf "%s" (Int64.to_string n)
  | _ -> error "instruções print apenas suportam inteiros"

(* Falso = 0, Verdade tudo o que não é 0 *)
let is_false = function
  | Vint n -> if n = 0L then 1L else 0L
  | _ -> error "condicoes apenas suportam inteiros"

let is_true v = if is_false v = 0L then 1L else 0L

let binop op v1 v2 = match op, v1, v2 with
  | Badd, Vint n1, Vint n2 -> Vint (Int64.add n1 n2)  
  | Bsub, Vint n1, Vint n2 -> Vint (Int64.sub n1 n2)
  | Bmul, Vint n1, Vint n2 -> Vint (Int64.mul n1 n2)
  | Bdiv, Vint n, Vint 0L -> error ("Illegal expression: Division by zero, you are trying to do following operation: " ^ Int64.to_string n ^ " / 0.")  
  | Bmod, Vint n, Vint 0L -> error ("Illegal expression: Division by zero, you are trying to do following operation: " ^ Int64.to_string n ^ " % 0.")  
  | Bmod, Vint n1, Vint n2 -> Vint (Int64.rem n1 n2)
  | Bdiv, Vint n1, Vint n2 -> Vint (Int64.div n1 n2)
  | Beq,  Vint n1, Vint n2 -> if compare n1 n2 = 0  then Vint 1L else Vint 0L
  | Bneq, Vint n1, Vint n2 -> if compare n1 n2 <> 0 then Vint 1L else Vint 0L
  | Blt,  Vint n1, Vint n2 -> if compare n1 n2 < 0  then Vint 1L else Vint 0L
  | Ble,  Vint n1, Vint n2 -> if compare n1 n2 <= 0 then Vint 1L else Vint 0L
  | Bgt,  Vint n1, Vint n2 -> if compare n1 n2 > 0  then Vint 1L else Vint 0L
  | Bge,  Vint n1, Vint n2 -> if compare n1 n2 >= 0 then Vint 1L else Vint 0L
  | _ -> assert false

(* As funções são globais *)
let functions = (Hashtbl.create 17 : (string, argument list * value * stmt) Hashtbl.t)

(* table_ctx representa um scope *)
type table_ctx = (string, value * value) Hashtbl.t


let rec find_id id l = 
    match l with
    | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
    | _ -> []

let value_of_costumtype ctxs t = 
  match t with
  | Int     -> Vset(minint, maxint)
  | CTid id ->
      let ctx = List.hd (List.rev (find_id id ctxs)) in
      fst(Hashtbl.find ctx id)
        
let value_in_type_limits v t =
  let i,f = vset_to_tuplo t in
  v >= i && v <= f
      

(* Interpretação de uma expressão (devolve um valor) *)
let rec expr ctxs = function
  | Ecst n -> Vint n
  | Eset (e1, e2) -> 
      let i = expr_int ctxs e1 in 
      let f = expr_int ctxs e2 in
      if i >= 0L && f >= 0L && i <= f && (Int64.sub f i) > 0L then Vset (i, f)
      else error ("Invalid size of set. A set needs to have atleast the size of one, you are trying to do: [" ^ Int64.to_string i ^ " .. " ^ Int64.to_string f ^ "], try : [0 .. 1].")
  | Eminint -> Vint minint
  | Emaxint -> Vint maxint
  | Ebinop (Band, e1, e2) ->
      let v1 = expr ctxs e1 in
      if is_true v1 = 1L then expr ctxs e2 else v1

  | Ebinop (Bor, e1, e2) ->
      let v1 = expr ctxs e1 in
      if is_false v1 = 1L then expr ctxs e2 else v1

  | Ebinop (Badd | Bsub | Bmul | Bdiv | Bmod |
            Beq | Bneq | Blt | Ble | Bgt | Bge as op, e1, e2) ->
      binop op (expr ctxs e1) (expr ctxs e2)

  | Eunop (Unot, e1) ->
      Vint (is_false (expr ctxs e1))

  | Ecall ("size", [e1]) -> 
      (* 1 - Calcula o tamanho de e1*)
      Vint (size_of_value (expr ctxs e1))

  | Ecall (f, el) ->
    begin try
        (* 1 - Vai buscar a funcao *)
        let args, _, body = Hashtbl.find functions f in

        (* 2 - Combinar os parametros passados com os parametros da funcao *)
        let comb = List.combine args el in

        (* 3 - Cria o contexto da funcao e atribui os valores ao respetivo argumento *)
        let ctxs = ctxs@[(Hashtbl.create 17 : table_ctx)] in
        List.iter (fun (arg, e) -> let aid, at = arg in interpret_stmt ctxs (Sdeclare(aid, at ,e))) comb;
        
        (* 4 - Interpreta o corpo da funcao *)
        interpret_stmt ctxs body;

        (* 5 - Se chegar aqui entao nao passou por uma instrucao return *)
        error ("The function " ^ f ^ " has no return statement but was expected one.")
      with 
        | Return r ->
            let _,return,_ = Hashtbl.find functions f in
            if value_in_type_limits r return then Vint r 
            else error ("Value out of bounds. The value " ^ Int64.to_string r  ^ " can\'t be used as the return of  " ^ f ^ ", try a value in the range " ^ string_of_value return ^ ".");
    end
  | Eident id ->
      (* 1 - Ir buscar o contexto em que a variavel esta declarada *)
      let ctx = List.hd (List.rev (find_id id ctxs)) in
      fst(Hashtbl.find ctx id)
        
  | Eget (id, e1) ->
      (* 1 - Ir buscar o valor da expressao *)
      let index = expr_int ctxs e1 in

      (* 4 - Verificar se o index esta entre os limites *)
      let ctx = List.hd (List.rev (find_id id ctxs)) in
      let l, range = vlist_to_tuple (fst(Hashtbl.find ctx id)) in
      let i, f = vset_to_tuplo range in
      if (Int64.sub index i) < 0L || index > f then error ("Value out of bounds. The value " ^ Int64.to_string index  ^ " can\'t be used with the array " ^ id ^ ", try a value in the range " ^ string_of_value range ^ ".");
      
      (* 5 - Retorna o valor *)
      l.(Int64.to_int(Int64.sub index i))

(* interpretação de um valor e verificação de que se trata de um inteiro *)
and expr_int ctxs e = 
  match expr ctxs e with
  | Vint n -> n
  | _ -> error "expr_int: experavasse um inteiro"

(* Interpretacao de instrucoes - locais*)
and interpret_stmt ctxs = function
  | Sif (e, s1, s2)   ->
      (* 1 - Verificar a condicao, se for verdade s1, se for falso s2 *)
      if is_true (expr ctxs e) = 1L 
      then interpret_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s1 
      else interpret_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s2
      
  | Sreturn e ->
      (* 1 - Retorna a expressao e*)
      raise (Return (expr_int ctxs e))

  | Sassign (id, e1)  ->
      (* 1 - Ir buscar o tipo da variavel *)
      let local_tbl = List.hd (List.rev (find_id id ctxs)) in
      let t1 = snd(Hashtbl.find local_tbl id) in

      (* 2 - Ir buscar o novo valor*)
      let v1 = expr_int ctxs e1 in

      (* 3 - Verificar se o valor esta dentro dos limites *)
      if value_in_type_limits v1 t1 then 
        Hashtbl.replace local_tbl id (Vint v1, t1)
      else error ("Value out of bounds. The value " ^ Int64.to_string v1 ^ " can\'t be used with the variable " ^ id ^ ", try a value in the range " ^ string_of_value t1 ^ ".")

  | Sdeclare (id, t ,e1) ->
      (* 1 - Ir buscar o tipo da variavel*)
      let tp = value_of_costumtype ctxs t in
    
      (* 2 - Ir buscar o valor da variavel*)
      let local_tbl = List.hd (List.rev ctxs) in
      let v1 = expr_int ctxs e1 in

      (* 3 - Verificar que o valor esta dentro dos limites *)
      if value_in_type_limits v1 tp then
        Hashtbl.add local_tbl id (Vint v1, tp)
      else error ("Value out of bounds. The value " ^ Int64.to_string  v1 ^ " can\'t be used with the variable " ^ id ^ ", try a value in the range " ^ string_of_value tp ^ ".")

  | Sdeclarearray (id, ida, e) ->
      (* 1 - Ir buscar o valor da variavel*)
      let ctx = List.hd (List.rev ctxs) in
      let v1 = expr_int ctxs e in

      (* 2 - Ir buscar a array*)
      let ctx_array = List.hd (List.rev (find_id ida ctxs)) in
      let range, t1 = Hashtbl.find ctx_array ida in (*range * tipo)*)
      
      (* 3 - Verificar se o valor esta contido nos limites do tipo *)
      if not (value_in_type_limits v1 t1) then error ("Value out of bounds. Error declaring an array, the value " ^ Int64.to_string v1 ^ " can\'t be used with the variable " ^ id ^ ", try a value in the range " ^ string_of_value t1 ^ ".");
      
      (* 4 - Se tudo correu bem entao vamos adicionar *)
      let sz = size_of_value range in
      let arr = Array.make (Int64.to_int sz) (Vint v1) in
      Hashtbl.add ctx id ((Vlist (arr, range)), t1)

  | Sarray (id, sz, t) -> 
      (* 1 - Ir buscar o conjunto que define o tamanho *)
      let size = expr ctxs sz in

      (* 2 - Verificar que a array criada tem mais do que 0 elementos *)
      let sv = size_of_value size in
      if sv <= 0L then error ("Error defining " ^ id ^ " array. An array must have more than 0 elements but was givin " ^ Int64.to_string sv ^ "."); 
      
      (* 3 - Verificar que tp esta contido nos limites do tipo*)
      let t1 = expr ctxs t in
      if size_of_value t1 <= 0L then error ("Error defining the array " ^ id ^  ". The type of an arrray can't have a range of 0 or be negative."); 
      
      (* 4 - Adiciona ao contexto atual *)
      let ctx = List.hd (List.rev ctxs) in
      Hashtbl.add ctx id (size, t1)

  | Sset (id, set) ->
      (* 1 - Ir buscar o conjunto *)
      let ctx = List.hd (List.rev ctxs) in
      let v1 = expr ctxs set in

      (* 2 - Adiciona ao contexto atual *)
      Hashtbl.add ctx id (v1, Vset(minint, maxint))

  | Saset (id, e1, e2) ->
      (* 1 - Ir buscar a array *)
      let ctx = List.hd (List.rev (find_id id ctxs)) in
      let arr, t1 = Hashtbl.find ctx id in

      (* 2 - Vai buscar o index *)
      let index = expr_int ctxs e1 in

      (* 3 - Verifica se o valor esta contido no tipo *)
      let v1 = expr_int ctxs e2 in
      if not (value_in_type_limits v1 t1) then error ("Value out of bounds. Error assigning the value " ^ Int64.to_string v1 ^ " can\'t be used with the array " ^ id ^ ", try a value in the range " ^ string_of_value t1 ^ ".");
      
      (* 4 - Verificar se o index esta entre os limites *)
      let l, range = vlist_to_tuple arr in
      let i, f = vset_to_tuplo range in
      if (Int64.sub index i) < 0L || index > f then error ("Value out of bounds. The value " ^ Int64.to_string index  ^ " can\'t be used with the array " ^ id ^ ", try a value in the range " ^ string_of_value range ^ ".");
      
      (* 5 - Atualiza o elemento da  array*)
      l.(Int64.to_int (Int64.sub index i)) <- Vint(v1)
      
  | Sprint e -> 
      (* 1 - Imprime a expressao _e_ sem \n*)
      print_value (expr ctxs e);

  | Sprintn e ->
      (* 1 - Imprime a expressao _e_ com \n*)
      print_value (expr ctxs e); printf "@."

  | Sblock bl -> 
      (* 1 - Interpreta o bloco de instruções *)
      interpret_block_stmt ctxs bl

  | Sforeach(x, e, bl) ->
    (* 1 - Ir buscar os limites do foreach*)
    let i, f = vset_to_tuplo (expr ctxs e) in
    let i = ref i in
    (* 2 - Iterar o corpo do foreach *)
    while( !i <= f) do
      (* 2.1 - Cada iteração representa um contexto único*)
      let ctxs = ctxs@[(Hashtbl.create 17 : table_ctx)] in
      
      (* 2.2 - Atualizamos a variavel i *)
      interpret_stmt ctxs (Sdeclare(x, Int, Ecst !i));

      (* 2.3 - Interpretamos o corpo do foreach*)
      interpret_stmt ctxs bl;
      
      i := Int64.add !i 1L
    done

(* Interpretacao de instrucoes - globais *)
and interpret_stmts ctxs = function  
  | Stfunction (f, args, return, body) ->
      (* 1 - Vamos buscar o retorno *)
      let return = value_of_costumtype ctxs return in

      (* 1 - Adicionamos a funcao a tabela*)
      Hashtbl.add functions f (args, return, body)

  | Stblock bl -> 
      (* 1 - Interpretamos o bloco de instruções *)
      interpret_block_stmts ctxs bl

  | Stmt s -> 
      (* 2 - Interpretamos uma instrucao *)
      interpret_stmt ctxs s

and interpret_block_stmt ctx = function
  | [] -> ()
  | s :: sl -> interpret_stmt ctx s; interpret_block_stmt ctx sl

and interpret_block_stmts ctx = function
  | [] -> ()
  | s :: sl -> interpret_stmts ctx s; interpret_block_stmts ctx sl

(* Interpretação de um ficheiro *)
let file s = interpret_stmts [(Hashtbl.create 17 : table_ctx)] s
