# 1 "lexer.mll"
 
  open Lexing
  open Ast
  open Parser
  open Int64

  exception Lexing_error of string

  let create_hashtable size init =
    let tbl = Hashtbl.create size in
    List.iter (fun (key, data) -> Hashtbl.add tbl key data) init;
    tbl
  
  let keyword_table =
    create_hashtable 32
    [
      ("val", VAL);
      ("int", INT);
      ("if", IF);
      ("else", ELSE);
      ("foreach", FOREACH);
      ("in", IN);
      ("type", TYPE);
      ("array", ARRAY);
      ("of", OF);
      ("filled", FILLED);
      ("by", BY);
      ("print", PRINT);
      ("printn",PRINTN);
      ("function", FUNCTION);
      ("return", RETURN);
      ("maxint", MAXINT);
      ("minint", MININT)
    ]

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }

# 43 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\223\255\224\255\078\000\153\000\227\255\017\000\229\255\
    \230\255\001\000\012\000\003\000\031\000\033\000\240\255\242\255\
    \243\255\244\255\245\255\246\255\247\255\248\255\249\255\035\000\
    \252\255\253\255\095\000\091\000\255\255\254\255\235\255\238\255\
    \236\255\234\255\233\255\232\255\228\255\001\000\253\255\254\255\
    \255\255\097\000\253\255\254\255\099\000\255\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\030\000\029\000\255\255\032\000\255\255\
    \255\255\032\000\032\000\024\000\018\000\016\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\004\000\
    \255\255\255\255\005\000\014\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\002\000\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\255\255\255\255\000\000\255\255\000\000\
    \000\000\255\255\255\255\255\255\255\255\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \000\000\000\000\255\255\255\255\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\038\000\000\000\000\000\
    \000\000\042\000\000\000\000\000\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\024\000\025\000\040\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \024\000\011\000\000\000\000\000\000\000\014\000\009\000\035\000\
    \026\000\022\000\015\000\017\000\005\000\016\000\006\000\027\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\008\000\007\000\013\000\023\000\012\000\036\000\
    \033\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\021\000\032\000\020\000\031\000\003\000\
    \030\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\019\000\010\000\018\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \034\000\029\000\028\000\044\000\045\000\000\000\000\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\000\000\000\000\000\000\000\000\003\000\000\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\039\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\043\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\037\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\000\000\000\000\009\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
    \011\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\012\000\000\000\013\000\000\000\
    \023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \010\000\026\000\027\000\041\000\044\000\255\255\255\255\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\255\255\255\255\255\255\255\255\003\000\255\255\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\037\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\041\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec analisador lexbuf =
   __ocaml_lex_analisador_rec lexbuf 0
and __ocaml_lex_analisador_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 50 "lexer.mll"
                    ( singlecomment lexbuf)
# 193 "lexer.ml"

  | 1 ->
# 51 "lexer.mll"
                    ( multicomment lexbuf )
# 198 "lexer.ml"

  | 2 ->
# 52 "lexer.mll"
                    ( analisador lexbuf)
# 203 "lexer.ml"

  | 3 ->
# 53 "lexer.mll"
                    ( analisador lexbuf)
# 208 "lexer.ml"

  | 4 ->
# 54 "lexer.mll"
                    ( [ASSIGN] )
# 213 "lexer.ml"

  | 5 ->
# 55 "lexer.mll"
                    ( [LPR] )
# 218 "lexer.ml"

  | 6 ->
# 56 "lexer.mll"
                    ( [RPR] )
# 223 "lexer.ml"

  | 7 ->
# 57 "lexer.mll"
                    ( [LBK] )
# 228 "lexer.ml"

  | 8 ->
# 58 "lexer.mll"
                    ( [RBK] )
# 233 "lexer.ml"

  | 9 ->
# 59 "lexer.mll"
                    ( [LBC] )
# 238 "lexer.ml"

  | 10 ->
# 60 "lexer.mll"
                    ( [RBC] )
# 243 "lexer.ml"

  | 11 ->
# 61 "lexer.mll"
                    ( [PLUS] )
# 248 "lexer.ml"

  | 12 ->
# 62 "lexer.mll"
                    ( [MINUS] )
# 253 "lexer.ml"

  | 13 ->
# 63 "lexer.mll"
                    ( [TIMES] )
# 258 "lexer.ml"

  | 14 ->
# 64 "lexer.mll"
                    ( [DIV] )
# 263 "lexer.ml"

  | 15 ->
# 65 "lexer.mll"
                    ( [MOD] )
# 268 "lexer.ml"

  | 16 ->
# 66 "lexer.mll"
                    ( [CMP Blt] )
# 273 "lexer.ml"

  | 17 ->
# 67 "lexer.mll"
                    ( [CMP Ble] )
# 278 "lexer.ml"

  | 18 ->
# 68 "lexer.mll"
                    ( [CMP Bgt] )
# 283 "lexer.ml"

  | 19 ->
# 69 "lexer.mll"
                    ( [CMP Bge] )
# 288 "lexer.ml"

  | 20 ->
# 70 "lexer.mll"
                    ( [CMP Beq] )
# 293 "lexer.ml"

  | 21 ->
# 71 "lexer.mll"
                    ( [CMP Bneq] )
# 298 "lexer.ml"

  | 22 ->
# 72 "lexer.mll"
                    ( [OR] )
# 303 "lexer.ml"

  | 23 ->
# 73 "lexer.mll"
                    ( [AND] )
# 308 "lexer.ml"

  | 24 ->
# 74 "lexer.mll"
                    ( [NOT] )
# 313 "lexer.ml"

  | 25 ->
# 75 "lexer.mll"
                    ( [COLON] )
# 318 "lexer.ml"

  | 26 ->
# 76 "lexer.mll"
                    ( [DELIMITER] )
# 323 "lexer.ml"

  | 27 ->
# 77 "lexer.mll"
                    ( [TO] )
# 328 "lexer.ml"

  | 28 ->
# 78 "lexer.mll"
                    ( [COMMA] )
# 333 "lexer.ml"

  | 29 ->
let
# 79 "lexer.mll"
               snum
# 339 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 80 "lexer.mll"
    ( 
      try
        [CST (Int64.of_string snum)]
      with _ -> raise (Lexing_error ("The constant is too big : " ^ snum)) )
# 346 "lexer.ml"

  | 30 ->
let
# 84 "lexer.mll"
          word
# 352 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 85 "lexer.mll"
  ( try
      let token = Hashtbl.find keyword_table word in  
      [token]
    with Not_found -> [IDENT word]
  )
# 360 "lexer.ml"

  | 31 ->
# 90 "lexer.mll"
              ( [EOF] )
# 365 "lexer.ml"

  | 32 ->
let
# 91 "lexer.mll"
         c
# 371 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 91 "lexer.mll"
              ( raise (Lexing_error (Char.escaped c)) )
# 375 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_analisador_rec lexbuf __ocaml_lex_state

and singlecomment lexbuf =
   __ocaml_lex_singlecomment_rec lexbuf 37
and __ocaml_lex_singlecomment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 94 "lexer.mll"
              ( newline lexbuf; analisador lexbuf)
# 387 "lexer.ml"

  | 1 ->
# 95 "lexer.mll"
              ( [EOF])
# 392 "lexer.ml"

  | 2 ->
# 96 "lexer.mll"
              ( singlecomment lexbuf)
# 397 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_singlecomment_rec lexbuf __ocaml_lex_state

and multicomment lexbuf =
   __ocaml_lex_multicomment_rec lexbuf 41
and __ocaml_lex_multicomment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 99 "lexer.mll"
              ( analisador lexbuf)
# 409 "lexer.ml"

  | 1 ->
# 100 "lexer.mll"
              ( raise (Lexing_error "comentario nao fechado"))
# 414 "lexer.ml"

  | 2 ->
# 101 "lexer.mll"
              ( multicomment lexbuf)
# 419 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_multicomment_rec lexbuf __ocaml_lex_state

;;

# 103 "lexer.mll"
 
  let next_token =
    let tokens = Queue.create () in
    fun lb ->
      if Queue.is_empty tokens then 
      begin
        let l = analisador lb in
        List.iter (fun t -> Queue.add t tokens) l
      end;
      Queue.pop tokens

# 438 "lexer.ml"
