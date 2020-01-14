
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAL
    | TYPE
    | TO
    | TIMES
    | SCANF
    | RSHIFT
    | RPR
    | RETURN
    | RBK
    | RBC
    | PRINTN
    | PRINT
    | PLUS
    | OR
    | OF
    | NOT
    | NEQ
    | MOD
    | MINUS
    | MININT
    | MAXINT
    | LT
    | LSHIFT
    | LPR
    | LET
    | LBK
    | LBC
    | INT
    | IN
    | IF
    | IDENT of (
# 11 "parser.mly"
       (Ast.ident)
# 42 "parser.ml"
  )
    | GT
    | GET
    | FUNCTION
    | FOREACH
    | FOR
    | FILLED
    | EQ
    | EOF
    | ELSE
    | DIV
    | DELIMITER
    | CST of (
# 10 "parser.mly"
       (int64)
# 58 "parser.ml"
  )
    | CONTINUE
    | COMMA
    | COLON
    | BY
    | BREAK
    | BITXOR
    | BITOR
    | BITNOT
    | BITAND
    | ASSIGN
    | ARRAY
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState185
  | MenhirState183
  | MenhirState180
  | MenhirState176
  | MenhirState174
  | MenhirState170
  | MenhirState168
  | MenhirState163
  | MenhirState153
  | MenhirState149
  | MenhirState145
  | MenhirState141
  | MenhirState134
  | MenhirState131
  | MenhirState129
  | MenhirState127
  | MenhirState125
  | MenhirState123
  | MenhirState120
  | MenhirState118
  | MenhirState116
  | MenhirState115
  | MenhirState112
  | MenhirState107
  | MenhirState102
  | MenhirState98
  | MenhirState94
  | MenhirState90
  | MenhirState87
  | MenhirState85
  | MenhirState82
  | MenhirState79
  | MenhirState74
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState60
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState12
  | MenhirState10
  | MenhirState7
  | MenhirState6
  | MenhirState3
  | MenhirState2
  | MenhirState0

# 6 "parser.mly"
  
  open Ast

# 157 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_COMMA_argument_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_list_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 144 "<standard.mly>"
    ( x )
# 174 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv726)) : 'freshtv728)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 191 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv730)) : 'freshtv732)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_list_stmt_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 213 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv660)) : 'freshtv662)
    | MenhirState176 | MenhirState68 | MenhirState115 | MenhirState163 | MenhirState120 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let _v : 'tv_suite = 
# 75 "parser.mly"
                 ( Sblock l )
# 228 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv719) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_suite) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState134 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((((('freshtv669 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv665 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv663 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)), _, (cond : 'tv_expr)), _, (incr : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _16 = () in
                let _14 = () in
                let _13 = () in
                let _11 = () in
                let _9 = () in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 84 "parser.mly"
                                                                                                              (Sfor(id, t, e, cond, incr, s))
# 262 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv664)) : 'freshtv666)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv667 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)
        | MenhirState120 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv677 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv673 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv671 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 82 "parser.mly"
                                                                  ( Sforeach(id, set, s) )
# 292 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv675 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
        | MenhirState115 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv693 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv689 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv683 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBC ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((('freshtv679 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BREAK ->
                            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | CONTINUE ->
                            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | FOR ->
                            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | FOREACH ->
                            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | IDENT _v ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
                        | IF ->
                            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | PRINT ->
                            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | PRINTN ->
                            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | RETURN ->
                            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | SCANF ->
                            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | TYPE ->
                            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | VAL ->
                            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | WHILE ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | RBC ->
                            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv680)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((('freshtv681 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv682)) : 'freshtv684)
                | BREAK | CONTINUE | EOF | FOR | FOREACH | FUNCTION | IDENT _ | IF | PRINT | PRINTN | RBC | RETURN | SCANF | TYPE | VAL | WHILE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv685 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_suite)) = _menhir_stack in
                    let _7 = () in
                    let _5 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_stmt = 
# 80 "parser.mly"
                                                                  ( Sif(e, s1, Sblock []) )
# 377 "parser.ml"
                     in
                    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv686)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv687 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv688)) : 'freshtv690)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv691 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv692)) : 'freshtv694)
        | MenhirState163 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv701 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv697 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv695 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_suite)), _, (s2 : 'tv_suite)) = _menhir_stack in
                let _11 = () in
                let _9 = () in
                let _8 = () in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 81 "parser.mly"
                                                                  ( Sif(e, s1, s2) )
# 418 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv696)) : 'freshtv698)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv699 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv700)) : 'freshtv702)
        | MenhirState68 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv709 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv705 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv703 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 83 "parser.mly"
                                                                  ( Swhile(e, s) )
# 449 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv704)) : 'freshtv706)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv707 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv708)) : 'freshtv710)
        | MenhirState176 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv717 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv713 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv711 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s), _, (f : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_argument_list__)), _, (r : 'tv_type_def)), _, (s : 'tv_suite)) = _menhir_stack in
                let _10 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmts = let x = 
# 232 "<standard.mly>"
    ( xs )
# 481 "parser.ml"
                 in
                
# 66 "parser.mly"
              ( Stfunction(f, x, r, s))
# 486 "parser.ml"
                 in
                _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv715 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)
        | _ ->
            _menhir_fail ()) : 'freshtv720)) : 'freshtv722)) : 'freshtv724)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | CONTINUE ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | FOR ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | FOREACH ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | FUNCTION ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | IF ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | PRINT ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | PRINTN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | RETURN ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | SCANF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | TYPE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | VAL ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv658)

and _menhir_goto_type_def : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_def -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv629 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv625 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv626)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv627 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv635 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv631 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv632)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv633 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv634)) : 'freshtv636)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv641 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv637 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | CONTINUE ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | FOR ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | FOREACH ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | PRINT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | PRINTN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | RETURN ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | SCANF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | TYPE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | VAL ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | RBC ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv638)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv639 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv640)) : 'freshtv642)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (t : 'tv_type_def)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_argument_list = 
# 71 "parser.mly"
                               ((id, t))
# 687 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv644)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 718 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv646)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv648)) : 'freshtv650)) : 'freshtv652)) : 'freshtv654)) : 'freshtv656)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_ = 
# 211 "<standard.mly>"
    ( [] )
# 741 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 760 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)) : 'freshtv620)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv623 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 777 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState176 | MenhirState68 | MenhirState115 | MenhirState163 | MenhirState120 | MenhirState141 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | CONTINUE ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | FOR ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | FOREACH ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | IF ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | PRINT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | PRINTN ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | RETURN ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | SCANF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | TYPE ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | VAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | RBC ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv612)
    | MenhirState0 | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (s : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_stmts = 
# 67 "parser.mly"
              ( Stmt s )
# 1302 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv614)) : 'freshtv616)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmts_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmts_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmts)), _, (xs : 'tv_list_stmts_)) = _menhir_stack in
        let _v : 'tv_list_stmts_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1321 "parser.ml"
         in
        _menhir_goto_list_stmts_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)) : 'freshtv596)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (b : 'tv_list_stmts_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 56 "parser.mly"
      (Ast.program)
# 1340 "parser.ml"
            ) = 
# 61 "parser.mly"
                      ( Stblock b )
# 1344 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv601) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "parser.mly"
      (Ast.program)
# 1352 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "parser.mly"
      (Ast.program)
# 1360 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 56 "parser.mly"
      (Ast.program)
# 1368 "parser.ml"
            )) : (
# 56 "parser.mly"
      (Ast.program)
# 1372 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv598)) : 'freshtv600)) : 'freshtv602)) : 'freshtv604)) : 'freshtv606)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_argument_list__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv591 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv587 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv583 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState174
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv584)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv585 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)) : 'freshtv588)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv589 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)

and _menhir_reduce66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_type_def = 
# 105 "parser.mly"
                ( CTid id )
# 1434 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_type_def = 
# 104 "parser.mly"
                ( Int )
# 1448 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv286)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1531 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 129 "parser.mly"
        ( Bmul )
# 1551 "parser.ml"
         in
        
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1556 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | NEQ | OF | OR | RBK | RPR | RSHIFT | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 144 "parser.mly"
        ( Bitrs )
# 1583 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1588 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 127 "parser.mly"
        ( Badd )
# 1618 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1623 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 131 "parser.mly"
        ( Bmod )
# 1643 "parser.ml"
         in
        
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1648 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)) : 'freshtv312)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 130 "parser.mly"
        ( Bdiv )
# 1661 "parser.ml"
         in
        
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1666 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 128 "parser.mly"
        ( Bsub )
# 1689 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1694 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 139 "parser.mly"
        ( Bor  )
# 1752 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1757 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | LBC | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 133 "parser.mly"
        ( Bneq )
# 1803 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1808 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 135 "parser.mly"
        ( Blt )
# 1846 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1851 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | NEQ | OF | OR | RBK | RPR | RSHIFT | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 143 "parser.mly"
        ( Bitls )
# 1885 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1890 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 137 "parser.mly"
        ( Ble )
# 1928 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1933 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 134 "parser.mly"
        ( Bgt )
# 1971 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1976 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 136 "parser.mly"
        ( Bge )
# 2014 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2019 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | EQ | LBC | NEQ | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 132 "parser.mly"
        ( Beq )
# 2065 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2070 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITOR | BITXOR | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 142 "parser.mly"
        ( Bitxor )
# 2122 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2127 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 140 "parser.mly"
        ( Bitand )
# 2177 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2182 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITOR | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 141 "parser.mly"
        ( Bitor )
# 2236 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2241 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 138 "parser.mly"
        ( Band )
# 2297 "parser.ml"
             in
            
# 116 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2302 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 114 "parser.mly"
                                    ( Eget (id, e2))
# 2362 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 123 "parser.mly"
         (Ubitnot)
# 2386 "parser.ml"
         in
        
# 115 "parser.mly"
                                    ( Eunop (u, e1))
# 2391 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv419 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv415 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv413 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 113 "parser.mly"
                                    ( Eset(e1, e2))
# 2520 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv417 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 118 "parser.mly"
                                    ( e )
# 2584 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 122 "parser.mly"
         (Unot)
# 2608 "parser.ml"
         in
        
# 115 "parser.mly"
                                    ( Eunop (u, e1))
# 2613 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv441 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv433 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | CONTINUE ->
                    _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | FOR ->
                    _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | FOREACH ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
                | IF ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | PRINT ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | PRINTN ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | RETURN ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | SCANF ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | TYPE ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | VAL ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | RBC ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv434)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv435 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv449 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv445 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv443 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 91 "parser.mly"
                                                   ( Sdeclare (id, t ,e) )
# 2744 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)) : 'freshtv446)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv447 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv457 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv453 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv451 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 92 "parser.mly"
                                                      ( Sdeclarearray (id, t ,e) )
# 2811 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)) : 'freshtv454)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv455 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv463 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv459 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv460)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv461 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv471 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv467 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv465 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (size : 'tv_expr)), _, (t : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 94 "parser.mly"
                                                          ( Sarray (id, size, t) )
# 2953 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv469 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv479 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv475 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv473 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 93 "parser.mly"
                                                   ( Sset (id, set) )
# 3018 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv477 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv483 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 88 "parser.mly"
                                                   ( Sreturn e )
# 3082 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv485 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv495 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv491 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv489 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 98 "parser.mly"
                                                   ( Sprintn e )
# 3178 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)) : 'freshtv492)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv493 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv497 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv511 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv507 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv503 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv501 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 97 "parser.mly"
                                                   ( Sprint e )
# 3257 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv505 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv509 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv521 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv513 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | CONTINUE ->
                    _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | FOR ->
                    _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | FOREACH ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
                | IF ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | PRINT ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | PRINTN ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | RETURN ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | SCANF ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | TYPE ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | VAL ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | RBC ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv514)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv515 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv527 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv523 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | CONTINUE ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | FOR ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | FOREACH ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | PRINT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | PRINTN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | RETURN ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | SCANF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TYPE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | VAL ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | RBC ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv524)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv525 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv533 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv529 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv530)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv531 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv539 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv535 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv536)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv537 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv549 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv545 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv541 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | CONTINUE ->
                    _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | FOR ->
                    _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | FOREACH ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | IF ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | PRINT ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | PRINTN ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | RETURN ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | SCANF ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | TYPE ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | VAL ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | RBC ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv542)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv543 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv547 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)) : 'freshtv550)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv555 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv551 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BITNOT ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | CST _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
                    | LBK ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | LPR ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | MAXINT ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | MININT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | NOT ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv552)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv553 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv557 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv571 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv567 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv565 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 96 "parser.mly"
                                                   ( Saset (id, e2, e3) )
# 3845 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv569 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv579 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv575 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv573 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 95 "parser.mly"
                                                   ( Sassign (id, e) )
# 3910 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
        | DIV ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv577 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = let l = 
# 232 "<standard.mly>"
    ( xs )
# 3971 "parser.ml"
         in
        
# 117 "parser.mly"
                                                    (Ecall(id, l))
# 3976 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 111 "parser.mly"
                                    ( Eminint )
# 4024 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 110 "parser.mly"
                                    ( Emaxint )
# 4038 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int64)
# 4099 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 10 "parser.mly"
       (int64)
# 4109 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int64)
# 4113 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 109 "parser.mly"
                                    ( Ecst c )
# 4118 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_goto_simple_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_simple_stmt) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : 'tv_simple_stmt) : 'tv_simple_stmt) = _v in
    ((let _v : 'tv_stmt = 
# 79 "parser.mly"
                                                                  ( s )
# 4162 "parser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv145 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv147 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv157 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv163 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv165 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv167 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv169 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv171 * _menhir_state))) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv175 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv181 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv195 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv201 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv203 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv209 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv266)

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmts_ = 
# 211 "<standard.mly>"
    ( [] )
# 4494 "parser.ml"
     in
    _menhir_goto_list_stmts_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv136)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv128)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv124)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv120)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (Ast.ident)
# 4740 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 11 "parser.mly"
       (Ast.ident)
# 4750 "parser.ml"
    )) : (
# 11 "parser.mly"
       (Ast.ident)
# 4754 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 148 "parser.mly"
             ( id )
# 4759 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv115) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState153 | MenhirState149 | MenhirState145 | MenhirState131 | MenhirState129 | MenhirState127 | MenhirState118 | MenhirState112 | MenhirState107 | MenhirState102 | MenhirState98 | MenhirState90 | MenhirState87 | MenhirState85 | MenhirState79 | MenhirState74 | MenhirState2 | MenhirState3 | MenhirState6 | MenhirState60 | MenhirState7 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState21 | MenhirState19 | MenhirState17 | MenhirState12 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv23 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv24)
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | RPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState12 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 4828 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv28)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | DIV | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | MOD | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TIMES | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_expr = 
# 112 "parser.mly"
                                    ( Eident id )
# 4842 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv49 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv45 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv41 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv42)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv43 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
        | ASSIGN ->
            _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv47 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv52)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv54)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv69 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv65 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv63 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (id : 'tv_ident)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 99 "parser.mly"
                                                   ( Sscanf id )
# 5037 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)) : 'freshtv66)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv67 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv71 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv81 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv83 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | MenhirState0 | MenhirState185 | MenhirState176 | MenhirState68 | MenhirState115 | MenhirState163 | MenhirState120 | MenhirState134 | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSIGN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState153
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv88)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState180 | MenhirState174 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) : 'freshtv100)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv103 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | RPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState170 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 142 "<standard.mly>"
    ( [] )
# 5223 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState183 | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState180
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)) : 'freshtv116)) : 'freshtv118)

and _menhir_run168 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run135 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DELIMITER ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_simple_stmt = 
# 90 "parser.mly"
                                                   ( Scontinue )
# 5348 "parser.ml"
         in
        _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run137 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DELIMITER ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_simple_stmt = 
# 89 "parser.mly"
                                                   ( Sbreak )
# 5377 "parser.ml"
         in
        _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 56 "parser.mly"
      (Ast.program)
# 5403 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CONTINUE ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOR ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOREACH ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINT ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINTN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SCANF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAL ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 5460 "parser.ml"
