
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
  | MenhirState190
  | MenhirState188
  | MenhirState185
  | MenhirState181
  | MenhirState179
  | MenhirState175
  | MenhirState173
  | MenhirState168
  | MenhirState166
  | MenhirState160
  | MenhirState159
  | MenhirState156
  | MenhirState155
  | MenhirState152
  | MenhirState151
  | MenhirState145
  | MenhirState144
  | MenhirState136
  | MenhirState135
  | MenhirState134
  | MenhirState133
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState129
  | MenhirState127
  | MenhirState125
  | MenhirState122
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState116
  | MenhirState114
  | MenhirState111
  | MenhirState110
  | MenhirState106
  | MenhirState105
  | MenhirState102
  | MenhirState101
  | MenhirState97
  | MenhirState94
  | MenhirState93
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState85
  | MenhirState83
  | MenhirState82
  | MenhirState78
  | MenhirState77
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState60
  | MenhirState59
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState27
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState12
  | MenhirState10
  | MenhirState7
  | MenhirState6
  | MenhirState3
  | MenhirState2
  | MenhirState0

# 6 "parser.mly"
  
  open Ast

# 203 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_COMMA_argument_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_list_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv739) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv737) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 144 "<standard.mly>"
    ( x )
# 220 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)) : 'freshtv740)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv743 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv741 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_argument_list_) : 'tv_separated_nonempty_list_COMMA_argument_list_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 237 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv742)) : 'freshtv744)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727 * _menhir_state * 'tv_stmt) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv725 * _menhir_state * 'tv_stmt) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmt)), _, (xs : 'tv_list_stmt_)) = _menhir_stack in
        let _v : 'tv_list_stmt_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 256 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv726)) : 'freshtv728)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv735 * _menhir_state) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv731 * _menhir_state) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv729 * _menhir_state) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : 'tv_list_stmt_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_suite = 
# 77 "parser.mly"
                         ( Sblock l )
# 277 "parser.ml"
             in
            _menhir_goto_suite _menhir_env _menhir_stack _menhir_s _v) : 'freshtv730)) : 'freshtv732)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv733 * _menhir_state) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv734)) : 'freshtv736)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | CONTINUE ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | DELIMITER ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | DO ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | FOR ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | FOREACH ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | FUNCTION ->
        _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | PRINT ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | PRINTN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | RETURN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | SCANF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | TYPE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | VAL ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | EOF ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv724)

and _menhir_goto_suite : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_suite -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv689 * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv685 * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv681 * _menhir_state) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState144
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv682)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv683 * _menhir_state) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv684)) : 'freshtv686)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv687 * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv688)) : 'freshtv690)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv693 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv691 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let ((((((((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)), _), _, (cond : 'tv_expr)), _), _, (incr : 'tv_expr)), _), _, (s : 'tv_suite)) = _menhir_stack in
        let _13 = () in
        let _11 = () in
        let _9 = () in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_stmt = 
# 87 "parser.mly"
                                                                                                      (Sfor(id, t, e, cond, incr, s))
# 410 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv692)) : 'freshtv694)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv697 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv695 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)), _, (s : 'tv_suite)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_stmt = 
# 85 "parser.mly"
                                                  ( Sforeach(id, set, s) )
# 424 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv696)) : 'freshtv698)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv705 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv699 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | CONTINUE ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | DELIMITER ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | DO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | FOR ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | FOREACH ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | LBC ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | PRINT ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | PRINTN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | RETURN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | SCANF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | TYPE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | VAL ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv700)
        | BREAK | CONTINUE | DELIMITER | DO | EOF | FOR | FOREACH | FUNCTION | IDENT _ | IF | PRINT | PRINTN | RBC | RETURN | SCANF | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv701 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), _, (s1 : 'tv_suite)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_stmt = 
# 83 "parser.mly"
                                                  ( Sif(e, s1, Sblock []) )
# 485 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv702)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv703 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv704)) : 'freshtv706)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv709 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv707 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), _, (s1 : 'tv_suite)), _, (s2 : 'tv_suite)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_stmt = 
# 84 "parser.mly"
                                                  ( Sif(e, s1, s2) )
# 508 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv708)) : 'freshtv710)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv713 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv711 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), _, (s : 'tv_suite)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_stmt = 
# 86 "parser.mly"
                                                  ( Swhile(e, s) )
# 523 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv721 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv717 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv715 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
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
# 548 "parser.ml"
             in
            
# 68 "parser.mly"
              ( Stfunction(f, x, r, s))
# 553 "parser.ml"
             in
            _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv716)) : 'freshtv718)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv719 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_suite) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv720)) : 'freshtv722)
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_def : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_def -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv653 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv649 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv650)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv651 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv652)) : 'freshtv654)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv659 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv655 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv656)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv657 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv658)) : 'freshtv660)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv665 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv661 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | CONTINUE ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | DELIMITER ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | DO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | FOR ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | FOREACH ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | LBC ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | PRINT ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | PRINTN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | RETURN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | SCANF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | TYPE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | VAL ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv663 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv677 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (t : 'tv_type_def)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_argument_list = 
# 73 "parser.mly"
                               ((id, t))
# 713 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv675) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv673 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188) : 'freshtv668)
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_argument_list)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_list_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 744 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_argument_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv672)) : 'freshtv674)) : 'freshtv676)) : 'freshtv678)) : 'freshtv680)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 772 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv647 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv645 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 789 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv646)) : 'freshtv648)
    | _ ->
        _menhir_fail ()

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
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

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_ = 
# 211 "<standard.mly>"
    ( [] )
# 1313 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState181 | MenhirState71 | MenhirState118 | MenhirState166 | MenhirState122 | MenhirState135 | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv633 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (s : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_suite = 
# 78 "parser.mly"
                         ( Sblock [s] )
# 1330 "parser.ml"
         in
        _menhir_goto_suite _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)) : 'freshtv634)
    | MenhirState168 | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv635 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | CONTINUE ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | DELIMITER ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | DO ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | FOR ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | FOREACH ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | IF ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | PRINT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | PRINTN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | RETURN ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | SCANF ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | TYPE ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | VAL ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | RBC ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv636)
    | MenhirState0 | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (s : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_stmts = 
# 69 "parser.mly"
              ( Stmt s )
# 1384 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmts_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmts_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv615 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv613 * _menhir_state * 'tv_stmts) * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmts)), _, (xs : 'tv_list_stmts_)) = _menhir_stack in
        let _v : 'tv_list_stmts_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1403 "parser.ml"
         in
        _menhir_goto_list_stmts_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv614)) : 'freshtv616)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (b : 'tv_list_stmts_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 58 "parser.mly"
      (Ast.program)
# 1422 "parser.ml"
            ) = 
# 63 "parser.mly"
                      ( Stblock b )
# 1426 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
      (Ast.program)
# 1434 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
      (Ast.program)
# 1442 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 58 "parser.mly"
      (Ast.program)
# 1450 "parser.ml"
            )) : (
# 58 "parser.mly"
      (Ast.program)
# 1454 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv618)) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)) : 'freshtv626)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_list_stmts_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)
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
    let (_menhir_stack : ((('freshtv611 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv607 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv603 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | INT ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv605 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv609 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv610)) : 'freshtv612)

and _menhir_reduce70 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_type_def = 
# 109 "parser.mly"
                ( CTid id )
# 1521 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_type_def = 
# 108 "parser.mly"
                ( Int )
# 1535 "parser.ml"
     in
    _menhir_goto_type_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState57 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState16 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv376)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1622 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv380)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 134 "parser.mly"
        ( Bmul )
# 1639 "parser.ml"
         in
        
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1644 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState20 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv386)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv388)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv391 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LSHIFT | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | RSHIFT | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 149 "parser.mly"
        ( Bitrs )
# 1747 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1752 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv392)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | PRINT | PRINTN | RBK | RETURN | RPR | RSHIFT | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 132 "parser.mly"
        ( Badd )
# 1779 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1784 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv396)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv399 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 136 "parser.mly"
        ( Bmod )
# 1801 "parser.ml"
         in
        
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1806 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let o = 
# 135 "parser.mly"
        ( Bdiv )
# 1819 "parser.ml"
         in
        
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1824 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LSHIFT | LT | MINUS | NEQ | OF | OR | PLUS | PRINT | PRINTN | RBK | RETURN | RPR | RSHIFT | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 133 "parser.mly"
        ( Bsub )
# 1847 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1852 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv408)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 144 "parser.mly"
        ( Bor  )
# 1907 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1912 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv412)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | IDENT _ | IF | LBC | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 138 "parser.mly"
        ( Bneq )
# 1955 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 1960 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv416)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 140 "parser.mly"
        ( Blt )
# 1995 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2000 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv420)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv423 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LSHIFT | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | RSHIFT | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 148 "parser.mly"
        ( Bitls )
# 2031 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2036 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv424)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv427 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv425 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 142 "parser.mly"
        ( Ble )
# 2071 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2076 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv428)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 139 "parser.mly"
        ( Bgt )
# 2111 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2116 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv432)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LT | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 141 "parser.mly"
        ( Bge )
# 2151 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2156 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv436)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | EQ | FOR | FOREACH | IDENT _ | IF | LBC | NEQ | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 137 "parser.mly"
        ( Beq )
# 2199 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2204 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv440)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | AND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 147 "parser.mly"
        ( Bitxor )
# 2253 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2258 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv444)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 145 "parser.mly"
        ( Bitand )
# 2305 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2310 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv448)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | AND | BITOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 146 "parser.mly"
        ( Bitor )
# 2361 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2366 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv452)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | AND | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | OR | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TERNARY | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 143 "parser.mly"
        ( Band )
# 2419 "parser.ml"
             in
            
# 120 "parser.mly"
                                    ( Ebinop (o, e1, e2) )
# 2424 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv456)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv459 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DO | FOR | FOREACH | IDENT _ | IF | LBC | OF | PRINT | PRINTN | RBK | RETURN | RPR | SCANF | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv457 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (cond : 'tv_expr)), _), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 122 "parser.mly"
                                          ( Eternary(cond, e1, e2))
# 2484 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv460)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv463 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState60 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv461 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 118 "parser.mly"
                                    ( Eget (id, e2))
# 2543 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv466)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 128 "parser.mly"
         (Ubitnot)
# 2566 "parser.ml"
         in
        
# 119 "parser.mly"
                                    ( Eunop (u, e1))
# 2571 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState63 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv474)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv479 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv477 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState65 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv475 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 117 "parser.mly"
                                    ( Eset(e1, e2))
# 2703 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv480)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv485 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv483 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState67 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 123 "parser.mly"
                                    ( e )
# 2768 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv486)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = let u = 
# 127 "parser.mly"
         (Unot)
# 2791 "parser.ml"
         in
        
# 119 "parser.mly"
                                    ( Eunop (u, e1))
# 2796 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | CONTINUE ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DELIMITER ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FOR ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FOREACH ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LBC ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | PRINT ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | PRINTN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | RETURN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SCANF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TYPE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | VAL ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv492)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv494)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv499 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv497 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState78 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv495 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_type_def)), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 95 "parser.mly"
                                                   ( Sdeclare (id, t ,e) )
# 2921 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv500)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv505 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv503 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState83 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv501 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (t : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 96 "parser.mly"
                                                      ( Sdeclarearray (id, t ,e) )
# 2989 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv506)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv509 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv507 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv508)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv510)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv515 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv513 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState91 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv511 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (size : 'tv_expr)), _), _, (t : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 98 "parser.mly"
                                                          ( Sarray (id, size, t) )
# 3133 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)) : 'freshtv514)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv516)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv521 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv519 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv517 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (id : 'tv_ident)), _, (set : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 97 "parser.mly"
                                                   ( Sset (id, set) )
# 3199 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv522)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState102 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_stmt = 
# 92 "parser.mly"
                                                   ( Sreturn e )
# 3264 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv528)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState106 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv531 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv529 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 102 "parser.mly"
                                                   ( Sprintn e )
# 3361 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)) : 'freshtv532)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv533 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv538)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState111 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv541 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv539 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 101 "parser.mly"
                                                   ( Sprint e )
# 3441 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)) : 'freshtv542)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv543 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv548)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv551 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState117 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | CONTINUE ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | DELIMITER ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | DO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | FOR ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | FOREACH ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LBC ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | PRINT ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | PRINTN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | RETURN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | SCANF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | TYPE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VAL ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv550)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv552)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv553 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | BREAK ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | CONTINUE ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DELIMITER ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DO ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | FOR ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | FOREACH ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | IF ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LBC ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PRINT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PRINTN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RETURN ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | SCANF ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TYPE ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | VAL ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv554)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv557 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv555 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState130 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv556)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv558)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv561 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv559 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState132 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv560)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv562)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv565 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv563 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState134 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | CONTINUE ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | DELIMITER ->
                _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | DO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | FOR ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | FOREACH ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | IF ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | LBC ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | PRINT ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | PRINTN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | RETURN ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | SCANF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | TYPE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | VAL ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv564)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv566)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv575 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv573 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState145 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv569 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv567 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (s : 'tv_suite)), _, (e : 'tv_expr)), _) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 88 "parser.mly"
                                                  ( Sdowhile(e,s) )
# 3938 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)) : 'freshtv570)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv571 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv572)) : 'freshtv574)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv576)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv587 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | RBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv585 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState152 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv581 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv577 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BITNOT ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | CST _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
                    | LBK ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | LPR ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | MAXINT ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | MININT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | NOT ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv578)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv579 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv580)) : 'freshtv582)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv583 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv584)) : 'freshtv586)
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv588)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv593 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv591 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState156 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv589 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 100 "parser.mly"
                                                   ( Saset (id, e2, e3) )
# 4091 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv594)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv599 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | BITAND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | BITOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | BITXOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | DELIMITER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv597 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState160 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv595 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_simple_stmt = 
# 99 "parser.mly"
                                                   ( Sassign (id, e) )
# 4157 "parser.ml"
             in
            _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)) : 'freshtv598)
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | GET ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | LSHIFT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | LT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | MINUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | MOD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | PLUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | RSHIFT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | TERNARY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv600)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = let l = 
# 232 "<standard.mly>"
    ( xs )
# 4217 "parser.ml"
         in
        
# 121 "parser.mly"
                                                    (Ecall(id, l))
# 4222 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)

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
    let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 115 "parser.mly"
                                    ( Eminint )
# 4270 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 114 "parser.mly"
                                    ( Emaxint )
# 4284 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)

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
# 4345 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 10 "parser.mly"
       (int64)
# 4355 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int64)
# 4359 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 113 "parser.mly"
                                    ( Ecst c )
# 4364 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)

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

and _menhir_run114 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | CONTINUE ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | DELIMITER ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | DO ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | FOR ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | FOREACH ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | PRINT ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | PRINTN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | RETURN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | SCANF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | TYPE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | VAL ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | RBC ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_goto_simple_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_simple_stmt) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : 'tv_simple_stmt) : 'tv_simple_stmt) = _v in
    ((let _v : 'tv_stmt = 
# 82 "parser.mly"
                                                  ( s )
# 4451 "parser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_argument_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv147 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv149 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument_list__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_suite)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv159 * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv163 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv165 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv171 * _menhir_state) * _menhir_state * 'tv_suite))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv173 * _menhir_state) * _menhir_state * 'tv_suite))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv177 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv179 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv181 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv183 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv185 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv187 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv189 * _menhir_state))) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv191 * _menhir_state))) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv201 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv203 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv223 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv227 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv229 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv231 * _menhir_state) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv233 * _menhir_state) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv237 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv239 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv241 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv243 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_type_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv255 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv267 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv269 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv309 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv356)

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmts_ = 
# 211 "<standard.mly>"
    ( [] )
# 5003 "parser.ml"
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
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BITNOT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | LBK ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LPR ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | MAXINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | MININT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | LBK ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LPR ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MAXINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MININT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | NOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (Ast.ident)
# 5249 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 11 "parser.mly"
       (Ast.ident)
# 5259 "parser.ml"
    )) : (
# 11 "parser.mly"
       (Ast.ident)
# 5263 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 153 "parser.mly"
             ( id )
# 5268 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 | MenhirState155 | MenhirState151 | MenhirState144 | MenhirState133 | MenhirState131 | MenhirState129 | MenhirState121 | MenhirState116 | MenhirState110 | MenhirState105 | MenhirState101 | MenhirState93 | MenhirState90 | MenhirState88 | MenhirState82 | MenhirState77 | MenhirState2 | MenhirState3 | MenhirState6 | MenhirState64 | MenhirState7 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState25 | MenhirState23 | MenhirState21 | MenhirState19 | MenhirState17 | MenhirState12 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv26)
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState12 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 5337 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv30)
        | AND | BITAND | BITOR | BITXOR | BREAK | COLON | COMMA | CONTINUE | DELIMITER | DIV | DO | EQ | FOR | FOREACH | GET | GT | IDENT _ | IF | LBC | LET | LSHIFT | LT | MINUS | MOD | NEQ | OF | OR | PLUS | PRINT | PRINTN | RBK | RETURN | RPR | RSHIFT | SCANF | TERNARY | TIMES | TO | TYPE | VAL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (id : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_expr = 
# 116 "parser.mly"
                                    ( Eident id )
# 5351 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)) : 'freshtv36)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | INT ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv51 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv47 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv43 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv44)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
        | ASSIGN ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv49 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv54)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv56)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv57 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv71 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DELIMITER ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv67 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv65 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (id : 'tv_ident)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_simple_stmt = 
# 103 "parser.mly"
                                                   ( Sscanf id )
# 5546 "parser.ml"
                 in
                _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)) : 'freshtv68)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv69 * _menhir_state)) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)) : 'freshtv72)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv73 * _menhir_state)) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv87 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv83 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | INT ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv85 * _menhir_state))) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState0 | MenhirState190 | MenhirState181 | MenhirState71 | MenhirState114 | MenhirState168 | MenhirState118 | MenhirState166 | MenhirState122 | MenhirState135 | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSIGN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BITNOT ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | CST _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | LBK ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | LPR ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | MAXINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | MININT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv90)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
        | LBK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BITNOT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | CST _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LBK ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LPR ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MAXINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MININT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | MenhirState185 | MenhirState179 | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) : 'freshtv102)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
            | RPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState175 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument_list__ = 
# 142 "<standard.mly>"
    ( [] )
# 5732 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_argument_list__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
    | MenhirState188 | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
            | INT ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState185
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | _ ->
        _menhir_fail ()) : 'freshtv118)) : 'freshtv120)

and _menhir_run173 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173

and _menhir_run119 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run136 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | CONTINUE ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | DELIMITER ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | DO ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | FOR ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | FOREACH ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | LBC ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | PRINT ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | PRINTN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | RETURN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | SCANF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | TYPE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | VAL ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136

and _menhir_run137 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_stmt = 
# 104 "parser.mly"
                                                   ( Snothing )
# 5894 "parser.ml"
     in
    _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run138 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 94 "parser.mly"
                                                   ( Scontinue )
# 5916 "parser.ml"
         in
        _menhir_goto_simple_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run140 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 93 "parser.mly"
                                                   ( Sbreak )
# 5945 "parser.ml"
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
# 5971 "parser.ml"
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
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CONTINUE ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DELIMITER ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DO ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOR ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOREACH ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINT ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINTN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SCANF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAL ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 6032 "parser.ml"
