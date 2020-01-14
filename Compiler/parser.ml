
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
    | COMMA
    | COLON
    | BY
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
  | MenhirState181
  | MenhirState179
  | MenhirState176
  | MenhirState172
  | MenhirState170
  | MenhirState166
  | MenhirState164
  | MenhirState159
  | MenhirState149
  | MenhirState145
  | MenhirState141
  | MenhirState137
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

# 155 "parser.ml"

let rec _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOR ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | FOREACH ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | FUNCTION ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IF ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | PRINT ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | PRINTN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | RETURN ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | SCANF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | TYPE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | VAL ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv720)

and _menhir_goto_separated_nonempty_list_COMMA_argument_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_list_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv711) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 144 "<standard.mly>"
    ( x )
# 211 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv717 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv715 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 228 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv716)) : 'freshtv718)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_list_stmt_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 250 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv646)) : 'freshtv648)
    | MenhirState172 | MenhirState68 | MenhirState115 | MenhirState159 | MenhirState120 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv709) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let _v : 'tv_suite = 
# 74 "parser.mly"
                 ( Sblock l )
# 265 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_suite) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState134 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((((('freshtv655 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv651 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv649 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 83 "parser.mly"
                                                                                                              (Sfor(id, t, e, cond, incr, s))
# 299 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv650)) : 'freshtv652)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv653 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)
        | MenhirState120 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv663 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv659 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv657 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 81 "parser.mly"
                                                                  ( Sforeach(id, set, s) )
# 329 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv661 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
        | MenhirState115 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv679 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv675 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv669 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBC ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((('freshtv665 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | FOR ->
                            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | FOREACH ->
                            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | IDENT _v ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                        | IF ->
                            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | PRINT ->
                            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | PRINTN ->
                            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | RETURN ->
                            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | SCANF ->
                            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | TYPE ->
                            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | VAL ->
                            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | WHILE ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | RBC ->
                            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv666)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((('freshtv667 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)
                | EOF | FOR | FOREACH | FUNCTION | IDENT _ | IF | PRINT | PRINTN | RBC | RETURN | SCANF | TYPE | VAL | WHILE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv671 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_suite)) = _menhir_stack in
                    let _7 = () in
                    let _5 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_stmt = 
# 79 "parser.mly"
                                                                  ( Sif(e, s1, Sblock []) )
# 410 "parser.ml"
                     in
                    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv673 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv674)) : 'freshtv676)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv677 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv678)) : 'freshtv680)
        | MenhirState159 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv687 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv683 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv681 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 80 "parser.mly"
                                                                  ( Sif(e, s1, s2) )
# 451 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv685 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
        | MenhirState68 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv695 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv691 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv689 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 82 "parser.mly"
                                                                  ( Swhile(e, s) )
# 482 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv693 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv694)) : 'freshtv696)
        | MenhirState172 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv703 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv699 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv697 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 514 "parser.ml"
                 in
                
# 65 "parser.mly"
              ( Stfunction(f, x, r, s))
# 519 "parser.ml"
                 in
                _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv701 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv702)) : 'freshtv704)
        | _ ->
            _menhir_fail ()) : 'freshtv706)) : 'freshtv708)) : 'freshtv710)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState172 | MenhirState68 | MenhirState115 | MenhirState159 | MenhirState120 | MenhirState137 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | FOREACH ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | IF ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | PRINT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | PRINTN ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | RETURN ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | SCANF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | TYPE ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | VAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | RBC ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv640)
    | MenhirState0 | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (s : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_stmts = 
# 66 "parser.mly"
              ( Stmt s )
# 581 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_def : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_def -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv611 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv607 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv608)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv609 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv610)) : 'freshtv612)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv617 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv613 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv614)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv615 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv616)) : 'freshtv618)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv623 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv619 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FOR ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | FOREACH ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | PRINT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | PRINTN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | RETURN ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | SCANF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | TYPE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | VAL ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | RBC ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv620)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv621 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv622)) : 'freshtv624)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (t : 'tv_type_def)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_argument_list = 
# 70 "parser.mly"
                               ((id, t))
# 726 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv633) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv626)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 757 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)) : 'freshtv634)) : 'freshtv636)) : 'freshtv638)
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
# 780 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 799 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)) : 'freshtv602)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv603 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 816 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)) : 'freshtv606)
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

and _menhir_goto_list_stmts_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmts_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv581 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmts)), _, (xs : 'tv_list_stmts_)) = _menhir_stack in
        let _v : 'tv_list_stmts_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1303 "parser.ml"
         in
        _menhir_goto_list_stmts_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (b : 'tv_list_stmts_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 55 "parser.mly"
      (Ast.program)
# 1322 "parser.ml"
            ) = 
# 60 "parser.mly"
                      ( Stblock b )
# 1326 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv589) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 55 "parser.mly"
      (Ast.program)
# 1334 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 55 "parser.mly"
      (Ast.program)
# 1342 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 55 "parser.mly"
      (Ast.program)
# 1350 "parser.ml"
            )) : (
# 55 "parser.mly"
      (Ast.program)
# 1354 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv586)) : 'freshtv588)) : 'freshtv590)) : 'freshtv592)) : 'freshtv594)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_argument_list__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv579 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv575 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv571 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv572)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv573 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv574)) : 'freshtv576)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv577 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)

and _menhir_goto_simple_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_simple_stmt) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : 'tv_simple_stmt) : 'tv_simple_stmt) = _v in
    ((let _v : 'tv_stmt = 
# 78 "parser.mly"
                                                                  ( s )
# 1423 "parser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)) : 'freshtv570)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_type_def = 
# 102 "parser.mly"
                ( CTid id )
# 1433 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_type_def = 
# 101 "parser.mly"
                ( Int )
# 1447 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv270)
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
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1530 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 126 "parser.mly"
        ( Bmul )
# 1550 "parser.ml"
         in
        
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1555 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 141 "parser.mly"
        ( Bitrs )
# 1582 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1587 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 124 "parser.mly"
        ( Badd )
# 1617 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1622 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 128 "parser.mly"
        ( Bmod )
# 1642 "parser.ml"
         in
        
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1647 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 127 "parser.mly"
        ( Bdiv )
# 1660 "parser.ml"
         in
        
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1665 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 125 "parser.mly"
        ( Bsub )
# 1688 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1693 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 136 "parser.mly"
        ( Bor  )
# 1751 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1756 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 130 "parser.mly"
        ( Bneq )
# 1802 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1807 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 132 "parser.mly"
        ( Blt )
# 1845 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1850 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 140 "parser.mly"
        ( Bitls )
# 1884 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1889 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 134 "parser.mly"
        ( Ble )
# 1927 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1932 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 131 "parser.mly"
        ( Bgt )
# 1970 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1975 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 133 "parser.mly"
        ( Bge )
# 2013 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2018 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 129 "parser.mly"
        ( Beq )
# 2064 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2069 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 139 "parser.mly"
        ( Bitxor )
# 2121 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2126 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 137 "parser.mly"
        ( Bitand )
# 2176 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2181 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 138 "parser.mly"
        ( Bitor )
# 2235 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2240 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 135 "parser.mly"
        ( Band )
# 2296 "parser.ml"
             in
            
# 113 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2301 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 111 "parser.mly"
                                    ( Eget (id, e2))
# 2361 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 120 "parser.mly"
         (Ubitnot)
# 2385 "parser.ml"
         in
        
# 112 "parser.mly"
                                    ( Eunop (u, e1))
# 2390 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv403 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv399 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv397 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 110 "parser.mly"
                                    ( Eset(e1, e2))
# 2519 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv401 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState6 ->
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
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 115 "parser.mly"
                                    ( e )
# 2583 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 119 "parser.mly"
         (Unot)
# 2607 "parser.ml"
         in
        
# 112 "parser.mly"
                                    ( Eunop (u, e1))
# 2612 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv425 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv421 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv418)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv419 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv423 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv433 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((((('freshtv429 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv427 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 88 "parser.mly"
                                                   ( Sdeclare (id, t ,e) )
# 2739 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
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
            let (_menhir_stack : ((((('freshtv431 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv441 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (((((('freshtv437 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv435 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 89 "parser.mly"
                                                      ( Sdeclarearray (id, t ,e) )
# 2806 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
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
            let (_menhir_stack : (((((('freshtv439 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv447 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (((('freshtv443 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv444)
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
            let (_menhir_stack : (((('freshtv445 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv455 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (((((('freshtv451 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv449 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (size : 'tv_expr)), _, (t : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 91 "parser.mly"
                                                          ( Sarray (id, size, t) )
# 2948 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
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
            let (_menhir_stack : (((((('freshtv453 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv463 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv459 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv457 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 90 "parser.mly"
                                                   ( Sset (id, set) )
# 3013 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
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
            let (_menhir_stack : ((('freshtv461 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv467 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv465 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 87 "parser.mly"
                                                   ( Sreturn e )
# 3077 "parser.ml"
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
            let (_menhir_stack : ('freshtv469 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv483 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv479 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv475 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv473 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 95 "parser.mly"
                                                   ( Sprintn e )
# 3173 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv477 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv481 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv491 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv487 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv485 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 94 "parser.mly"
                                                   ( Sprint e )
# 3252 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv489 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv501 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv497 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv498)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv499 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv500)) : 'freshtv502)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv511 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv507 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv508)
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
            let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv517 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((((((('freshtv513 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv514)
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
            let (_menhir_stack : ((((((('freshtv515 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv523 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((((((((('freshtv519 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv520)
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
            let (_menhir_stack : ((((((((('freshtv521 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv533 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((((((((((('freshtv529 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv525 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv526)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv527 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv531 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv539 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv535 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv536)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv537 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv541 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
        | RSHIFT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv555 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (((((('freshtv551 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv549 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 93 "parser.mly"
                                                   ( Saset (id, e2, e3) )
# 3828 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
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
            let (_menhir_stack : (((((('freshtv553 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv563 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv559 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv557 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 92 "parser.mly"
                                                   ( Sassign (id, e) )
# 3893 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
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
            let (_menhir_stack : ((('freshtv561 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = let l = 
# 232 "<standard.mly>"
    ( xs )
# 3954 "parser.ml"
         in
        
# 114 "parser.mly"
                                                    (Ecall(id, l))
# 3959 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)

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
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 108 "parser.mly"
                                    ( Eminint )
# 4007 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 107 "parser.mly"
                                    ( Emaxint )
# 4021 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)

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
# 4082 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 10 "parser.mly"
       (int64)
# 4092 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int64)
# 4096 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 106 "parser.mly"
                                    ( Ecst c )
# 4101 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)

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

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv133 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv135 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv145 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv151 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv153 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv155 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv157 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv159 * _menhir_state))) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv163 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv183 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv189 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv191 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv197 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv254)

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmts_ = 
# 211 "<standard.mly>"
    ( [] )
# 4460 "parser.ml"
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
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv124)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)

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
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv120)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)

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
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv116)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv112)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv108)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (Ast.ident)
# 4706 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 11 "parser.mly"
       (Ast.ident)
# 4716 "parser.ml"
    )) : (
# 11 "parser.mly"
       (Ast.ident)
# 4720 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 145 "parser.mly"
             ( id )
# 4725 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv103) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState149 | MenhirState145 | MenhirState141 | MenhirState131 | MenhirState129 | MenhirState127 | MenhirState118 | MenhirState112 | MenhirState107 | MenhirState102 | MenhirState98 | MenhirState90 | MenhirState87 | MenhirState85 | MenhirState79 | MenhirState74 | MenhirState2 | MenhirState3 | MenhirState6 | MenhirState60 | MenhirState7 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState21 | MenhirState19 | MenhirState17 | MenhirState12 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv12)
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState12 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 4794 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv16)
        | AND | BITAND | BITOR | BITXOR | COMMA | DELIMITER | DIV | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | MOD | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TIMES | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_expr = 
# 109 "parser.mly"
                                    ( Eident id )
# 4808 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv24)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv33 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv29 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv30)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv31 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
        | ASSIGN ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv35 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv40)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv41 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv42)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv53 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv51 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (id : 'tv_ident)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 96 "parser.mly"
                                                   ( Sscanf id )
# 5003 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv55 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv69 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv71 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState0 | MenhirState181 | MenhirState172 | MenhirState68 | MenhirState115 | MenhirState159 | MenhirState120 | MenhirState134 | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSIGN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv76)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | MenhirState176 | MenhirState170 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) : 'freshtv88)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | RPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState166 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 142 "<standard.mly>"
    ( [] )
# 5189 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv92)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | MenhirState179 | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
            | INT ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState176
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)) : 'freshtv104)) : 'freshtv106)

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164

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
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv3 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv4)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

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
# 55 "parser.mly"
      (Ast.program)
# 5311 "parser.ml"
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
    | FOR ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOREACH ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
  

# 5364 "parser.ml"
