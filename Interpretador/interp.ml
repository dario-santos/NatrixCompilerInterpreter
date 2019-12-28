open Ast
open Format

exception Error of string

let error s = raise (Error s)

(* Tipos de dados*)
type value =
  | Vint of int                  (* valor       *)
  | Vset of int * int            (* inicio, fim *)
  | Varray of value * value      (* range, tipo *)
  | Vlist of value array * value (* lista, range*)

(* Extraír o valor do Vint *)
let vint_to_int = function
  | Vint n -> n
  | _ -> error "funcao vint_to_int aceita apenas Vint"

  let vset_to_tuplo = function
  | Vset (i,f) -> (i,f)
  | _ -> error "funcao vset_to_tuplo aceita apenas Vset"

let varray_to_tuplo = function
  | Varray (elements, t) -> (elements, t)
  | _ -> error "funcao varray_to_tuplo aceita apenas Varray"

exception Return of value
  
(* print *)
let rec print_value = function
  | Vint n -> if n < 0 then error "a função print não suporta números negativos" else printf "%d" n
  | Vset (i,f) -> printf "[%d, %d]" i f
  | _ -> error "instruções print apenas suportam inteiros"

(* Falso : Vint 0*)
(* Verdade : Vint v != 0 *)
let is_false = function
  | Vint n -> if n == 0 then 1 else 0
  | _ -> error "expressões booleanas apenas aceitam inteiros"

let is_true v = if is_false v == 0 then 1 else 0

let rec compare_list a1 n1 a2 n2 i =
  if i = n1 && i = n2 then 0
  else if i = n1 then -1
  else if i = n2 then 1
  else let c = compare a1.(i) a2.(i) in
       if c <> 0 then c else compare_list a1 n1 a2 n2 (i + 1)   

let rec compare_value v1 v2 = 
  match v1, v2 with
  | Vlist (a1,_), Vlist (a2,_) -> compare_list a1 (Array.length a1) a2 (Array.length a2) 0
  | _ -> compare v1 v2

let binop op v1 v2 = match op, v1, v2 with
  | Badd, Vint n1, Vint n2 -> Vint (n1 + n2)  
  | Bsub, Vint n1, Vint n2 -> Vint (n1 - n2)
  | Bmul, Vint n1, Vint n2 -> Vint (n1 * n2)
  | Bdiv, Vint _, Vint 0 -> error "divisão por zero"
  | Bdiv, Vint n1, Vint n2 -> Vint (n1 / n2)
  | Beq, _, _ -> if compare_value v1 v2 = 0  then Vint 1 else Vint 0
  | Bneq, _, _-> if compare_value v1 v2 <> 0 then Vint 1 else Vint 0
  | Blt, _, _ -> if compare_value v1 v2 < 0  then Vint 1 else Vint 0
  | Ble, _, _ -> if compare_value v1 v2 <= 0 then Vint 1 else Vint 0
  | Bgt, _, _ -> if compare_value v1 v2 > 0  then Vint 1 else Vint 0
  | Bge, _, _ -> if compare_value v1 v2 >= 0 then Vint 1 else Vint 0
  | _ -> error "operandos não suportados"

(* As funções são globais *)
(* Todo: mudar o retorno costumtype para Vset *)
let functions = (Hashtbl.create 17 : (string, argument list * costumtype * stmt) Hashtbl.t)
let arrays = (Hashtbl.create 17 : (string, costumtype * costumtype) Hashtbl.t)

(* table_ctx representa um scope *)
type table_ctx = (string, value * value) Hashtbl.t

(* Interpretação de uma expressão (devolve um valor) *)
let rec expr ctx = function
  | Ecst n -> Vint n
  | Eset (e1, e2) -> 
      let i = expr_int ctx e1 in 
      let f = expr_int ctx e2 in 
      if i >= 0 && f >= 0 && i < f then Vset (i, f) 
      else error "valor inicial do conjunto é maior do que o final"
  | Eminint -> Vint 0
  | Emaxint -> Vint max_int
  | Ebinop (Band, e1, e2) ->
      let v1 = expr ctx e1 in
      if is_true v1 == 1 then expr ctx e2 else v1
  | Ebinop (Bor, e1, e2) ->
      let v1 = expr ctx e1 in
      if is_false v1 == 1 then expr ctx e2 else v1
  | Ebinop (Badd | Bsub | Bmul | Bdiv |
            Beq | Bneq | Blt | Ble | Bgt | Bge as op, e1, e2) ->
      binop op (expr ctx e1) (expr ctx e2)
  | Eunop (Uneg, e1) ->
      begin match expr ctx e1 with
        | Vint n -> Vint (-n)
        | _ -> error "unsupported operand types" end
  | Eunop (Unot, e1) ->
      Vint (is_false (expr ctx e1))
  | Ecall ("size", [e1]) ->
    begin match expr ctx e1 with
      | Vlist(_,r) -> let i,f = vset_to_tuplo r in Vint ((f - i) + 1) 
      | Vset(i,f) -> Vint ((f - i) + 1)
      | _ -> error "a função size apenas suporta conjuntos"
    end
  | Ecall (f, el) ->
    begin
      try
        let args, _, body = Hashtbl.find functions f in
        ignore(if List.length el != List.length args then error "chamada incorreta à função, assinatura inválida");
        let comb = List.combine args el in
        let localtbl = (Hashtbl.create 17 : table_ctx) in
        let ctx = ctx@[localtbl] in
        ignore(List.iter (fun (arg, e) -> let aid, at = arg in stmt ctx (Sdeclare(aid, at ,e))) comb);
        ignore(stmt ctx body);
        error "funcao sem return"
      with 
        | Not_found -> error "função não implementada"
        | Return r ->
          let _,return,_ = Hashtbl.find functions f in
          if (value_in_type_limits (vint_to_int r) (get_type return ctx)) then r else error "o retorno não condiz com o tipo da função"
    end
  | Eident id ->
      if (List.length (find_id id ctx)) == 0 then error "variável não declarada"
      else 
        let tbls = find_id id ctx in
        let local_tbl = List.hd (List.rev tbls) in
          fst(Hashtbl.find local_tbl id)
  | Eget (id, e2) ->
    if (List.length (find_id id ctx)) == 0 then error "variável não declarada"
    else 
      let tbls = find_id id ctx in
      let local_tbl = List.hd (List.rev tbls) in
    begin match fst(Hashtbl.find local_tbl id) with
      | Vlist (l, range) ->
          let i,_ = vset_to_tuplo range in
          let index = expr_int ctx e2 in
          (try l.(index - i) with Invalid_argument _ -> error "index out of bounds")
      | _ -> error "list expected" 
    end

and find_id id l = 
    match l with
    | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
    | _ -> []

and size_of_set id ctx = 
  match id with 
  | CTid t1 -> begin try
      if (List.length (find_id t1 ctx)) == 0 then error "tipo não declarado"
      else
        let local_tbl_type = List.hd (List.rev (find_id t1 ctx)) in
        let set = fst(Hashtbl.find local_tbl_type t1) in
      match set with 
      | Vset (i,f) ->  (f - i) + 1
      | _ -> error "experavasse um conjunto"
      with _ -> error "tipo nao definido"
    end
  | _ -> error "funcao size_of_set aceita apenas conjuntos"
     

(* interpretação de um valor e verificação de que se trata de um inteiro *)
and expr_int ctx e = 
  match expr ctx e with
  | Vint n -> n
  | _ -> error "experavasse um inteiro"

and expr_set ctx e = 
  match expr ctx e with
  | Vset (i,f) -> (i,f)
  | _ -> error "experavasse um conjunto"

and value_in_type_limits v t =
  let i,f = vset_to_tuplo t in
  v >= i && v <= f
  
and get_type t ctx = 
  match t with
  | Int -> Vset(0, max_int)
  | CTid id ->
    begin
      try
      if (List.length (find_id id ctx)) == 0 then error "tipo não declarado"
      else
        let tbls = find_id id ctx in
        let local_tbl_type = List.hd (List.rev tbls) in
        let set = fst(Hashtbl.find local_tbl_type id) in
        let (i, f) = vset_to_tuplo set in
        Vset(i, f)
      with _ -> error "tipo nao definido"
    end

(* interpretação de uma instrução - não devolve nada *)
and stmt ctx = function
  | Sif (e, s1, s2)   ->
      if is_true (expr ctx e) == 1 
      then stmt (ctx@[(Hashtbl.create 17 : table_ctx)]) s1 
      else stmt (ctx@[(Hashtbl.create 17 : table_ctx)]) s2
  | Sreturn e         -> raise (Return (expr ctx e))
  | Sassign (id, e1)  ->
    if (List.length (find_id id ctx)) == 0 then error "variável não declarada"
    else 
      let tbls = find_id id ctx in
      let local_tbl = List.hd (List.rev tbls) in
      let t = snd(Hashtbl.find local_tbl id) in
      let v = expr ctx e1 in
      if value_in_type_limits (vint_to_int v) t then 
        Hashtbl.replace local_tbl id (v, t)
      else error "Sassign: valor fora dos limites do tipo"
  | Sdeclare (id, t ,e1) ->
    let local_tbl = List.hd (List.rev ctx) in
    ignore(if Hashtbl.mem local_tbl id then error "o identificador deve ser único"); (*Se já existir uma variável no scope *)
    ignore(if Hashtbl.mem functions id then error "o identificador deve ser único"); (*Se já existir uma função então termina *)
    ignore(if Hashtbl.mem arrays id then error "a função deve ter um id único");
    let new_value = expr ctx e1 in
    let tp = get_type t ctx in
    if value_in_type_limits (vint_to_int new_value) tp then
      Hashtbl.add local_tbl id (new_value, tp)
    else error "Sdeclare: valor fora dos limites do tipo"
  | Sdeclarearray (id, ida, e) ->
    begin try
      let local_tbl = List.hd (List.rev ctx) in
      ignore(if Hashtbl.mem local_tbl id then error "o identificador deve ser único"); (*Se já existir uma variável no scope *)
      ignore(if Hashtbl.mem functions id then error "o identificador deve ser único"); (*Se já existir uma função então termina *)
      let v = expr_int ctx e in
      if (List.length (find_id ida ctx)) == 0 then error "tipo array não declarado"
      else
        let tbls = find_id ida ctx in
        let local_tbl_type = List.hd (List.rev tbls) in
        let range, array_type = Hashtbl.find local_tbl_type ida in (* Varray (tamanho * tipo)*)
        let i, f = 
          match range with
          | Vint n -> 0, n
          | Vset (i,f) -> i, f
          | _ -> error "tipo de dados não suportado"
        in
        if value_in_type_limits v array_type then
          let a = Array.make ((f - i) + 1) (Vint v) in
          Hashtbl.add local_tbl id ((Vlist (a, Vset(i, f))), array_type)
        else error "Sdeclarearray: valor fora dos limites do tipo"
      with _ -> error "tipo array não definido"
    end
      (* a, tipo, 3 *)
      (* val a : tipo filled by 3 *)
      (* Varray of value * value *)
      (* elements, t *)
  | Sarray (id, sz, t) -> 
      let local_tbl = List.hd (List.rev ctx) in
      ignore(if Hashtbl.mem local_tbl id then error "o identificador deve ser único"); (*Se já existir uma variável no scope *)
      ignore(if Hashtbl.mem functions id then error "o identificador deve ser único"); (*Se já existir uma função então termina *)
      let range = 
        match expr ctx sz with
        | Vint n -> Vset(0, n)
        | Vset (i, f) -> Vset(i, f)
        | _ -> error "tipo de dados não suportado"
      in
      let tp = expr ctx t in
      Hashtbl.add local_tbl id (range, tp)
  | Sset (id, set) ->
      let local_tbl = List.hd (List.rev ctx) in
      ignore(if Hashtbl.mem local_tbl id then error "o identificador deve ser único"); (*Se já existir uma variável no scope *)
      ignore(if Hashtbl.mem functions id then error "o identificador deve ser único"); (*Se já existir uma função então termina *)
      ignore(if Hashtbl.mem arrays id then error "a função deve ter um id único");
      let s = expr ctx set in
      Hashtbl.add local_tbl id (s, Vset(0, max_int))
  | Saset (id, e1, e2) ->
  (* Procurar o id *)
  (* Ver se o valor do e2 está nas confurmidades *)
  if (List.length (find_id id ctx)) == 0 then error "Sset: variável não declarada"
  else 
      let tbls = find_id id ctx in
      let local_tbl = List.hd (List.rev tbls) in
      let arr, t = Hashtbl.find local_tbl id in      (* Vlist of value array    *)
      let index = expr_int ctx e1 in                 (* Ir buscar o index       *)
      let new_value = expr_int ctx e2 in
        begin match arr with
          | Vlist (l,range) ->
            if value_in_type_limits new_value t then
              let i,_ = vset_to_tuplo range in
              l.(index - i) <- Vint(new_value)
            else error "Sassign: valor fora dos limites do tipo"
          | _       -> error "list expected" 
        end
  | Sprint e          -> print_value (expr ctx e); printf "@."
  | Sblock bl         -> interpret_block_stmt ctx bl
  | Sforeach(x, e, bl) ->
    let i, f = expr_set ctx e in
    for i = i to f do
      let localtbl = (Hashtbl.create 17 : table_ctx) in   (* Cada iteração tem um contexto próprio *)
      stmt (ctx@[localtbl]) (Sdeclare(x, Int, Ecst i));   (* Atualizar a variável do for*)
      stmt (ctx@[localtbl]) bl; 
    done
  | Seval e           -> ignore (expr ctx e)
  
and stmts ctx = function  
  | Stfunction (f, args, return, body) ->
      ignore(if List.length(find_id f ctx) > 0 then error "a função deve ter um id único");
      ignore(if Hashtbl.mem functions f then error "a função deve ter um id único");
      ignore(if Hashtbl.mem arrays f then error "a função deve ter um id único");
      Hashtbl.add functions f (args, return, body)
  | Stblock bl -> interpret_block_stmts ctx bl
  | Stmt s -> stmt ctx s

and interpret_block_stmt ctx = function
  | [] -> ()
  | s :: sl -> stmt ctx s; interpret_block_stmt ctx sl

and interpret_block_stmts ctx = function
  | [] -> ()
  | s :: sl -> stmts ctx s; interpret_block_stmts ctx sl

(* interpretação de um ficheiro *)
let file s = stmts [(Hashtbl.create 17 : table_ctx)] s
