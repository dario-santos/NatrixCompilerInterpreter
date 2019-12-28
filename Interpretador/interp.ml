open Ast
open Format

exception Error of string

let error s = raise (Error s)

type value =
  | Vint of int
  | Vlist of value array

exception Return of value
  
(* Vizualização *)
let rec print_value = function
  | Vint n -> printf "%d" n
  | _ -> error "instruções print apenas suportam inteiros"

let is_false = function
  | Vint n -> if n = 0 then 1 else 0
  | _ -> 0

let is_true v = if is_false v == 0 then 1 else 0

let rec compare_list a1 n1 a2 n2 i =
  if i = n1 && i = n2 then 0
  else if i = n1 then -1
  else if i = n2 then 1
  else let c = compare a1.(i) a2.(i) in
       if c <> 0 then c else compare_list a1 n1 a2 n2 (i + 1)   

let rec compare_value v1 v2 = 
  match v1, v2 with
  | Vlist a1, Vlist a2 -> compare_list a1 (Array.length a1) a2 (Array.length a2) 0
  | _ -> compare v1 v2

let binop op v1 v2 = match op, v1, v2 with
  | Badd, Vint n1, Vint n2 -> Vint (n1 + n2)  
  | Badd, Vlist l1, Vlist l2 -> Vlist (Array.append l1 l2)
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

let functions = (Hashtbl.create 17 : (string, ident list * costumtype * stmt) Hashtbl.t)
let sets = (Hashtbl.create 17 : (string, int * int) Hashtbl.t)


(* Les variáveis locais
   (parâmetros de funções e variáveis introduzidas por atribuições) são
   arquivadas numa tabela de hash passada como argumento às funções
   seguintes com o nome 'ctx'
*)

type table_ctx = (string, value * costumtype) Hashtbl.t
let globalvars = (Hashtbl.create 17 : table_ctx)

(* Interpretação de uma expressão (devolve um valor) *)
let rec expr ctx = function
  | Ecst n -> Vint n
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
  | Ecall (f, el) ->
    begin
      try
        let args, return, body = Hashtbl.find functions f in
        let comb = List.combine args el in
        let localtbl = (Hashtbl.create 17 : table_ctx) in
        let ctx = ctx@[localtbl] in
        ignore(List.iter (fun (id, e) -> stmt ctx (Sdeclare(id, Int, e))) comb);
        ignore(stmt ctx body);
        error "funcao sem return"
      with 
        | Not_found -> error "função não implementada"
        | Invalid_argument _ -> error "chamada incorreta à função, assinatura inválida"
        | Return r -> r
    end
  | Elist el ->
      Vlist (Array.of_list (List.map (expr ctx) el))
  | Eident id ->
      if (List.length ctx) == 0 then error "variável não declarada"
      else 
        let tbls = find_id id ctx in
        let local_tbl = List.hd (List.rev tbls) in
          fst(Hashtbl.find local_tbl id)
  | Eget (e1, e2) ->
      begin match expr ctx e1 with
      | Vlist l ->
          let i = expr_int ctx e2 in
          (try l.(i) with Invalid_argument _ -> error "index out of bounds")
      | _ -> error "list expected" end

(* interpretação de um valor e verificação de que se trata de um inteiro *)
and expr_int ctx e = 
  match expr ctx e with
  | Vint n -> n
  | _ -> error "integer expected"

and extract_value v = 
  match v with
  | Vint n -> n
  | _ -> error "experavasse um inteiro"

and value_in_type_limits v t = 
  match t with
  | Int -> v >= 0 && v <= max_int 
  | CTset t1 ->
    try 
      let (i, f) = Hashtbl.find sets t1 in
      v >= i && v <= f
    with _ -> error "tipo nao definido"    

(* interpretação de uma instrução - não devolve nada *)
and find_id id l = 
  match l with
  | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
  | _ -> []

and stmt ctx = function
  | Sif (e, s1, s2)   ->
      if is_true (expr ctx e) == 1 
      then stmt (ctx @ [(Hashtbl.create 17 : table_ctx)]) s1 
      else stmt (ctx @ [(Hashtbl.create 17 : table_ctx)]) s2
  | Sreturn e         -> raise (Return (expr ctx e))
  | Sassign (id, e1)  ->
      let tbls = find_id id ctx in
      ignore(if List.length tbls == 0 then error "variável não declarada");
      let first_tbl = List.hd (List.rev ctx) in
      let _,t = Hashtbl.find first_tbl id in
      let v = expr ctx e1 in
      if value_in_type_limits (extract_value v) t then Hashtbl.replace (List.hd ctx) id (v, t)
      else error "variavel fora dos limites"
  | Sdeclare (id, t ,e1) ->
    let local_tbl = List.hd (List.rev ctx) in
    ignore(if Hashtbl.mem local_tbl id then error "o identificador deve ser único"); (*Se já existir uma variável no scope *)
    ignore(if Hashtbl.mem sets id then error "o identificador deve ser único"); (*Se já existir um conjunto então termina *)
    ignore(if Hashtbl.mem functions id then error "o identificador deve ser único"); (*Se já existir uma função então termina *)
    let v = expr ctx e1 in
    if value_in_type_limits (extract_value v) t then
      Hashtbl.add local_tbl id (v, t)
    else error "variavel fora dos limites"
  | Sset (e1, e2, e3) ->
      begin match expr ctx e1 with
      | Vlist l -> l.(expr_int ctx e2) <- expr ctx e3
      | _ -> error "list expected" end
  | Sprint e          -> print_value (expr ctx e); printf "@."
  | Sblock bl         -> interpret_block_stmt ctx bl
  | Sforeach(x, e1, e2, s) ->
    let v1 = expr_int ctx e1 in
    let v2 = expr_int ctx e2 in
    for i = v1 to v2 do
      let localtbl = (Hashtbl.create 17 : table_ctx) in   (* Cada iteração tem um contexto próprio *)
      stmt (ctx@[localtbl]) (Sdeclare(x, Int, Ecst i));   (* Atualizar a variável do for*)
      stmt (ctx@[localtbl]) s; 
    done
  | Seval e           -> ignore (expr ctx e)
  
and stmts ctx = function  
  | Stfunction (f, args, return, body) ->
      ignore(if List.length(find_id f ctx) > 0 then error "a função deve ter um id único");
      ignore(if Hashtbl.mem functions f then error "a função deve ter um id único");
      Hashtbl.add functions f (args, return, body)
  | Stblock bl -> interpret_block_stmts ctx bl
  | Stmt s -> stmt ctx s
  | Stsetdef (id, e1, e2) ->
      ignore(if List.length(find_id id ctx) > 0 then  error "o conjunto deve ter um id único");
      let i = expr_int ctx e1 in
      let f = expr_int ctx e2 in
      ignore(if i > f then error "valor inicial do conjunto é maior do que o final");
      Hashtbl.add sets id (i, f)

and interpret_block_stmt ctx = function
  | [] -> ()
  | s :: sl -> stmt ctx s; interpret_block_stmt ctx sl

and interpret_block_stmts ctx = function
  | [] -> ()
  | s :: sl -> stmts ctx s; interpret_block_stmts ctx sl

(* interpretação de um ficheiro *)
let file s = stmts [(Hashtbl.create 17 : table_ctx)] s
