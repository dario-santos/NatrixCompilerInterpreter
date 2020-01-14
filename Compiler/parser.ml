
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAL
    | TYPE
    | TO
    | TIMES
    | TERNARY
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
# 43 "parser.ml"
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
    | DO
    | DIV
    | DELIMITER
    | CST of (
# 10 "parser.mly"
       (int64)
# 60 "parser.ml"
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
  | MenhirState209
  | MenhirState207
  | MenhirState204
  | MenhirState200
  | MenhirState198
  | MenhirState194
  | MenhirState192
  | MenhirState188
  | MenhirState184
  | MenhirState181
  | MenhirState177
  | MenhirState175
  | MenhirState165
  | MenhirState161
  | MenhirState157
  | MenhirState153
  | MenhirState149
  | MenhirState140
  | MenhirState138
  | MenhirState135
  | MenhirState133
  | MenhirState131
  | MenhirState129
  | MenhirState127
  | MenhirState124
  | MenhirState122
  | MenhirState120
  | MenhirState119
  | MenhirState116
  | MenhirState111
  | MenhirState106
  | MenhirState102
  | MenhirState98
  | MenhirState94
  | MenhirState91
  | MenhirState89
  | MenhirState86
  | MenhirState83
  | MenhirState78
  | MenhirState75
  | MenhirState73
  | MenhirState72
  | MenhirState64
  | MenhirState59
  | MenhirState57
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

# 167 "parser.ml"

let rec _menhir_goto_list_elif_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_elif_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv815 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_elif_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv813 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((l : 'tv_list_elif_) : 'tv_list_elif_) = _v in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_suite)) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_stmt = 
# 87 "parser.mly"
                                                         ( Sif(e, s1, l))
# 190 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv814)) : 'freshtv816)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv819 * _menhir_state * 'tv_elif) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_elif_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv817 * _menhir_state * 'tv_elif) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_elif_) : 'tv_list_elif_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_elif)) = _menhir_stack in
        let _v : 'tv_list_elif_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 206 "parser.ml"
         in
        _menhir_goto_list_elif_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv818)) : 'freshtv820)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_argument_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_list_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv807) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv805) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 144 "<standard.mly>"
    ( x )
# 227 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv806)) : 'freshtv808)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv811 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv809 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 244 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv810)) : 'freshtv812)
    | _ ->
        _menhir_fail ()

and _menhir_goto_elif : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_elif -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv803 * _menhir_state * 'tv_elif) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ELSE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | BREAK | CONTINUE | DELIMITER | DO | EOF | FOR | FOREACH | FUNCTION | IDENT _ | IF | PRINT | PRINTN | RBC | RETURN | SCANF | TYPE | VAL | WHILE ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188) : 'freshtv804)

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_elif_ = 
# 211 "<standard.mly>"
    ( [] )
# 272 "parser.ml"
     in
    _menhir_goto_list_elif_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run176 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv797 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv793 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv794)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv795 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv796)) : 'freshtv798)
    | LBC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv799 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | CONTINUE ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | DELIMITER ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | DO ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | FOR ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | FOREACH ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | IF ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | PRINT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | PRINTN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | RETURN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | SCANF ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | TYPE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | VAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | RBC ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv800)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv801 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv802)

and _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv791 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | CONTINUE ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | DELIMITER ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | DO ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FOR ->
        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FOREACH ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FUNCTION ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | PRINT ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | PRINTN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | RETURN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | SCANF ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | VAL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | EOF ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209) : 'freshtv792)

and _menhir_goto_type_def : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_def -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv763 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv759 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv760)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv761 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv762)) : 'freshtv764)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv769 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv765 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv766)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv767 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv768)) : 'freshtv770)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv775 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv771 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | CONTINUE ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | DELIMITER ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | DO ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | FOR ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | FOREACH ->
                _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | PRINT ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | PRINTN ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | RETURN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | SCANF ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | TYPE ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | VAL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | RBC ->
                _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState200
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200) : 'freshtv772)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv773 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv774)) : 'freshtv776)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv789 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv787 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (t : 'tv_type_def)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_argument_list = 
# 73 "parser.mly"
                               ((id, t))
# 565 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv785) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv783 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv777 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207) : 'freshtv778)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv779 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 596 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv781 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv782)) : 'freshtv784)) : 'freshtv786)) : 'freshtv788)) : 'freshtv790)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv753) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 624 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)) : 'freshtv754)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv757 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv755 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 641 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)) : 'freshtv758)
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

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv675 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv673 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_list_stmt_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1157 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv674)) : 'freshtv676)
    | MenhirState200 | MenhirState72 | MenhirState119 | MenhirState184 | MenhirState177 | MenhirState124 | MenhirState138 | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv749) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_list_stmt_) : 'tv_list_stmt_) = _v in
        ((let _v : 'tv_suite = 
# 77 "parser.mly"
                 ( Sblock l )
# 1172 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv745) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_suite) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState140 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv689 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv685 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | WHILE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv681 * _menhir_state)) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LPR ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv677 * _menhir_state)) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
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
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv678)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv679 * _menhir_state)) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv680)) : 'freshtv682)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv683 * _menhir_state)) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv684)) : 'freshtv686)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv687 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv688)) : 'freshtv690)
        | MenhirState138 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((((('freshtv697 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv693 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv691 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 90 "parser.mly"
                                                                                                             (Sfor(id, t, e, cond, incr, s))
# 1271 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv692)) : 'freshtv694)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((((('freshtv695 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)) : 'freshtv698)
        | MenhirState124 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv705 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv701 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv699 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 88 "parser.mly"
                                                         ( Sforeach(id, set, s) )
# 1301 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv700)) : 'freshtv702)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv703 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv704)) : 'freshtv706)
        | MenhirState119 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv711 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv707 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState175
                | BREAK | CONTINUE | DELIMITER | DO | EOF | FOR | FOREACH | FUNCTION | IDENT _ | IF | PRINT | PRINTN | RBC | RETURN | SCANF | TYPE | VAL | WHILE ->
                    _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState175
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv708)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv709 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)
        | MenhirState177 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv719 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv715 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv713 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (s : 'tv_suite)) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_elif = 
# 82 "parser.mly"
                         ( ( Ecst 1L ,s) )
# 1357 "parser.ml"
                 in
                _menhir_goto_elif _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv717 * _menhir_state)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv718)) : 'freshtv720)
        | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv727 * _menhir_state))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv723 * _menhir_state))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv721 * _menhir_state))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_elif = 
# 81 "parser.mly"
                                             ( (e, s) )
# 1389 "parser.ml"
                 in
                _menhir_goto_elif _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)) : 'freshtv724)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv725 * _menhir_state))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv726)) : 'freshtv728)
        | MenhirState72 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv735 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv731 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv729 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 89 "parser.mly"
                                                         ( Swhile(e, s) )
# 1420 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv730)) : 'freshtv732)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv733 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv734)) : 'freshtv736)
        | MenhirState200 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv743 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv739 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv737 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 1452 "parser.ml"
                 in
                
# 68 "parser.mly"
              ( Stfunction(f, x, r, s))
# 1457 "parser.ml"
                 in
                _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)) : 'freshtv740)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv741 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv742)) : 'freshtv744)
        | _ ->
            _menhir_fail ()) : 'freshtv746)) : 'freshtv748)) : 'freshtv750)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState200 | MenhirState72 | MenhirState119 | MenhirState184 | MenhirState177 | MenhirState124 | MenhirState138 | MenhirState153 | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | CONTINUE ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | DELIMITER ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | DO ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | FOR ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | FOREACH ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
        | IF ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | PRINT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | PRINTN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | RETURN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | SCANF ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | TYPE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | VAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | RBC ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv668)
    | MenhirState0 | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (s : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_stmts = 
# 69 "parser.mly"
              ( Stmt s )
# 1527 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)) : 'freshtv672)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmts_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmts_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv651 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv649 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmts)), _, (xs : 'tv_list_stmts_)) = _menhir_stack in
        let _v : 'tv_list_stmts_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1546 "parser.ml"
         in
        _menhir_goto_list_stmts_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv650)) : 'freshtv652)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv659 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (b : 'tv_list_stmts_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 58 "parser.mly"
      (Ast.program)
# 1565 "parser.ml"
            ) = 
# 63 "parser.mly"
                      ( Stblock b )
# 1569 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv657) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
      (Ast.program)
# 1577 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv655) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
      (Ast.program)
# 1585 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv653) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 58 "parser.mly"
      (Ast.program)
# 1593 "parser.ml"
            )) : (
# 58 "parser.mly"
      (Ast.program)
# 1597 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv654)) : 'freshtv656)) : 'freshtv658)) : 'freshtv660)) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_argument_list__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv647 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv643 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv639 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
            | INT ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState198
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198) : 'freshtv640)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv641 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)) : 'freshtv644)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv645 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)

and _menhir_reduce72 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_type_def = 
# 112 "parser.mly"
                ( CTid id )
# 1664 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_type_def = 
# 111 "parser.mly"
                ( Int )
# 1678 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState57 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv308)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1763 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 137 "parser.mly"
        ( Bmul )
# 1783 "parser.ml"
         in
        
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1788 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv320)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | NEQ | OF | OR | RBK | RPR | RSHIFT | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 152 "parser.mly"
        ( Bitrs )
# 1892 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1897 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 135 "parser.mly"
        ( Badd )
# 1927 "parser.ml"
             in
            
# 123 "parser.mly"
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
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 139 "parser.mly"
        ( Bmod )
# 1952 "parser.ml"
         in
        
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1957 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 138 "parser.mly"
        ( Bdiv )
# 1970 "parser.ml"
         in
        
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1975 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 136 "parser.mly"
        ( Bsub )
# 1998 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2003 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 147 "parser.mly"
        ( Bor  )
# 2061 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2066 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | LBC | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 141 "parser.mly"
        ( Bneq )
# 2112 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2117 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 143 "parser.mly"
        ( Blt )
# 2155 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2160 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LSHIFT | LT | NEQ | OF | OR | RBK | RPR | RSHIFT | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 151 "parser.mly"
        ( Bitls )
# 2194 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2199 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 145 "parser.mly"
        ( Ble )
# 2237 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2242 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 142 "parser.mly"
        ( Bgt )
# 2280 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2285 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv391 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | GET | GT | LBC | LET | LT | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 144 "parser.mly"
        ( Bge )
# 2323 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2328 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | EQ | LBC | NEQ | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 140 "parser.mly"
        ( Beq )
# 2374 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2379 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITOR | BITXOR | COLON | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 150 "parser.mly"
        ( Bitxor )
# 2431 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2436 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 148 "parser.mly"
        ( Bitand )
# 2486 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2491 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | BITOR | COLON | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 149 "parser.mly"
        ( Bitor )
# 2545 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2550 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | DELIMITER | LBC | OF | OR | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 146 "parser.mly"
        ( Band )
# 2606 "parser.ml"
             in
            
# 123 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2611 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv427 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | DELIMITER | LBC | OF | RBK | RPR | TERNARY | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv423 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (cond : 'tv_expr)), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 125 "parser.mly"
                                          ( Eternary(cond, e1, e2))
# 2672 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv425 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 121 "parser.mly"
                                    ( Eget (id, e2))
# 2732 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 131 "parser.mly"
         (Ubitnot)
# 2758 "parser.ml"
         in
        
# 122 "parser.mly"
                                    ( Eunop (u, e1))
# 2763 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv441 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv443 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv453 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv449 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv447 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 120 "parser.mly"
                                    ( Eset(e1, e2))
# 2894 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv451 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv461 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv457 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv455 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 126 "parser.mly"
                                    ( e )
# 2960 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 130 "parser.mly"
         (Unot)
# 2986 "parser.ml"
         in
        
# 122 "parser.mly"
                                    ( Eunop (u, e1))
# 2991 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv467 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | CONTINUE ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | DELIMITER ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | DO ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | FOR ->
                    _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | FOREACH ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
                | IF ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | PRINT ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | PRINTN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | RETURN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | SCANF ->
                    _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | TYPE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | VAL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | RBC ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv468)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv469 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv473 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv483 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv479 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv477 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 98 "parser.mly"
                                                   ( Sdeclare (id, t ,e) )
# 3128 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)) : 'freshtv480)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv481 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv491 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv487 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv485 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 99 "parser.mly"
                                                          ( Sdeclarearray (id, t ,e) )
# 3197 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv489 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv497 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv493 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv494)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv495 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv505 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv501 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv499 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (size : 'tv_expr)), _, (t : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 101 "parser.mly"
                                                          ( Sarray (id, size, t) )
# 3343 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv503 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv513 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv507 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 100 "parser.mly"
                                                   ( Sset (id, set) )
# 3410 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv511 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 95 "parser.mly"
                                                   ( Sreturn e )
# 3476 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv525 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv523 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 105 "parser.mly"
                                                   ( Sprintn e )
# 3574 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv527 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv545 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv537 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv535 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 104 "parser.mly"
                                                   ( Sprint e )
# 3655 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)) : 'freshtv538)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv539 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv555 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv551 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv547 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | CONTINUE ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | DELIMITER ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | DO ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | FOR ->
                    _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | FOREACH ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
                | IF ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | PRINT ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | PRINTN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | RETURN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | SCANF ->
                    _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | TYPE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | VAL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | RBC ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv548)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv549 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv553 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv561 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv557 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | CONTINUE ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | DELIMITER ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | DO ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FOR ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FOREACH ->
                _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | PRINT ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | PRINTN ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | RETURN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | SCANF ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | TYPE ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | VAL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | RBC ->
                _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv558)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv559 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv560)) : 'freshtv562)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv567 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv563 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv564)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv565 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv566)) : 'freshtv568)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv573 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv569 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv570)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv571 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv572)) : 'freshtv574)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv583 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv579 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv575 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | CONTINUE ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | DELIMITER ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | DO ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | FOR ->
                    _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | FOREACH ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
                | IF ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | PRINT ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | PRINTN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | RETURN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | SCANF ->
                    _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | TYPE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | VAL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | RBC ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv576)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((((((('freshtv577 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv581 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv595 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv591 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv587 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv585 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (s : 'tv_suite)), _, (e : 'tv_expr)) = _menhir_stack in
                let _9 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 91 "parser.mly"
                                                          ( Sdowhile(e,s) )
# 4198 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv589 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv593 * _menhir_state)) * _menhir_state * 'tv_suite)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv609 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv605 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv601 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv597 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BITNOT ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | CST _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
                    | LBK ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | LPR ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | MAXINT ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | MININT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | NOT ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv598)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv599 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv603 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv607 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv617 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv613 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv611 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 103 "parser.mly"
                                                   ( Saset (id, e2, e3) )
# 4353 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv612)) : 'freshtv614)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv615 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv616)) : 'freshtv618)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv625 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv621 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv619 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 102 "parser.mly"
                                                   ( Sassign (id, e) )
# 4420 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv620)) : 'freshtv622)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv623 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv635 * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv631 * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv627 * _menhir_state))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | CONTINUE ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | DELIMITER ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | DO ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | FOR ->
                    _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | FOREACH ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
                | IF ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | PRINT ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | PRINTN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | RETURN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | SCANF ->
                    _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | TYPE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | VAL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | RBC ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv628)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv629 * _menhir_state))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv633 * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv634)) : 'freshtv636)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = let l = 
# 232 "<standard.mly>"
    ( xs )
# 4589 "parser.ml"
         in
        
# 124 "parser.mly"
                                                    (Ecall(id, l))
# 4594 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)

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
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 118 "parser.mly"
                                    ( Eminint )
# 4642 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 117 "parser.mly"
                                    ( Emaxint )
# 4656 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)

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
# 4717 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 10 "parser.mly"
       (int64)
# 4727 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int64)
# 4731 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 116 "parser.mly"
                                    ( Ecst c )
# 4736 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)

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

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_ = 
# 211 "<standard.mly>"
    ( [] )
# 4772 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_simple_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv291) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_simple_stmt) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : 'tv_simple_stmt) : 'tv_simple_stmt) = _v in
    ((let _v : 'tv_stmt = 
# 86 "parser.mly"
                                                         ( s )
# 4789 "parser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)) : 'freshtv292)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv151 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_elif) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv161 * _menhir_state))) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv167 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv171 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv177 * _menhir_state)) * _menhir_state * 'tv_suite)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv181 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv183 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv185 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv187 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv189 * _menhir_state))) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv193 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv199 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv213 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv215 * _menhir_state) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv219 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv221 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv227 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv235 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv267 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv288)

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmts_ = 
# 211 "<standard.mly>"
    ( [] )
# 5161 "parser.ml"
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
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run97 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITNOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (Ast.ident)
# 5407 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 11 "parser.mly"
       (Ast.ident)
# 5417 "parser.ml"
    )) : (
# 11 "parser.mly"
       (Ast.ident)
# 5421 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 156 "parser.mly"
             ( id )
# 5426 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv121) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState181 | MenhirState165 | MenhirState161 | MenhirState157 | MenhirState149 | MenhirState135 | MenhirState133 | MenhirState131 | MenhirState122 | MenhirState116 | MenhirState111 | MenhirState106 | MenhirState102 | MenhirState94 | MenhirState91 | MenhirState89 | MenhirState83 | MenhirState78 | MenhirState2 | MenhirState3 | MenhirState6 | MenhirState64 | MenhirState7 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState21 | MenhirState19 | MenhirState17 | MenhirState12 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv30)
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState12 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 5495 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv34)
        | AND | BITAND | BITOR | BITXOR | COLON | COMMA | DELIMITER | DIV | EQ | GET | GT | LBC | LET | LSHIFT | LT | MINUS | MOD | NEQ | OF | OR | PLUS | RBK | RPR | RSHIFT | TERNARY | TIMES | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_expr = 
# 119 "parser.mly"
                                    ( Eident id )
# 5509 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | INT ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv42)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv51 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv47 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv48)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv49 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
        | ASSIGN ->
            _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv53 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv58)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv59 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv60)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv61 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv75 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv71 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv69 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (id : 'tv_ident)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 106 "parser.mly"
                                                   ( Sscanf id )
# 5704 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv73 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv77 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv91 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv87 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | INT ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv89 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | MenhirState0 | MenhirState209 | MenhirState200 | MenhirState72 | MenhirState119 | MenhirState184 | MenhirState177 | MenhirState124 | MenhirState138 | MenhirState140 | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSIGN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv94)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState204 | MenhirState198 | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) : 'freshtv106)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | RPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState194 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 142 "<standard.mly>"
    ( [] )
# 5890 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState207 | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
            | INT ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState204
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204) : 'freshtv116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | _ ->
        _menhir_fail ()) : 'freshtv122)) : 'freshtv124)

and _menhir_run192 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192

and _menhir_run120 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120

and _menhir_run125 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | CONTINUE ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | DELIMITER ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | DO ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | FOR ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | FOREACH ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | IF ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | PRINT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | PRINTN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | RETURN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | SCANF ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | TYPE ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | VAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | RBC ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_stmt = 
# 107 "parser.mly"
                                                   ( Snothing )
# 6065 "parser.ml"
     in
    _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 97 "parser.mly"
                                                   ( Scontinue )
# 6087 "parser.ml"
         in
        _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run144 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 96 "parser.mly"
                                                   ( Sbreak )
# 6116 "parser.ml"
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
# 58 "parser.mly"
      (Ast.program)
# 6142 "parser.ml"
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
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CONTINUE ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DELIMITER ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DO ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOR ->
        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOREACH ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINT ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINTN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SCANF ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 6203 "parser.ml"
