open Ast
open Format

(* Excepção levantada para assinalar um erro durante a interpretação *)
exception Error of string

let error s = raise (Error s)

type value =
  | Vint of int
  | Vlist of value array

(* Vizualização *)
let rec print_value = function
  | Vint n -> printf "%d" n
  | _ -> error "instruções print apenas suportam inteiros"

(* Interpretação booleana

   Em Python, qualquer valor pode ser utilizado como um valor boleano :
   None, a lista vazia, a string vazia o inteiro 0 são considerados como
   False e qualquer outro valor como True *)

let is_false = function
  | Vint n -> if n = 0 then 1 else 0
  | _ -> 0

let is_true v = if is_false v == 0 then 1 else 0

(* Interpretação dos operadores binários

   - o operador + é sobrecarregado : designa também a concatenação
     das listas e das strings
   - os operadores / e % devem levantar uma excepção se se tenta dividir
     por zero
*)

let rec compare_list a1 n1 a2 n2 i =
  if i = n1 && i = n2 then 0
  else if i = n1 then -1
  else if i = n2 then 1
  else let c = compare a1.(i) a2.(i) in
       if c <> 0 then c else compare_list a1 n1 a2 n2 (i + 1)

let rec compare_value v1 v2 = 
  match v1, v2 with
  | Vlist a1, Vlist a2 ->compare_list a1 (Array.length a1) a2 (Array.length a2) 0
  | _ -> compare v1 v2

let binop op v1 v2 = match op, v1, v2 with
  | Badd, Vint n1, Vint n2 -> Vint (n1+n2)
  | Badd, Vlist l1, Vlist l2 -> Vlist (Array.append l1 l2)
  | Bsub, Vint n1, Vint n2 -> Vint (n1-n2)
  | Bmul, Vint n1, Vint n2 -> Vint (n1*n2)
  | (Bdiv | Bmod), Vint _, Vint 0 -> error "division by zero"
  | Bdiv, Vint n1, Vint n2 -> Vint (n1/n2)
  | Bmod, Vint n1, Vint n2 -> Vint (n1 mod n2)
  | Beq, _, _ -> if compare_value v1 v2 = 0  then Vint 1 else Vint 0
  | Bneq, _, _-> if compare_value v1 v2 <> 0 then Vint 1 else Vint 0
  | Blt, _, _ -> if compare_value v1 v2 < 0  then Vint 1 else Vint 0
  | Ble, _, _ -> if compare_value v1 v2 <= 0 then Vint 1 else Vint 0
  | Bgt, _, _ -> if compare_value v1 v2 > 0  then Vint 1 else Vint 0
  | Bge, _, _ -> if compare_value v1 v2 >= 0 then Vint 1 else Vint 0
  | _ -> error "unsupported operand types"

(* A instrução 'return' de Python é interpretada com recurso a uma excepção *)

exception Return of value

(* Les variáveis locais
   (parâmetros de funções e variáveis introduzidas por atribuições) são
   arquivadas numa tabela de hash passada como argumento às funções
   seguintes com o nome 'ctx'
*)

type ctx = (string, value) Hashtbl.t

(* Interpretação de uma expressão (devolve um valor) *)
let rec expr ctx = function
  | Ecst n -> Vint n
  | Eminint -> Vint 0
  | Emaxint -> Vint 999
  | Ebinop (Band, e1, e2) ->
      let v1 = expr ctx e1 in
      if is_true v1 == 1 then expr ctx e2 else v1
  | Ebinop (Bor, e1, e2) ->
      let v1 = expr ctx e1 in
      if is_false v1 == 1 then expr ctx e2 else v1
  | Ebinop (Badd | Bsub | Bmul | Bdiv | Bmod |
            Beq | Bneq | Blt | Ble | Bgt | Bge as op, e1, e2) ->
      binop op (expr ctx e1) (expr ctx e2)
  | Eunop (Uneg, e1) ->
      begin match expr ctx e1 with
        | Vint n -> Vint (-n)
        | _ -> error "unsupported operand types" end
  | Eunop (Unot, e1) ->
      Vint (is_false (expr ctx e1))
  | Ecall ("len", [e1]) ->
      begin match expr ctx e1 with
        | Vlist l -> Vint (Array.length l)
        | _ -> error "this value has no 'len'" end
  | Ecall ("list", [Ecall ("range", [e1])]) ->
      let n = expr_int ctx e1 in
      Vlist (Array.init (max 0 n) (fun i -> Vint i))
  | Ecall (f, el) ->
      error "not implemented"
  | Elist el ->
      Vlist (Array.of_list (List.map (expr ctx) el))
  | Eident id ->
      if not (Hashtbl.mem ctx id) then error "unbound variable";
      Hashtbl.find ctx id
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

(* interpretação de uma instrução - não devolve nada *)
and stmt ctx = function
  | Sif (e, s1, s2) ->
      if is_true (expr ctx e) == 1 then stmt ctx s1 else stmt ctx s2
  | Sreturn e ->
      raise (Return (expr ctx e))
  | Sassign (id, e1) ->
    if not (Hashtbl.mem ctx id) then error "variável não definida" 
    else Hashtbl.replace ctx id (expr ctx e1)
  | Sdeclare (id, e1) ->
      if Hashtbl.mem ctx id then error "variável já definida"
      else Hashtbl.add ctx id (expr ctx e1)
  | Sset (e1, e2, e3) ->
      begin match expr ctx e1 with
      | Vlist l -> l.(expr_int ctx e2) <- expr ctx e3
      | _ -> error "list expected" end
  | Sprint e -> print_value (expr ctx e); printf "@."
  | Sblock bl -> block ctx bl
  | Sforeach(x, e1, e2, s) ->
    let v1 = expr_int ctx e1 in
    let v2 = expr_int ctx e2 in
    stmt ctx (Sdeclare(x, e1));
    for i = v1 to v2 do
      stmt ctx (Sassign(x, Ecst i));
      stmt ctx s;
    done
  | Seval e -> ignore (expr ctx e)

(* interpretação de um bloco, i.e. uma sequência de instruções *)
and block ctx = function
  | [] -> ()
  | s :: sl -> stmt ctx s; block ctx sl

(* interpretação de um ficheiro *)
let file s = stmt (Hashtbl.create 17) s