(* Produção de código para a linguagem Natrix *)
      
open Format
open X86_64
open Ast
open Int64
      
exception VarUndef of string
exception Error of string
let error s = raise (Error s)

let minint = Int64.zero
let maxint = Int64.max_int

(* Tamanho da frame, em byte (cada variável local ocupa 8 bytes) *)
let frame_size = ref 0

(* Variáveis para garantir que cada for/if/etc. tem labels com nomes diferentes *)
let number_of_for = ref 0
let number_of_bool_tests = ref 0
let number_of_and_or = ref 0
let number_of_ifs = ref 0
let number_of_tipagens = ref 0
let number_of_arraydefs = ref 0

type value =
  | Vint of int             (* valor       *)
  | Vset of int * int       (* inicio, fim *)
  | Vlist of value * value  (* Vset(i, f), tipo*)

let int_of_vint = function
  | Vint n -> n
  | _-> error "int_of_vint" 

let tuple_of_vset = function
  | Vset (i,f) -> (i, f)
  | _-> error "int_of_vint" 

let extract_to_assembly = function
  | Vset (inicio_ofs, fim_ofs) -> 
      movq (ind ~ofs:(- inicio_ofs) rbp) (reg rax) ++
      pushq (reg rax) ++
      movq (ind ~ofs:(- fim_ofs) rbp) (reg rax) ++
      pushq (reg rax)
  | Vint ofs -> 
      movq (ind ~ofs:(- ofs) rbp) (reg rax) ++
      pushq (reg rax)
  | _ -> error "a"


(* Hashtbl para as funções, a outra para os diferentes contextos *)
type table_ctx = (string, (Ast.costumtype * value)) Hashtbl.t
(*                id       tipo             ofs  *)
let (function_ctx : (string, (((string * (Ast.costumtype * value)) list) * costumtype)) Hashtbl.t) = Hashtbl.create 17
(*                   nome    ctx         retorno *)

let functions_code = ref nop

let rec find_id ctxs id = 
    match ctxs with
    | hd::tl -> if Hashtbl.mem hd id then [hd] @ (find_id tl id) else (find_id tl id) 
    | _ -> []

let is_rbx_in_type_boundaries ctxs t = 
  match t with
  | Int ->
      (* 1 - Incrementar numero de verificacoes *)
      number_of_tipagens := !number_of_tipagens + 1;
      let current_tipagem_test = string_of_int(!number_of_tipagens) in
      
      (* 2 - Como 0 é suficiente pequeno nao temos que colocar num registo para testar o limite inferior *) 
      cmpq (imm64 minint) (reg rbx) ++
      
      (* 3a - Se for superior entao vamos testar o limite superior*)
      jge ("inicio_true_" ^ current_tipagem_test) ++

      (* 3b - Se nao for superior entao terminamos *)
      jmp "print_error_t" ++
      
      (* 4 - Verificamos se o limite superior tambem se cumpre *)
      label ("inicio_true_" ^ current_tipagem_test) ++
      movq (imm64 maxint) (reg rax) ++ 
      cmpq (reg rax) (reg rbx) ++
      
      (* 5a - Se todos os limites foram compridos entao continuamos a execucao *)
      jle ("fim_true_" ^ current_tipagem_test) ++
      
      (* 5b - Se algum dos limites nao for cumprido entao terminamos *)
      jmp "print_error_t"++
      label ("fim_true_" ^ current_tipagem_test) 

  | CTid t ->
      (* 1 - Incrementar numero de verificacoes *)
      let ctx = List.hd (List.rev (find_id ctxs t )) in
      let inicio_ofs, fim_ofs = tuple_of_vset (snd((Hashtbl.find ctx t))) in
      let inicio_ofs = - inicio_ofs in  
      let fim_ofs = - fim_ofs in

      number_of_tipagens := !number_of_tipagens + 1;
      let current_tipagem_test = string_of_int(!number_of_tipagens) in
    
      movq (ind ~ofs:(inicio_ofs) rbp) (reg rax) ++
      cmpq (reg rax) (reg rbx) ++
      jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
      jmp "print_error_t"++
      label ("inicio_true_" ^ current_tipagem_test) ++
      movq (ind ~ofs:(fim_ofs) rbp) (reg rax) ++
      cmpq (reg rax) (reg rbx) ++
      jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
      jmp "print_error_t"++
      label ("fim_true_" ^ current_tipagem_test)

let is_in_type_boundaries ctxs id_ofs t = 
  match t with
  | Int ->

      (* 1 - Incrementar o numero de verificacoes *)
      number_of_tipagens := !number_of_tipagens + 1;
      let current_tipagem_test = string_of_int(!number_of_tipagens) in

      (* 2 - Como 0 é suficiente pequeno nao temos que colocar num registo para testar o limite inferior *) 
      cmpq (imm64 minint) (ind ~ofs:(-id_ofs) rbp) ++
      
      (* 3a - Se for superior entao vamos testar o limite superior*)
      jge ("inicio_true_" ^ current_tipagem_test) ++
      
      (* 3b - Se nao for superior entao terminamos *)
      jmp "print_error_t"++

      (* 4 - Verificamos se o limite superior tambem se cumpre *)
      label ("inicio_true_" ^ current_tipagem_test) ++
      movq (imm64 maxint) (reg rax) ++
      cmpq (reg rax) (ind ~ofs:(-id_ofs) rbp) ++
      
      (* 5a - Se todos os limites foram compridos entao continuamos a execucao *)
      jle ("fim_true_" ^ current_tipagem_test) ++

      (*  5b - Se algum dos limites nao for cumprido entao terminamos *)
      jmp "print_error_t"++
      label ("fim_true_" ^ current_tipagem_test) 
  | CTid t -> 
    let ctx = List.hd (List.rev (find_id ctxs t )) in
      let inicio_ofs, fim_ofs = tuple_of_vset (snd((Hashtbl.find ctx t))) in
      let inicio_ofs = - inicio_ofs in  
      let fim_ofs = - fim_ofs in
  
    number_of_tipagens := !number_of_tipagens + 1;
    let current_tipagem_test = string_of_int(!number_of_tipagens) in
    movq (ind ~ofs:(inicio_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (ind ~ofs:(-id_ofs) rbp) ++
    jge ("inicio_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("inicio_true_" ^ current_tipagem_test) ++
    movq (ind ~ofs:(fim_ofs) rbp) (reg rax) ++
    cmpq (reg rax) (ind ~ofs:(-id_ofs) rbp) ++
    jle ("fim_true_" ^ current_tipagem_test) ++
      (* TODO: LANÇAR ERRO AQUI *)
    jmp "print_error_t"++
    label ("fim_true_" ^ current_tipagem_test)
    
let rec compile_expr ctxs = function
  | Ecst i ->
      (* 1 - Colocar a constante no topo da pilha *)
      movq (imm64 i) (reg rax) ++
      pushq (reg rax)

  | Eset (e1, e2) ->
      (* 1 - Colocar o inicio na pilha *)
      compile_expr ctxs e1 ++
      
      (* 2 - Colocar o fim na pilha *)
      compile_expr ctxs e2 ++

      (* 3 - Retura os valores da pilha *)
      popq rax ++
      popq rbx ++

      (* 4 - Faz as verificacoes *)
      cmpq (reg rbx) (reg rax) ++      
      jle "print_error_s" ++

      cmpq (imm64 0L) (reg rax) ++      
      jl "print_error_s" ++

      cmpq (imm64 0L) (reg rbx) ++      
      jl "print_error_s" ++

      (* Coloca os valores *)
      pushq (reg rbx) ++
      pushq (reg rax)

  | Eminint -> 
      (* 1 - Colocar a constante minint na pilha *)
      movq (imm64 minint) (reg rax) ++
      pushq (reg rax) 

  | Emaxint ->
      (* 1 - Colocar a constante maxint na pilha *)
      movq (imm64 maxint) (reg rax) ++
      pushq (reg rax)

  | Eident id ->
      (* 1 - Ir buscar  o valor de id *)
      let ctx = List.hd( List.rev (find_id ctxs id )) in
      let v = snd(Hashtbl.find ctx id) in

      (* 2 - Gerar o codigo respondente  ao tipo de dados*)
      extract_to_assembly v
  
  | Ebinop (Bmod | Bdiv as op, e1, e2) ->
      
      (* 1 - Dependendo da operacao queremos um registo diferente *)
      let rg = 
        match op with 
        | Bmod -> rdx
        | Bdiv -> rax
        | _ -> assert false
      in

      (* 2 - Colocar e1 e e2 na pilha*)  
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++

      (* 3 - Recebe os valores da pilha *)
      popq rbx ++
      popq rax ++
      
      (* 4 - Limpa o registo rdx *)
      movq (imm 0) (reg rdx) ++
      
      (* 5 - Verifica se estamos a dividir por zero *)
      cmpq (imm 0) (reg rbx) ++
      je "print_error_z" ++

      (* 6 - Realiza a operacao e coloca o resultado na pilha *)
      idivq (reg rbx) ++
      pushq (reg rg)

  | Ebinop (Badd | Bsub | Bmul as o , e1, e2) ->
      (* 1 - Dependendo da operacao queremos uma operacao diferente *)
      let op = match o with
        | Badd -> addq
        | Bsub -> subq
        | Bmul -> imulq
        | _ -> assert false
      in
      
      (* 2 - Colocar e1 e e2 na pilha*)  
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++

      (* 3 - Recebe os valores da pilha *)
      popq rbx ++
      popq rax ++
      
      (* 4 - Realiza a operacao e coloca o resultado na pilha *)
      op (reg rbx) (reg rax) ++
      pushq (reg rax)

  | Ebinop (Band | Bor as o, e1, e2) ->
      number_of_and_or := !number_of_and_or + 1;
      let current_and_or = string_of_int(!number_of_and_or) in
        
      (* 1 - Dependendo da operacao queremos uma operacao diferente *)
      let op, cmp_op = 
        match o with 
        | Band -> andq, jne
        | Bor  -> orq , je
        | _    -> assert false
      in

      (* 2 - Colocar e1 na pilha*)  
      compile_expr ctxs e1 ++
      popq rax ++
      
      (* 3 - Verificar se podemos terminar a expressao *)
      cmpq (imm64 1L) (reg rax) ++
      cmp_op ("lazy_evaluation_" ^ current_and_or) ++

      (* 4 - COlocar e2 no topo da pilha*)
      compile_expr ctxs e2 ++
      popq rax ++

      (* 5 - Realiza a operacao e coloca o resultado na pilha *)
      op  (imm64 1L) (reg rax) ++

      (* 6 - termina *)
      label ("lazy_evaluation_" ^ current_and_or) ++
      pushq (reg rax)


  | Ebinop (Beq | Bneq | Blt | Ble | Bgt | Bge as o, e1, e2) ->
      (* 1 - Dependendo da operacao queremos uma operacao diferente *)
      let op = match o with
        | Beq -> je
        | Bneq-> jne
        | Blt -> jl
        | Ble -> jle
        | Bgt -> jg
        | Bge -> jge
        | _ -> assert false
      in
    
      (* 2 - Incrementar numero de verificacoes *)
      number_of_bool_tests := !number_of_bool_tests + 1;
      let current_bool_test = string_of_int(!number_of_bool_tests) in
    
      (* 3 - Colocar e1 e e2 na pilha*)  
      compile_expr ctxs e1 ++
      compile_expr ctxs e2 ++

      (* 4 - Recebe os valores da pilha *)
      popq rbx ++
      popq rax ++

      (* 5 - Compara ambos os valores e faz o devido salto *)
      cmpq (reg rbx) (reg rax) ++
      op ("bool_true_" ^ current_bool_test) ++

      (* 6a - Se for falso *)
      movq (imm 0) (reg rax) ++
      pushq (reg rax) ++

      (* 7a - Termina *)
      jmp ("bool_end_" ^ current_bool_test) ++
      
      (* 6b - Se for verdade *)
      label ("bool_true_" ^ current_bool_test) ++
      movq (imm 1) (reg rax) ++
      pushq (reg rax) ++
      
      (* 7a - Termina *)
      label ("bool_end_" ^ current_bool_test)

  | Eunop (Unot, e1) ->
      (* 1 - Incrementar numero de verificacoes *)
      number_of_bool_tests := !number_of_bool_tests + 1;
      let current_bool_test = string_of_int(!number_of_bool_tests) in
  
      (* 2 - Colocar e1 na pilha *)  
      compile_expr ctxs e1 ++
      
      (* 3 - Recebe o valor de e1 *)  
      popq rax ++

      (* 4 - Verifica se e falso *)
      cmpq (imm64 0L) (reg rax) ++
      je ("bool_true_" ^ current_bool_test) ++
      
      (* 5a - Se a comparacao falhar entao retornamos 0 *)
      movq (imm64 0L) (reg rax) ++
      pushq (reg rax) ++
      
      (* 6a - Terminamos *)  
      jmp ("bool_end_" ^ current_bool_test) ++
      
      (* 5b - Se a comparacao acertar entao retornamos 1 *)
      label ("bool_true_" ^ current_bool_test) ++
      movq (imm64 1L) (reg rax) ++
      pushq (reg rax) ++

      (* 6b - Terminamos *)  
      label ("bool_end_" ^ current_bool_test)

  | Ecall ("size", [e1]) ->
      (* 1 - Colocar e1 na pilha *)  
      compile_expr ctxs e1 ++

      (* 2 - Como sabemos que e um conjunto, vamos buscar dois valores *)
      popq rax ++ (* Fim *)
      popq rbx ++ (* Inicio *)

      (* 3 - Calcula o tamanho *)
      subq (reg rbx) (reg rax) ++

      (* 4 - Termina *)
      pushq (reg rax)

  | Ecall (f, el) ->
      (* 1 - Vai buscar a funcao f *)
      let ctx, return = Hashtbl.find function_ctx f in
      
      (* 2 - Ref onde vai ficar o codigo dos argumentos *)
      let code = ref nop in
      
      for i = 0 to (List.length el) - 1 do
        (* 4.1 - Vai buscar os dados do argumento i *)
        let k, v = List.nth ctx i in
        let t, ofs = v in
        let ofs = - int_of_vint ofs in
        code := !code ++
          (* 4.2.1 - Vai buscar o valor da expressao no indice i *)  
          compile_expr ctxs (List.nth el i) ++
          popq rax ++

          (* 4.2.2 - *)
          movq (reg rax) (ind ~ofs rbp) ++
          is_in_type_boundaries ctxs (-ofs) t;
      done;
      (* Verificar se o retorno esta nos limites do tipo *)
      !code ++ 
      addq (imm64 1L) (lab "is_in_function") ++
      call ("user" ^ f) ++
      movq (reg rax) (reg rbx) ++
      is_rbx_in_type_boundaries ctxs return ++
      pushq (reg rbx)
  | _ -> error "Not implemented"

let get_type_size ctxs s = 
  match s with
  | Eset (e1, e2) ->
    compile_expr ctxs e1 ++
    popq rax ++ (* Fim *)
    popq rbx ++ (* Inicio *)
    subq (reg rbx) (reg rax) ++
    pushq (reg rax)
  | _ -> compile_expr ctxs s

let rec compile_stmt ctxs = function
  | Sif (e, s1, s2) ->
      (*1 - Incrementa o numero de ifs realizados ate ao momento *)
      number_of_ifs := !number_of_ifs + 1;
      let current_if_test = string_of_int(!number_of_ifs) in
    
      (* 2 - Calcular o valor da condicao *)
      compile_expr ctxs e ++
      popq rax ++

      (* 3 - Se vor diferente de entao e verdade *)
      cmpq (imm 0) (reg rax) ++
      jne ("if_true_" ^ current_if_test) ++

      (* 4a - Se for 0 executa o else*)
      compile_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s2 ++
      jmp ("if_end_" ^ current_if_test) ++

      (* 4b - Se for 1 executa o then *)
      label ("if_true_" ^ current_if_test) ++
      compile_stmt (ctxs@[(Hashtbl.create 17 : table_ctx)]) s1 ++
    
      (* 5 - Termina *)
      label ("if_end_" ^ current_if_test)

  | Sreturn (e1) ->
      
      movq (imm64 0L) (reg rax) ++
      cmpq (lab "is_in_function") (reg rax) ++
      je "print_error_f" ++
      subq (imm64 1L) (lab "is_in_function") ++
      
      (* 1 - Calcula o valor de e1*) 
      compile_expr ctxs e1 ++
      popq rax ++
      
      (* 2 - Retorna *)
      ret

  | Sdeclare (id, t ,e) ->
      (* 1 - Calcular o tamanho do frame *)
      let ofs = !frame_size in
      frame_size := 8 + !frame_size;
    
      let ctx = List.hd (List.rev ctxs) in
      let code =
        (* 2 - Calcular o valor da expressao  *)
        compile_expr ctxs e ++
        popq rax ++
      
        (* 3 - Guardar o valor da expressao na posicao ofs *)
        movq (reg rax) (ind ~ofs:(-ofs) rbp) ++
        is_in_type_boundaries ctxs ofs t 
      in

      (* 4 - Adiciona ao contexto atual *)
    Hashtbl.add ctx id (t, Vint ofs);
    code

  | Sdeclarearray (id, ida, e) ->
      (*
        1 - Verificar que o id ainda não foi usado
        2 - Verificar se o tipo existe
        3 - Ir buscar o valor da expressão, verificar se é um inteiro válido
        4 - Reservar n elementos
      *)
      (* 1 - Incrementar o numero de declaracoes de arrays *)
      number_of_arraydefs := !number_of_arraydefs + 1;
      let current_arraydefs = string_of_int(!number_of_arraydefs) in

      (* Calcular offset *)
      let ofs = !frame_size in
      frame_size := 16 + !frame_size;

      let code =
        label ("arraydef_" ^ current_arraydefs) ++
        popq rax ++ (* value  *)
        movq (reg rbx) (ind ~ofs:(-ofs) rbp) ++
        (* Verificar o valor *)
        popq rbx ++ (* size *)
        decq (reg rbx) ++
        pushq (reg rbx) ++
        cmpq (imm 0) (reg rbx) ++
        jl ("arraydef_" ^ current_arraydefs)
      in
      let ctx = List.hd (List.rev ctxs) in
      Hashtbl.add ctx (id ^ "_array0") (Int, Vlist(Vset(0, 3), Vset(0,1)));
      code
  | Sassign (id, e1)  ->
      (* 1 - Vai buscar o contexto em que o id esta declarado *)        
      let ctx = List.hd (List.rev (find_id ctxs id)) in

      (* 2 - Vai buscar o tipo e o ofs de id *)
      let t, ofs = Hashtbl.find ctx id in
      let ofs = int_of_vint ofs in

      (* 2 - Atualiza o valor que esta no endereço ofs*)
      compile_expr ctxs e1 ++
      popq rax ++
      movq (reg rax) (ind ~ofs:(-ofs) rbp) ++
      is_in_type_boundaries ctxs ofs t

  | Sarray (id, sz, t) -> 
      let ctx = List.hd (List.rev ctxs) in
      (*
        1 - Verificar que o id ainda não foi usado
        2 - Verificar se o tipo existe
        3 - Ir buscar o valor da expressão, verificar se é um conjunto
        
        ofs + 0  -> id_array_start
        ofs + 8  -> id_array_elements
        ofs + 16 -> id_array_t_inicio
        ofs + 32 -> id_array_t_fim  
      *)
      let size = get_type_size ctxs sz in
      let ofs = - !frame_size in
      frame_size := 32 + !frame_size;
      let code = 
        size ++
        (* Guardar o valor do size *)
        popq rax ++ 
        movq (imm 0) (ind ~ofs rbp) ++
        movq (reg rax) (ind ~ofs:(ofs - 8) rbp) ++       
        compile_expr ctxs t ++
        popq rax ++ (* fim *)
        popq rbx ++ (* inicio*)
        movq (reg rbx) (ind ~ofs:(ofs - 16) rbp) ++
  
        movq (reg rbx) (ind ~ofs:(ofs - 24) rbp)
      in
      Hashtbl.add ctx (id ^ "_array_start") (Int   , Vint(-(ofs)));
      Hashtbl.add ctx (id ^ "_array_elements") (Int, Vint(-(ofs + 8)));
      Hashtbl.add ctx (id ^ "_array_t_inicio") (Int, Vint(-(ofs + 16)));
      Hashtbl.add ctx (id ^ "_array_t_fim") (Int   , Vint(-(ofs + 24)));
      code
  | Sset (id, set) ->
      (* 1 - Vai buscar o contexto atual *)
      let ctx = List.hd (List.rev ctxs) in
      
      (* 2 - Reserva dois espaços de memoria para o conjunto e guarda o endereço mais baixo *)
      let ofs = !frame_size in
      frame_size := 16 + !frame_size;

      (* 3 - Guarda *)
      let code =
        compile_expr ctxs set ++
        popq rax ++
        popq rbx ++
        movq (reg rbx) (ind ~ofs:(-ofs) rbp) ++
        movq (reg rax) (ind ~ofs:(-(ofs + 8)) rbp)
      in

      (* 4 - Guarda o conjunto e os seus valores *)
      Hashtbl.add ctx id (Int, Vset(ofs, ofs + 8));
      code

  | Sprint e ->
      (* 1 - Vai buscar o valor de e *)
      compile_expr ctxs e ++

      (* 2 - Passa como parametro para a funcao print_int e chama-a*)
      popq rdi ++
      call "print_int"
  | Sprintn e ->
      (* 1 - Vai buscar o valor de e *)  
      compile_expr ctxs e ++
      
      (* 2 - Passa como parametro para a funcao printn_int e chama-a*)
      popq rdi ++
      call "printn_int"

  | Sscanf id ->
      (* 1 - Vai buscar o contexto em que o id esta declarado *)        
      let ctx = List.hd (List.rev (find_id ctxs id)) in

      (* 2 - Vai buscar o tipo e o ofs de id *)
      let t, ofs = Hashtbl.find ctx id in
      let ofs = int_of_vint ofs in

      pushq (reg rdx) ++
      leaq (lab ".Sscanf_int") rdi ++
	    leaq (ind ~ofs:(-ofs) rbp) rsi  ++
      xorq (reg rax) (reg rax) ++

	    call "scanf" ++
      movq (ind ~ofs:(-ofs) rbp) (reg rax)++
      popq rdx ++

      (* 3 - Atualiza o valor que esta no endereço ofs*)
      is_in_type_boundaries ctxs ofs t

  | Sblock bl -> 
      (* 1 - Compila um bloco de instrucoes *)
      let block = List.rev(compile_block_stmt ctxs bl) in
      List.fold_right (++) block nop

  | Sforeach(x, e, bl) ->
      (* 1 - Cria o contexto do foreach *)
      let ctxs = (ctxs@[(Hashtbl.create 17 : table_ctx)]) in

      (* 2 - Declara a variavel x*)
      let code = compile_stmt ctxs (Sdeclare(x, Int, Ecst 0L)) in
      frame_size := 8 + !frame_size;

      (* 3 - Vai buscar o contexto do foreach *)
      let ctx = List.hd (List.rev ctxs) in

      (* 4 - Guarda o offset da variavel i*)
      let ofs = - int_of_vint  (snd(Hashtbl.find ctx x)) in
      
      (* 4 - Incrementa o numero de fors existentes*)
      number_of_for := !number_of_for + 1;
      let foreach_index = string_of_int(!number_of_for) in
      
      (* 5 - Inicializacao do foreach *)
      let loop_initialize = 
        (* 5.1 - Acrescenta o codigo da declaracao do x *)
        code ++
        (* 5.2 - Vai buscar o valor de 3 *)
        compile_expr ctxs e ++

        (* 5.3 - Como tem que ser um conjunto retiramos dois valores *)
        popq rbx ++
        popq rax ++

        (* 5.4 - Atribuimos o valor inicial do conjunto ao x*)
        movq (reg rax) (ind ~ofs rbp) ++

        (* 5.5 - Guardamos o valor final no endereço seguinte ao do x *)
        movq (reg rbx) (ind ~ofs:(ofs - 8) rbp) ++

        (* 5.6 - Cria a label do foreach para os jumps*)
        label ("foreach_" ^ x ^ foreach_index)
      in

      (* 6 - Compila o corpo do foreach *)
      let body = compile_stmt ctxs bl in

      (* 7 - Compara o valor do x em relacao ao limite superior do foreach *)
      let for_verification = 
        (* 7.1 Incrementa o valor de x*)
        movq (ind ~ofs rbp) (reg rax) ++
        incq (reg rax) ++
        movq (reg rax) (ind ~ofs rbp) ++
        (* 7.2 Compara ao valor final *) 
        
        movq (ind ~ofs:(ofs - 8) rbp) (reg rbx) ++
        cmpq (reg rbx)  (reg rax) ++
        jle ("foreach_" ^ x ^ foreach_index)
      in
      
      (* 8 - Junta a inicializacao, o corpo e a verificacao *)
      loop_initialize ++ body ++ for_verification
  | _ -> error "COMPILE STMT"
        
and compile_block_stmt ctx = function
  | [] -> [nop]
  | s :: sl -> (compile_block_stmt ctx sl) @ [compile_stmt ctx s]
        
and compile_block_stmts ctx = function
  | [] -> [nop]
  | s::sl -> (compile_block_stmts ctx sl) @ [compile_stmts ctx s]
        
and compile_stmts ctxs = function  
  | Stfunction (f, args, return, body) -> 
      (* 1 - Cria o contexto do corpo da funcao *)
      let ctx = (Hashtbl.create 17 : table_ctx) in
      let ctx_list = ref [] in
      (* 2 - Declara os argumentos da função no contexto desta *)
      let rec translate_arguments = function
        | hd::tl ->

          let id, t = hd in
          let ofs = !frame_size in

          frame_size := 8 + !frame_size;
          Hashtbl.add ctx id (t, Vint ofs);
          
          ctx_list := !ctx_list@[(id, (t, Vint ofs))]; 

          movq (imm64 0L) (ind ~ofs:(-ofs) rbp) ++ 
          translate_arguments tl
        | _ -> nop
      in
      let arguments_code = translate_arguments args in
      let ctx_body = Hashtbl.copy ctx in
      functions_code := !functions_code ++
      label ("user" ^ f) ++
      compile_stmt (ctxs@[ctx_body]) body ++

      (* Se chegou aqui é porque não houve returns *)
      call "print_error_f" ++
      ret;

      Hashtbl.add function_ctx f (!ctx_list, return);
      arguments_code

  | Stblock bl -> 
      let block = List.rev(compile_block_stmts ctxs bl) in
      List.fold_right (++) block nop
  | Stmt s     -> compile_stmt ctxs s

(* Compilação do programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let ctxs = [(Hashtbl.create 17 : table_ctx)] in
  let code = compile_stmts ctxs p in
  functions_code := !functions_code; 
  let p =
    { text =
        globl "main" ++ label "main" ++
        subq (imm !frame_size) (reg rsp) ++ (* aloca a frame *)
        leaq (ind ~ofs:(!frame_size - 8) rsp) rbp ++ (* %rbp = ... *)
        code ++
        label "end" ++
        addq (imm !frame_size) (reg rsp) ++ (* desaloca a frame *)
        movq (imm64 0L) (reg rax) ++ (* exit *)
        ret ++
        label "printn_int" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprintn_int") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        ret ++
        label "print_int" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_int") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        ret ++
        label "print_error_t" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_error_t") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        label "print_error_s" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_error_s") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        label "print_error_z" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_error_z") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        label "print_error_f" ++
        movq (reg rdi) (reg rsi) ++
        leaq (lab ".Sprint_error_f") rdi ++
        movq (imm64 0L) (reg rax) ++
        call "printf" ++
        jmp "end" ++
        !functions_code;
      data = 
        label ".Sprintn_int" ++ string "%ld\n" ++
        label ".Sprint_int" ++ string "%ld" ++
        label ".Sprint_error_z" ++ string "\nErro: Divisao por zero.\n\n" ++
        label ".Sprint_error_t" ++ string "\nRun-time error:\n\n     Value out of bounds.\n\n" ++
        label ".Sprint_error_s" ++ string "\nRun-time error:\n\n     Invalid size of set. A set needs to have atleast the size of one.\n\n" ++
        label ".Sprint_error_f" ++ string "\nFuncao sem retorno\n\n" ++
        label ".Sscanf_int" ++ string "%ld" ++
        label "input"  ++ dquad [0] ++
        label "is_in_function" ++ dquad [0]
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  X86_64.print_program fmt p;
   (* "flush" do buffer para garantir que tudo foi para aí escrito antes de o fechar *)
  fprintf fmt "@?";
  close_out f
