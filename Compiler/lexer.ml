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
      ("while", WHILE);
      ("for", FOR);
      ("in", IN);
      ("type", TYPE);
      ("array", ARRAY);
      ("of", OF);
      ("filled", FILLED);
      ("by", BY);
      ("print", PRINT);
      ("printn",PRINTN);
      ("scanf", SCANF);
      ("function", FUNCTION);
      ("return", RETURN);
      ("maxint", MAXINT);
      ("minint", MININT)
    ]

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }

# 47 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\217\255\218\255\079\000\154\000\221\255\017\000\223\255\
    \224\255\226\255\003\000\076\000\079\000\237\255\017\000\001\000\
    \240\255\242\255\243\255\244\255\245\255\246\255\247\255\248\255\
    \249\255\031\000\252\255\253\255\054\000\095\000\255\255\254\255\
    \230\255\227\255\228\255\233\255\236\255\231\255\235\255\229\255\
    \222\255\001\000\253\255\254\255\255\255\133\000\252\255\253\255\
    \254\255\129\000\255\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\036\000\035\000\255\255\038\000\255\255\
    \255\255\255\255\030\000\023\000\021\000\255\255\017\000\016\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\004\000\255\255\255\255\005\000\014\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\003\000\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\255\255\255\255\000\000\255\255\000\000\
    \000\000\000\000\255\255\255\255\255\255\000\000\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\000\000\000\000\255\255\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\042\000\000\000\000\000\000\000\046\000\000\000\000\000\
    \000\000\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\026\000\027\000\044\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \026\000\010\000\000\000\000\000\000\000\016\000\015\000\033\000\
    \028\000\024\000\017\000\019\000\005\000\018\000\006\000\029\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\008\000\007\000\012\000\025\000\011\000\040\000\
    \039\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\023\000\032\000\022\000\013\000\003\000\
    \031\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\021\000\014\000\020\000\009\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\037\000\038\000\036\000\035\000\034\000\030\000\047\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\050\000\000\000\000\000\000\000\003\000\049\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\043\000\000\000\000\000\000\000\000\000\000\000\000\000\
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
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\048\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\041\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\000\000\000\000\015\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
    \010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\025\000\000\000\000\000\000\000\
    \028\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\011\000\011\000\012\000\012\000\014\000\029\000\045\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\049\000\255\255\255\255\255\255\003\000\045\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\041\000\255\255\255\255\255\255\255\255\255\255\255\255\
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
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\045\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
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
# 54 "lexer.mll"
                    ( singlecomment lexbuf)
# 200 "lexer.ml"

  | 1 ->
# 55 "lexer.mll"
                    ( multicomment lexbuf )
# 205 "lexer.ml"

  | 2 ->
# 56 "lexer.mll"
                    ( new_line lexbuf; analisador lexbuf)
# 210 "lexer.ml"

  | 3 ->
# 57 "lexer.mll"
                    ( analisador lexbuf)
# 215 "lexer.ml"

  | 4 ->
# 58 "lexer.mll"
                    ( [ASSIGN] )
# 220 "lexer.ml"

  | 5 ->
# 59 "lexer.mll"
                    ( [LPR] )
# 225 "lexer.ml"

  | 6 ->
# 60 "lexer.mll"
                    ( [RPR] )
# 230 "lexer.ml"

  | 7 ->
# 61 "lexer.mll"
                    ( [LBK] )
# 235 "lexer.ml"

  | 8 ->
# 62 "lexer.mll"
                    ( [RBK] )
# 240 "lexer.ml"

  | 9 ->
# 63 "lexer.mll"
                    ( [LBC] )
# 245 "lexer.ml"

  | 10 ->
# 64 "lexer.mll"
                    ( [RBC] )
# 250 "lexer.ml"

  | 11 ->
# 65 "lexer.mll"
                    ( [PLUS] )
# 255 "lexer.ml"

  | 12 ->
# 66 "lexer.mll"
                    ( [MINUS] )
# 260 "lexer.ml"

  | 13 ->
# 67 "lexer.mll"
                    ( [TIMES] )
# 265 "lexer.ml"

  | 14 ->
# 68 "lexer.mll"
                    ( [DIV] )
# 270 "lexer.ml"

  | 15 ->
# 69 "lexer.mll"
                    ( [MOD] )
# 275 "lexer.ml"

  | 16 ->
# 70 "lexer.mll"
                    ( [BITAND] )
# 280 "lexer.ml"

  | 17 ->
# 71 "lexer.mll"
                    ( [BITOR] )
# 285 "lexer.ml"

  | 18 ->
# 72 "lexer.mll"
                    ( [BITXOR] )
# 290 "lexer.ml"

  | 19 ->
# 73 "lexer.mll"
                    ( [LSHIFT] )
# 295 "lexer.ml"

  | 20 ->
# 74 "lexer.mll"
                    ( [RSHIFT] )
# 300 "lexer.ml"

  | 21 ->
# 75 "lexer.mll"
                    ( [LT] )
# 305 "lexer.ml"

  | 22 ->
# 76 "lexer.mll"
                    ( [LET] )
# 310 "lexer.ml"

  | 23 ->
# 77 "lexer.mll"
                    ( [GT] )
# 315 "lexer.ml"

  | 24 ->
# 78 "lexer.mll"
                    ( [GET] )
# 320 "lexer.ml"

  | 25 ->
# 79 "lexer.mll"
                    ( [EQ] )
# 325 "lexer.ml"

  | 26 ->
# 80 "lexer.mll"
                    ( [NEQ] )
# 330 "lexer.ml"

  | 27 ->
# 81 "lexer.mll"
                    ( [OR] )
# 335 "lexer.ml"

  | 28 ->
# 82 "lexer.mll"
                    ( [AND] )
# 340 "lexer.ml"

  | 29 ->
# 83 "lexer.mll"
                    ( [BITNOT] )
# 345 "lexer.ml"

  | 30 ->
# 84 "lexer.mll"
                    ( [NOT] )
# 350 "lexer.ml"

  | 31 ->
# 85 "lexer.mll"
                    ( [COLON] )
# 355 "lexer.ml"

  | 32 ->
# 86 "lexer.mll"
                    ( [DELIMITER] )
# 360 "lexer.ml"

  | 33 ->
# 87 "lexer.mll"
                    ( [TO] )
# 365 "lexer.ml"

  | 34 ->
# 88 "lexer.mll"
                    ( [COMMA] )
# 370 "lexer.ml"

  | 35 ->
let
# 89 "lexer.mll"
               snum
# 376 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 90 "lexer.mll"
    ( 
      try
        [CST (Int64.of_string snum)]
      with _ -> raise (Lexing_error ("The constant is too big : " ^ snum)) )
# 383 "lexer.ml"

  | 36 ->
let
# 94 "lexer.mll"
          word
# 389 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 95 "lexer.mll"
  ( try
      let token = Hashtbl.find keyword_table word in  
      [token]
    with Not_found -> [IDENT word]
  )
# 397 "lexer.ml"

  | 37 ->
# 100 "lexer.mll"
              ( [EOF] )
# 402 "lexer.ml"

  | 38 ->
let
# 101 "lexer.mll"
         c
# 408 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 101 "lexer.mll"
              ( raise (Lexing_error (Char.escaped c)) )
# 412 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_analisador_rec lexbuf __ocaml_lex_state

and singlecomment lexbuf =
   __ocaml_lex_singlecomment_rec lexbuf 41
and __ocaml_lex_singlecomment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 104 "lexer.mll"
              ( newline lexbuf; analisador lexbuf)
# 424 "lexer.ml"

  | 1 ->
# 105 "lexer.mll"
              ( [EOF])
# 429 "lexer.ml"

  | 2 ->
# 106 "lexer.mll"
              ( singlecomment lexbuf)
# 434 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_singlecomment_rec lexbuf __ocaml_lex_state

and multicomment lexbuf =
   __ocaml_lex_multicomment_rec lexbuf 45
and __ocaml_lex_multicomment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 109 "lexer.mll"
              ( analisador lexbuf)
# 446 "lexer.ml"

  | 1 ->
# 110 "lexer.mll"
              ( raise (Lexing_error "comentario nao fechado"))
# 451 "lexer.ml"

  | 2 ->
# 111 "lexer.mll"
              (new_line lexbuf; multicomment lexbuf)
# 456 "lexer.ml"

  | 3 ->
# 112 "lexer.mll"
              ( multicomment lexbuf)
# 461 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_multicomment_rec lexbuf __ocaml_lex_state

;;

# 114 "lexer.mll"
 
  let next_token =
    let tokens = Queue.create () in
    fun lb ->
      if Queue.is_empty tokens then 
      begin
        let l = analisador lb in
        List.iter (fun t -> Queue.add t tokens) l
      end;
      Queue.pop tokens

# 480 "lexer.ml"
