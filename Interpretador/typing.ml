open Ast

exception Error of string

let error s = raise (Error s)

type typ =
  | Tint
  | Tset of typ * typ
  | Tbinop of typ * typ
  | Tproduct of typ * typ

let is_int = function
  | Tint -> true
  | _ -> false

let is_set = function
  | Tset _ -> true
  | _ -> false

(* As funções são globais *)
let functions = (Hashtbl.create 17 : (string, argument list * costumtype * stmt) Hashtbl.t)

(* table_ctx representa um scope *)
type table_ctx = (string, typ) Hashtbl.t

let rec find_id id l = 
  match l with
  | ct::tl -> if Hashtbl.mem ct id then [ct] @ (find_id id tl) else (find_id id tl) 
  | _ -> []

let rec expr ctxs = function
  | Ecst n -> Tint
  | Eminint | Emaxint -> Tint
  | Eset (e1, e2) ->
      let t1 = expr ctxs e1 in
      let t2 = expr ctxs e2 in
      Tset(t1, t2)
  | Ebinop (_, e1, e2) -> 
      let t1 = expr ctxs e1 in
      let t2 = expr ctxs e2 in
      Tbinop(t1, t2)
  | Eunop (Unot, e1) ->
      expr ctxs e1
  | Ecall (f, el) -> assert false
  | Eident id ->
      if List.length(find_id id ctxs) == 0 then error ("Lexical analisys: Variable " ^ id ^ " not found"); 
      let ctx = List.hd (List.rev(find_id id ctxs)) in
      Hashtbl.find ctx id
  | Eget (id, e2) -> assert false

(* interpretação de uma instrução - não devolve nada *)
let rec stmt ctxs = function
  | Sif (e, s1, s2) ->
      let t1 = expr ctxs e in
      if not (is_int t1) then error ("Lexical analisys: The condition of the if statement needs to be an integer.")
      ignore(stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s1); 
      stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s2
  | Sreturn e ->
      let t1 = expr ctxs e in
      if not( is_int t1) then error ("Lexical analisys: the declaration statement only supports integers.")    
  | Sdeclare (id, _, e) -> 
      let ctx = List.hd (List.rev ctxs) in
      if Hashtbl.mem ctx id then error ("Lexical analisys: Variable " ^ id ^ " is already defined.");     
      let t1 = expr ctxs e in
      if not( is_int t1) then error ("Lexical analisys: the declaration statement only supports integers.");
      Hashtbl.add ctx id t1
  | Sassign (id, e1)    -> 
      if List.length(find_id id ctxs) == 0 then error ("Lexical analysis: The variable " ^ id ^ " is not defined.");
      let t1 = expr ctxs e1 in
      if not(is_int t1) then error ("Lexical analisys: the assignment statement only supports the assignment of integers.")
  | Sdeclarearray (id, ida, e) -> assert false
  | Sarray (id, sz, t) -> assert false
  | Sset (id, set) ->
      let ctx = List.hd(List.rev ctxs) in 
      if (Hashtbl.mem ctx id) then error ("Lexical analysis: Sset Variable is already defined"); 
      let t1 = expr ctxs set in
      if not(is_set t1) then error ("Lexical analysis: Variable is already defined");
      Hashtbl.add ctx id t1
  | Sprint e ->
      let t1 = expr ctxs e in
      if not (is_int t1) then error ("Lexical analysis: The print statement only supports integers.")
  | Sblock bl -> interpret_block_stmt ctxs bl
  | Sforeach(id, set, bl) ->
      let ctxs = ctxs@[(Hashtbl.create 17 : table_ctx)] in
      stmt ctxs (Sdeclare(id, Int, Ecst(0)));

      let t1 = expr ctxs set in
      if not (is_set t1) then error ("Lexical analysis: The foreach statement needs a initializer set.");
      
      stmt ctxs bl
  | _ -> assert false
  
and stmts ctxs = function  
  | Stfunction (f, args, return, body) -> assert false
  | Stblock bl -> interpret_block_stmts ctxs bl
  | Stmt s -> stmt ctxs s

and interpret_block_stmt ctxs = function
  | [] -> ()
  | s :: sl -> stmt ctxs s; interpret_block_stmt ctxs sl

and interpret_block_stmts ctxs = function
  | [] -> ()
  | s :: sl -> stmts ctxs s; interpret_block_stmts ctxs sl

(* interpretação de um ficheiro *)
let file s = stmts [(Hashtbl.create 17 : table_ctx)] s
