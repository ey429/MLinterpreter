
exception Error

let _eRR =
  Error

type token = 
  | WITH
  | VERT
  | UNDERBAR
  | TYPE
  | TRUE
  | THEN
  | STRING of (
# 24 "parser.mly"
       (string)
# 18 "parser.ml"
)
  | SEMISEMI
  | SEMI
  | RSQPAREN
  | RPAREN
  | REC
  | RARROW
  | PLUS
  | OOR
  | OF
  | MULT
  | MINUS
  | MATCH
  | LT
  | LSQPAREN
  | LPAREN
  | LIST
  | LET
  | JOIN
  | INTV of (
# 21 "parser.mly"
       (int)
# 41 "parser.ml"
)
  | IN
  | IF
  | ID of (
# 22 "parser.mly"
       (Syntax.id)
# 48 "parser.ml"
)
  | GT
  | FUNCTION
  | FUN
  | FALSE
  | EQ
  | ELSE
  | DFUN
  | CONSTR of (
# 23 "parser.mly"
       (Syntax.id)
# 60 "parser.ml"
)
  | CONS
  | COMMA
  | APPEND
  | AND
  | AAND

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState177
  | MenhirState176
  | MenhirState175
  | MenhirState172
  | MenhirState171
  | MenhirState169
  | MenhirState166
  | MenhirState160
  | MenhirState154
  | MenhirState153
  | MenhirState151
  | MenhirState150
  | MenhirState148
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState138
  | MenhirState134
  | MenhirState133
  | MenhirState130
  | MenhirState128
  | MenhirState126
  | MenhirState123
  | MenhirState121
  | MenhirState117
  | MenhirState114
  | MenhirState107
  | MenhirState101
  | MenhirState98
  | MenhirState93
  | MenhirState90
  | MenhirState88
  | MenhirState85
  | MenhirState83
  | MenhirState82
  | MenhirState79
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState60
  | MenhirState58
  | MenhirState55
  | MenhirState54
  | MenhirState50
  | MenhirState49
  | MenhirState45
  | MenhirState44
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState23
  | MenhirState16
  | MenhirState12
  | MenhirState9
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Syntax

# 153 "parser.ml"

let rec _menhir_goto_MulLET : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulLET -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState175 | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv709 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv707 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, d), _, m) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_MulLET = 
# 38 "parser.mly"
                            ( d :: m )
# 169 "parser.ml"
         in
        _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v) : 'freshtv708)) : 'freshtv710)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv711 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, m) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 188 "parser.ml"
            ) = 
# 32 "parser.mly"
                      ( Decl m )
# 192 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)
    | _ ->
        _menhir_fail ()

and _menhir_reduce69 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, d) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_MulLET = 
# 39 "parser.mly"
                  ( [d] )
# 212 "parser.ml"
     in
    _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v

and _menhir_run176 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | ID _v ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176

and _menhir_run154 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154

and _menhir_run141 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141

and _menhir_goto_DeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv699 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv697 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_DeclExpr = 
# 97 "parser.mly"
                                ( u :: d )
# 334 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv701 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv702)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv703 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | LET ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | SEMISEMI ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv704)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv705 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | SEMISEMI ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv706)
    | _ ->
        _menhir_fail ()

and _menhir_goto_RecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_RecDeclExpr = 
# 87 "parser.mly"
                                      ( u :: d )
# 396 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv687 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv695 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv691 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv689 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, d) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 434 "parser.ml"
            ) = 
# 33 "parser.mly"
                                  ( RecDecl d )
# 438 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv693 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv694)) : 'freshtv696)
    | _ ->
        _menhir_fail ()

and _menhir_reduce45 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'tv_CaseExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _ l ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_FunExpr = 
# 50 "parser.mly"
                       ( FunExp([(Var "match")], MatchExp (Var "match", l)) )
# 458 "parser.ml"
     in
    _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_TupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv675 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv671 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv669 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 166 "parser.mly"
                              ( TupleExp t )
# 484 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)) : 'freshtv672)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv673 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv674)) : 'freshtv676)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv677 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleExpr = 
# 175 "parser.mly"
                           ( e :: l )
# 504 "parser.ml"
         in
        _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv678)) : 'freshtv680)
    | _ ->
        _menhir_fail ()

and _menhir_run160 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160

and _menhir_goto_UnitDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | ID _v ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv662)
    | IN | LET | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_DeclExpr = 
# 98 "parser.mly"
                  ( [u] )
# 589 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv664)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)) : 'freshtv668)

and _menhir_goto_LetExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LetExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_LetExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_LetExpr) = _v in
    ((let _v : 'tv_Expr = 
# 44 "parser.mly"
              ( e )
# 613 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)

and _menhir_goto_UnitRecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitRecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv650)
    | IN | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_RecDeclExpr = 
# 88 "parser.mly"
                     ( [u] )
# 644 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv652)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)

and _menhir_goto_CaseExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_CaseExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv629 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 663 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv627 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 671 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let ((_menhir_stack, _menhir_s, f), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 94 "parser.mly"
                               ( (f, [Var "match"], MatchExp (Var "match", l)) )
# 681 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)) : 'freshtv630)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        (_menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv632)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv635 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv633 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_CaseExpr = 
# 108 "parser.mly"
                                               ( (m, e) :: l )
# 705 "parser.ml"
         in
        _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv637 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 713 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        (_menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv638)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv647 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv645 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_MatchExpr = 
# 105 "parser.mly"
                               ( MatchExp (e, l) )
# 733 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_MatchExpr) = _v in
        ((let _v : 'tv_Expr = 
# 46 "parser.mly"
                ( e )
# 750 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)) : 'freshtv642)) : 'freshtv644)) : 'freshtv646)) : 'freshtv648)
    | _ ->
        _menhir_fail ()

and _menhir_goto_FunExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_FunExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv625) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_FunExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv623) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_FunExpr) = _v in
    ((let _v : 'tv_Expr = 
# 45 "parser.mly"
              ( e )
# 769 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv624)) : 'freshtv626)

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 782 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv519 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 788 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 164 "parser.mly"
                    ( ConstrExp (x, e) )
# 794 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)) : 'freshtv522)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv525 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv523 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 51 "parser.mly"
                              ( DFunExp (p, e) )
# 808 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv529 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv527 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 49 "parser.mly"
                            ( FunExp (p, e) )
# 822 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv535 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv541 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv537 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv539 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv551 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv549 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, c), _, t), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 179 "parser.mly"
                                      ( IfExp (c, t, e) )
# 939 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 42 "parser.mly"
             ( e )
# 956 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)) : 'freshtv546)) : 'freshtv548)) : 'freshtv550)) : 'freshtv552)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv553 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv554)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv555 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_CaseExpr = 
# 109 "parser.mly"
                                ( [(m, e)] )
# 999 "parser.ml"
             in
            _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv557 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv563 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1014 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv561 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1020 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, f), _), _, p), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 92 "parser.mly"
                                     ( (f, p, e) )
# 1029 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv567 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1037 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv565 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1043 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 91 "parser.mly"
                         ( (f, p, e) )
# 1050 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv571 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv569 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, d), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 84 "parser.mly"
                                   ( LetRecExp (d, e) )
# 1065 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)) : 'freshtv572)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv575 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1073 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv573 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1079 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitDeclExpr = 
# 102 "parser.mly"
                          ( (Var f, FunExp (p, e)) )
# 1086 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv579 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv577 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitDeclExpr = 
# 101 "parser.mly"
                           ( (m, e) )
# 1099 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv583 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv581 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, d), _), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 83 "parser.mly"
                           ( LetExp (d, e) )
# 1113 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 162 "parser.mly"
                         ( e )
# 1136 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleExpr = 
# 176 "parser.mly"
          ( [e] )
# 1161 "parser.ml"
             in
            _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)
    | MenhirState166 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv601 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | RSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv599 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ListExpr = 
# 170 "parser.mly"
               ( [e] )
# 1219 "parser.ml"
                 in
                _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv602)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListExpr = 
# 171 "parser.mly"
          ( [e] )
# 1233 "parser.ml"
             in
            _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv613 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv611 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 1298 "parser.ml"
            ) = 
# 31 "parser.mly"
                    ( Exp e )
# 1302 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConsExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConsExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState166 | MenhirState29 | MenhirState160 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState63 | MenhirState121 | MenhirState123 | MenhirState69 | MenhirState73 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv513) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_ConsExpr) = _v in
        ((let _v : 'tv_Expr = 
# 43 "parser.mly"
               ( e )
# 1330 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)) : 'freshtv514)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv517 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_ConsExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConsExpr = 
# 112 "parser.mly"
                               ( BinOp (Cons, l, r) )
# 1347 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
    | _ ->
        _menhir_fail ()

and _menhir_goto_AppendExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AppendExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_JoinExpr)) * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_JoinExpr)) * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_AppendExpr = 
# 116 "parser.mly"
                                 ( BinOp(Append, l, r) )
# 1367 "parser.ml"
         in
        _menhir_goto_AppendExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState166 | MenhirState29 | MenhirState160 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState63 | MenhirState121 | MenhirState123 | MenhirState69 | MenhirState73 | MenhirState114 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv503 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv504)
        | AAND | AND | APPEND | COMMA | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv505 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ConsExpr = 
# 113 "parser.mly"
                ( e )
# 1409 "parser.ml"
             in
            _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv507 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)
    | _ ->
        _menhir_fail ()

and _menhir_goto_JoinExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_JoinExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_JoinExpr = 
# 120 "parser.mly"
                           ( BinOp (Join, l, r) )
# 1436 "parser.ml"
         in
        _menhir_goto_JoinExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | MenhirState0 | MenhirState27 | MenhirState166 | MenhirState28 | MenhirState160 | MenhirState29 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState123 | MenhirState121 | MenhirState63 | MenhirState69 | MenhirState73 | MenhirState114 | MenhirState107 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | APPEND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv492)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_AppendExpr = 
# 117 "parser.mly"
              ( e )
# 1478 "parser.ml"
             in
            _menhir_goto_AppendExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JOIN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | FALSE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | ID _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | INTV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv478)
    | OOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | FALSE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | ID _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | INTV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv480)
    | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_JoinExpr = 
# 121 "parser.mly"
            ( e )
# 1558 "parser.ml"
         in
        _menhir_goto_JoinExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)) : 'freshtv486)

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 124 "parser.mly"
                         ( BinOp (Or, l, r) )
# 1615 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState166 | MenhirState29 | MenhirState160 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState63 | MenhirState121 | MenhirState123 | MenhirState69 | MenhirState73 | MenhirState74 | MenhirState114 | MenhirState107 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 125 "parser.mly"
             ( e )
# 1640 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()

and _menhir_goto_EQExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_EQExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_EQExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_EQExpr) = _v in
    ((let _v : 'tv_ANDExpr = 
# 129 "parser.mly"
            ( e )
# 1666 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)

and _menhir_goto_GTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_GTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_GTExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_GTExpr) = _v in
    ((let _v : 'tv_LTExpr = 
# 137 "parser.mly"
             ( e )
# 1683 "parser.ml"
     in
    _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState166 | MenhirState28 | MenhirState160 | MenhirState29 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState123 | MenhirState121 | MenhirState63 | MenhirState69 | MenhirState73 | MenhirState114 | MenhirState107 | MenhirState74 | MenhirState101 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_LTExpr) = _v in
        ((let _v : 'tv_EQExpr = 
# 133 "parser.mly"
            ( e )
# 1702 "parser.ml"
         in
        _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_LTExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 128 "parser.mly"
                          ( BinOp (And, l, r) )
# 1719 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
    | _ ->
        _menhir_fail ()

and _menhir_reduce48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, e) = _menhir_stack in
    let _v : 'tv_GTExpr = 
# 141 "parser.mly"
           ( e )
# 1731 "parser.ml"
     in
    _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run85 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState166 | MenhirState28 | MenhirState160 | MenhirState29 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState123 | MenhirState121 | MenhirState63 | MenhirState69 | MenhirState73 | MenhirState114 | MenhirState107 | MenhirState101 | MenhirState93 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv422)
        | GT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | FALSE | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 136 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 1910 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_GTExpr = 
# 140 "parser.mly"
                     ( BinOp (Gt, l, r) )
# 1938 "parser.ml"
             in
            _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_EQExpr = 
# 132 "parser.mly"
                     ( BinOp (Eq, l, r) )
# 1966 "parser.ml"
             in
            _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | _ ->
        _menhir_fail ()

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (Syntax.program)
# 2031 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 27 "parser.mly"
      (Syntax.program)
# 2040 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 27 "parser.mly"
      (Syntax.program)
# 2048 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv418)) : 'freshtv420)

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 144 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 2072 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 145 "parser.mly"
                          ( BinOp (Minus, l, r) )
# 2098 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState0 | MenhirState27 | MenhirState166 | MenhirState28 | MenhirState160 | MenhirState29 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState123 | MenhirState121 | MenhirState63 | MenhirState69 | MenhirState73 | MenhirState114 | MenhirState107 | MenhirState74 | MenhirState101 | MenhirState98 | MenhirState93 | MenhirState90 | MenhirState88 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 146 "parser.mly"
            ( e )
# 2123 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeTupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeTupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeExpr = 
# 190 "parser.mly"
                               ( TupleT (e :: l) )
# 2153 "parser.ml"
         in
        _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeTupleExpr = 
# 195 "parser.mly"
                               ( t :: l )
# 2170 "parser.ml"
         in
        _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv373 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_TExpr = 
# 199 "parser.mly"
                           ( t )
# 2198 "parser.ml"
             in
            _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv375 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2213 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2219 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConstrExpr = 
# 187 "parser.mly"
                          ( (x, t) )
# 2226 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv389 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2234 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv385 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2244 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv383 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2250 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, t) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 2259 "parser.ml"
            ) = 
# 34 "parser.mly"
                                    ( TypeDecl (x, t) )
# 2263 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv387 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2273 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | _ ->
        _menhir_fail ()

and _menhir_goto_VariantExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_VariantExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv365 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2289 "parser.ml"
        ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2299 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2305 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, l) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 2314 "parser.ml"
            ) = 
# 35 "parser.mly"
                                       ( VariantDecl (x, l) )
# 2318 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv363 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2328 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, c), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_VariantExpr = 
# 182 "parser.mly"
                                  ( c :: l )
# 2342 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | _ ->
        _menhir_fail ()

and _menhir_goto_MulID : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulID -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv331 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, m) = _menhir_stack in
        let _v : 'tv_MulID = 
# 54 "parser.mly"
                         ( x :: m )
# 2463 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv343 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2471 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2481 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv341 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2525 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2534 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2544 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | FUNCTION ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv345 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2562 "parser.ml"
                )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState133 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONSTR _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | FALSE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | ID _v ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | INTV _v ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | LPAREN ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | LSQPAREN ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | TRUE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | UNDERBAR ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv346)
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2618 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2627 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2637 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2681 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ListMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 63 "parser.mly"
                                     ( ListExp e )
# 2710 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, l), _), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListMatchExpr = 
# 78 "parser.mly"
                                      ( l :: r )
# 2730 "parser.ml"
         in
        _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TupleMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 61 "parser.mly"
                                  ( TupleExp t )
# 2758 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, e), _), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleMatchExpr = 
# 70 "parser.mly"
                                        ( e :: l )
# 2778 "parser.ml"
         in
        _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)) : 'freshtv310)
    | _ ->
        _menhir_fail ()

and _menhir_reduce21 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state -> _menhir_state -> 'tv_ConsMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _ r ->
    let ((_menhir_stack, _menhir_s, l), _) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ArgMatchExpr = 
# 62 "parser.mly"
                                       ( BinOp (Cons, l, r) )
# 2791 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ArgMatchExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_AppExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AppExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | FALSE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | ID _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | INTV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 149 "parser.mly"
                           ( BinOp (Mult, l, r) )
# 2861 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv294)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState166 | MenhirState29 | MenhirState160 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState63 | MenhirState121 | MenhirState123 | MenhirState69 | MenhirState73 | MenhirState74 | MenhirState114 | MenhirState107 | MenhirState101 | MenhirState98 | MenhirState93 | MenhirState90 | MenhirState88 | MenhirState85 | MenhirState83 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | FALSE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | ID _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | INTV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 150 "parser.mly"
              ( e )
# 2897 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv298)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 | MenhirState16 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LIST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_TypeExpr = 
# 191 "parser.mly"
                ( ListT t )
# 2928 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)) : 'freshtv274)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv276)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeExpr = 
# 192 "parser.mly"
           ( t )
# 2952 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState12 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv284)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeTupleExpr = 
# 196 "parser.mly"
           ( [t] )
# 2989 "parser.ml"
             in
            _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConstrExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConstrExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv264)
    | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, c) = _menhir_stack in
        let _v : 'tv_VariantExpr = 
# 183 "parser.mly"
                ( [c] )
# 3029 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)

and _menhir_goto_ListExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 163 "parser.mly"
                                 ( ListExp e )
# 3062 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListExpr = 
# 169 "parser.mly"
                         ( e :: l )
# 3082 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
    | _ ->
        _menhir_fail ()

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_ListMatchExpr = 
# 80 "parser.mly"
   ( [] )
# 3093 "parser.ml"
     in
    _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3100 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_ArgMatchExpr = 
# 66 "parser.mly"
        ( Var x )
# 3107 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ArgMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ArgMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3120 "parser.ml"
        )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | COMMA | CONSTR _ | EQ | FALSE | ID _ | INTV _ | LPAREN | LSQPAREN | RARROW | RPAREN | RSQPAREN | SEMI | TRUE | UNDERBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3132 "parser.ml"
            )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
            let _v : 'tv_ArgMatchExpr = 
# 64 "parser.mly"
                            ( ConstrExp (x, e) )
# 3138 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv214)
    | MenhirState45 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState44 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv216)
        | COMMA | CONSTR _ | EQ | FALSE | ID _ | INTV _ | LPAREN | LSQPAREN | RARROW | RPAREN | RSQPAREN | SEMI | TRUE | UNDERBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ConsMatchExpr = 
# 75 "parser.mly"
                  ( e )
# 3186 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_ConsMatchExpr) = _v in
            ((match _menhir_s with
            | MenhirState42 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv218)
            | MenhirState45 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv220)
            | _ ->
                _menhir_fail ()) : 'freshtv222)) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv226)
    | MenhirState50 | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState49 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv228)
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleMatchExpr = 
# 71 "parser.mly"
                  ( [e] )
# 3254 "parser.ml"
             in
            _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv232)
    | MenhirState55 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState54 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | RSQPAREN ->
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv234)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListMatchExpr = 
# 79 "parser.mly"
                  ( [e] )
# 3306 "parser.ml"
             in
            _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv238)
    | MenhirState169 | MenhirState134 | MenhirState126 | MenhirState65 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState60 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv242)
    | MenhirState143 | MenhirState34 | MenhirState128 | MenhirState67 | MenhirState117 | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | EQ | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_MulID = 
# 55 "parser.mly"
                  ( [x] )
# 3396 "parser.ml"
             in
            _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv246)
    | MenhirState171 | MenhirState176 | MenhirState30 | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState150 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | DFUN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FALSE ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FUN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FUNCTION ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | ID _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | IF ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | INTV _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 3461 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState82 | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 153 "parser.mly"
                    ( AppExp (e, x) )
# 3484 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState166 | MenhirState29 | MenhirState160 | MenhirState154 | MenhirState151 | MenhirState145 | MenhirState141 | MenhirState133 | MenhirState130 | MenhirState61 | MenhirState63 | MenhirState121 | MenhirState123 | MenhirState69 | MenhirState73 | MenhirState74 | MenhirState114 | MenhirState107 | MenhirState101 | MenhirState93 | MenhirState98 | MenhirState90 | MenhirState88 | MenhirState85 | MenhirState83 | MenhirState76 | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 154 "parser.mly"
           ( e )
# 3499 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
    | _ ->
        _menhir_fail ()

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState30 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv202)
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 3564 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 22 "parser.mly"
       (Syntax.id)
# 3574 "parser.ml"
    )) = _v in
    ((let _v : 'tv_TExpr = 
# 200 "parser.mly"
        ( TVar x )
# 3579 "parser.ml"
     in
    _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 3586 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3598 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv194)
    | SEMISEMI | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3616 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ConstrExpr = 
# 186 "parser.mly"
           ( (x, TNone) )
# 3622 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3632 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 158 "parser.mly"
           ( BLit true )
# 3647 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
       (string)
# 3654 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (s : (
# 24 "parser.mly"
       (string)
# 3664 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 161 "parser.mly"
             ( SLit s )
# 3669 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | RSQPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState28 in
        ((let _v : 'tv_ListExpr = 
# 172 "parser.mly"
   ( [] )
# 3753 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 67 "parser.mly"
             ( None )
# 3810 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 59 "parser.mly"
           ( BLit true )
# 3824 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_UnitDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3901 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3910 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_UnitRecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3929 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3938 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3947 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3956 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv81 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv83 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_JoinExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4050 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4099 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4143 "parser.ml"
        )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4152 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4171 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_ConstrExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4210 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 4234 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv182)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4246 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4260 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4272 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv32)
        | FUNCTION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4302 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4334 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | RSQPAREN ->
        _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
       (int)
# 4416 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 21 "parser.mly"
       (int)
# 4426 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ArgMatchExpr = 
# 58 "parser.mly"
           ( ILit i )
# 4431 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)

and _menhir_run143 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4438 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState143
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState143
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState143
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState143
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState143
    | CONS | EQ ->
        _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 60 "parser.mly"
           ( BLit false )
# 4478 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 4485 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | COMMA | CONS | EQ | RARROW | RPAREN | RSQPAREN | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4513 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ArgMatchExpr = 
# 65 "parser.mly"
             ( ConstrExp (x, None) )
# 4519 "parser.ml"
         in
        _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
       (int)
# 4530 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 21 "parser.mly"
       (int)
# 4540 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 157 "parser.mly"
           ( ILit i )
# 4545 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4591 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 22 "parser.mly"
       (Syntax.id)
# 4601 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 160 "parser.mly"
           ( Var i )
# 4606 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 159 "parser.mly"
           ( BLit false )
# 4674 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 4708 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4748 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 165 "parser.mly"
             ( ConstrExp (x, None) )
# 4754 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

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

and toplevel : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 27 "parser.mly"
      (Syntax.program)
# 4777 "parser.ml"
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
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DFUN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | ID _v ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * _menhir_state) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState171 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv2)
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv4)
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 22 "parser.mly"
       (Syntax.id)
# 4878 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 4889 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONSTR _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
                | ID _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 4911 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv16))

# 220 "/usr/share/menhir/standard.mly"
  


# 4931 "parser.ml"
