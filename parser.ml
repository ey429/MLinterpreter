
exception Error

let _eRR =
  Error

type token = 
  | WITH
  | VERT
  | TRUE
  | THEN
  | SEMISEMI
  | SEMI
  | RSQPAREN
  | RPAREN
  | REC
  | RARROW
  | PLUS
  | OOR
  | MULT
  | MINUS
  | MATCH
  | LT
  | LSQPAREN
  | LPAREN
  | LET
  | INTV of (
# 14 "parser.mly"
       (int)
# 31 "parser.ml"
)
  | IN
  | IF
  | ID of (
# 15 "parser.mly"
       (Syntax.id)
# 38 "parser.ml"
)
  | GT
  | FUN
  | FALSE
  | EQ
  | ELSE
  | DFUN
  | CONS
  | AND
  | AAND

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState114
  | MenhirState110
  | MenhirState108
  | MenhirState106
  | MenhirState104
  | MenhirState102
  | MenhirState96
  | MenhirState90
  | MenhirState83
  | MenhirState82
  | MenhirState80
  | MenhirState77
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState66
  | MenhirState63
  | MenhirState61
  | MenhirState50
  | MenhirState47
  | MenhirState42
  | MenhirState39
  | MenhirState37
  | MenhirState34
  | MenhirState32
  | MenhirState31
  | MenhirState28
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState8
  | MenhirState7
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState2
  | MenhirState0

# 1 "parser.mly"
  
open Syntax

# 110 "parser.ml"

let rec _menhir_goto_MulLET : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulLET -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv485 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv483 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, d), _, m) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_MulLET = 
# 28 "parser.mly"
                            ( d :: m )
# 126 "parser.ml"
         in
        _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)) : 'freshtv486)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, m) = _menhir_stack in
            let _2 = () in
            let _v : (
# 18 "parser.mly"
      (Syntax.program)
# 145 "parser.ml"
            ) = 
# 23 "parser.mly"
                      ( Decl m )
# 149 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | _ ->
        _menhir_fail ()

and _menhir_reduce42 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, d) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_MulLET = 
# 29 "parser.mly"
                  ( [d] )
# 169 "parser.ml"
     in
    _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run83 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_goto_DeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_DeclExpr = 
# 52 "parser.mly"
                                ( u :: d )
# 233 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv478)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LET ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SEMISEMI ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv480)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv481 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | SEMISEMI ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv482)
    | _ ->
        _menhir_fail ()

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
      (Syntax.program)
# 284 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 18 "parser.mly"
      (Syntax.program)
# 293 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 18 "parser.mly"
      (Syntax.program)
# 301 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv470)) : 'freshtv472)

and _menhir_goto_UnitDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv462)
    | IN | LET | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_DeclExpr = 
# 53 "parser.mly"
                  ( [u] )
# 332 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)

and _menhir_run71 : _menhir_env -> ((((('ttv_tail * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 346 "parser.ml"
)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_goto_LetExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LetExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_LetExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_LetExpr) = _v in
    ((let _v : 'tv_Expr = 
# 34 "parser.mly"
              ( e )
# 392 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)

and _menhir_run66 : _menhir_env -> ((((((('ttv_tail * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 399 "parser.ml"
)) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_goto_FunExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_FunExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_FunExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_FunExpr) = _v in
    ((let _v : 'tv_Expr = 
# 35 "parser.mly"
              ( e )
# 445 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv305 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv303 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, m), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 40 "parser.mly"
                              ( DFunExp (m, e) )
# 464 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv309 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv307 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, m), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 39 "parser.mly"
                            ( FunExp (m, e) )
# 478 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)) : 'freshtv310)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv321 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv317 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv319 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv331 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv329 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, c), _, t), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 113 "parser.mly"
                                      ( IfExp (c, t, e) )
# 583 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 32 "parser.mly"
             ( e )
# 600 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)) : 'freshtv328)) : 'freshtv330)) : 'freshtv332)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv335 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 608 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv333 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 622 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv339 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 631 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv337 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 637 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((((((_menhir_stack, _menhir_s), _), x), _), _, m), _, e1), _, e2) = _menhir_stack in
        let _9 = () in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 48 "parser.mly"
                                                         ( LetRecExp (x, m, e1, e2) )
# 649 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv343 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 657 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv341 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 671 "parser.ml"
            )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv347 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 680 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv345 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 686 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _), x), _, m), _, e1), _, e2) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 49 "parser.mly"
                                              ( LetRecExp (x, m, e1, e2) )
# 696 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 704 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 710 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x), _), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitDeclExpr = 
# 56 "parser.mly"
                 ( (x, e) )
# 717 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv355 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 725 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv353 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 731 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitDeclExpr = 
# 57 "parser.mly"
                          ( (f, FunExp (p, e)) )
# 738 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)) : 'freshtv356)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv359 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv357 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, d), _), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 47 "parser.mly"
                           ( LetExp (d, e) )
# 752 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 103 "parser.mly"
                         ( e )
# 773 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState90 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | RSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv369 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ListExpr = 
# 108 "parser.mly"
               ( [e] )
# 825 "parser.ml"
                 in
                _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv372)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListExpr = 
# 109 "parser.mly"
          ( [e] )
# 839 "parser.ml"
             in
            _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv387 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RSQPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv383 * _menhir_state) * _menhir_state * 'tv_Expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RARROW ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv379 * _menhir_state) * _menhir_state * 'tv_Expr)))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | DFUN ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | FALSE ->
                            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | FUN ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | ID _v ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                        | IF ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | INTV _v ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                        | LET ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | LPAREN ->
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | LSQPAREN ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | MATCH ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | TRUE ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv380)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv381 * _menhir_state) * _menhir_state * 'tv_Expr)))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv385 * _menhir_state) * _menhir_state * 'tv_Expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv389 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv417 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv413 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv409 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                let (_v : (
# 15 "parser.mly"
       (Syntax.id)
# 951 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONS ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv405 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 962 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((((('freshtv401 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 972 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 15 "parser.mly"
       (Syntax.id)
# 977 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RARROW ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((((((('freshtv397 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 988 "parser.ml"
                            ))) * (
# 15 "parser.mly"
       (Syntax.id)
# 992 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | DFUN ->
                                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | FALSE ->
                                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | FUN ->
                                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | ID _v ->
                                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                            | IF ->
                                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | INTV _v ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                            | LET ->
                                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | LPAREN ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | LSQPAREN ->
                                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | MATCH ->
                                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | TRUE ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv398)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((((((('freshtv399 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 1030 "parser.ml"
                            ))) * (
# 15 "parser.mly"
       (Syntax.id)
# 1034 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((((('freshtv403 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 1045 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv407 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 1056 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv411 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv415 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv427 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 1079 "parser.ml"
        ))) * (
# 15 "parser.mly"
       (Syntax.id)
# 1083 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv425 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 1089 "parser.ml"
        ))) * (
# 15 "parser.mly"
       (Syntax.id)
# 1093 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _, e1), _, e2), x1), x2), _, e3) = _menhir_stack in
        let _12 = () in
        let _10 = () in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_MatchExpr = 
# 60 "parser.mly"
                                                                                          ( MatchExp (e1, e2, e3, x1, x2) )
# 1107 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_MatchExpr) = _v in
        ((let _v : 'tv_Expr = 
# 36 "parser.mly"
                ( e )
# 1124 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)) : 'freshtv424)) : 'freshtv426)) : 'freshtv428)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv435 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1132 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv431 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1144 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv429 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1150 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _), x), _), _, m), _, e) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 18 "parser.mly"
      (Syntax.program)
# 1162 "parser.ml"
            ) = 
# 24 "parser.mly"
                                                       ( RecDecl (x, m, e) )
# 1166 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv433 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1176 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv443 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1185 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv439 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1197 "parser.ml"
            )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv437 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1203 "parser.ml"
            )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _), x), _, m), _, e) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 18 "parser.mly"
      (Syntax.program)
# 1213 "parser.ml"
            ) = 
# 25 "parser.mly"
                                            ( RecDecl (x, m, e) )
# 1217 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv441 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 1227 "parser.ml"
            )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _2 = () in
            let _v : (
# 18 "parser.mly"
      (Syntax.program)
# 1247 "parser.ml"
            ) = 
# 22 "parser.mly"
                    ( Exp e )
# 1251 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConsExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConsExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_ConsExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConsExpr = 
# 63 "parser.mly"
                           ( BinOp (Cons, l, r) )
# 1281 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState2 | MenhirState96 | MenhirState102 | MenhirState3 | MenhirState90 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState69 | MenhirState71 | MenhirState13 | MenhirState66 | MenhirState15 | MenhirState61 | MenhirState63 | MenhirState19 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_ConsExpr) = _v in
        ((let _v : 'tv_Expr = 
# 33 "parser.mly"
               ( e )
# 1296 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | INTV _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LSQPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv286)
    | OOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | INTV _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LSQPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv288)
    | AND | ELSE | IN | LET | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_ConsExpr = 
# 64 "parser.mly"
            ( e )
# 1361 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 66 "parser.mly"
                         ( BinOp (Or, l, r) )
# 1414 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState2 | MenhirState96 | MenhirState102 | MenhirState3 | MenhirState90 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState69 | MenhirState71 | MenhirState13 | MenhirState66 | MenhirState15 | MenhirState61 | MenhirState63 | MenhirState19 | MenhirState23 | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 67 "parser.mly"
             ( e )
# 1439 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
    | _ ->
        _menhir_fail ()

and _menhir_goto_EQExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_EQExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_EQExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_EQExpr) = _v in
    ((let _v : 'tv_ANDExpr = 
# 71 "parser.mly"
            ( e )
# 1465 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)

and _menhir_goto_GTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_GTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_GTExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_GTExpr) = _v in
    ((let _v : 'tv_LTExpr = 
# 79 "parser.mly"
             ( e )
# 1482 "parser.ml"
     in
    _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState102 | MenhirState96 | MenhirState2 | MenhirState90 | MenhirState3 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState71 | MenhirState69 | MenhirState66 | MenhirState13 | MenhirState63 | MenhirState61 | MenhirState15 | MenhirState19 | MenhirState23 | MenhirState50 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_LTExpr) = _v in
        ((let _v : 'tv_EQExpr = 
# 75 "parser.mly"
            ( e )
# 1501 "parser.ml"
         in
        _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_LTExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 70 "parser.mly"
                          ( BinOp (And, l, r) )
# 1518 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_reduce25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, e) = _menhir_stack in
    let _v : 'tv_GTExpr = 
# 83 "parser.mly"
           ( e )
# 1530 "parser.ml"
     in
    _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState102 | MenhirState96 | MenhirState2 | MenhirState90 | MenhirState3 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState71 | MenhirState69 | MenhirState66 | MenhirState13 | MenhirState63 | MenhirState61 | MenhirState15 | MenhirState19 | MenhirState50 | MenhirState42 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv230)
        | GT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 78 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 1689 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_GTExpr = 
# 82 "parser.mly"
                     ( BinOp (Gt, l, r) )
# 1717 "parser.ml"
             in
            _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_EQExpr = 
# 74 "parser.mly"
                     ( BinOp (Eq, l, r) )
# 1745 "parser.ml"
             in
            _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | IN | LET | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | _ ->
        _menhir_fail ()

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 86 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 1823 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 87 "parser.mly"
                          ( BinOp (Minus, l, r) )
# 1849 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState102 | MenhirState96 | MenhirState2 | MenhirState90 | MenhirState3 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState71 | MenhirState69 | MenhirState66 | MenhirState13 | MenhirState63 | MenhirState61 | MenhirState15 | MenhirState19 | MenhirState23 | MenhirState50 | MenhirState47 | MenhirState42 | MenhirState39 | MenhirState37 | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 88 "parser.mly"
            ( e )
# 1874 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_AppExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AppExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | INTV _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LSQPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 91 "parser.mly"
                           ( BinOp (Mult, l, r) )
# 1922 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv206)
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState2 | MenhirState96 | MenhirState102 | MenhirState3 | MenhirState90 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState69 | MenhirState71 | MenhirState13 | MenhirState66 | MenhirState15 | MenhirState61 | MenhirState63 | MenhirState19 | MenhirState23 | MenhirState50 | MenhirState47 | MenhirState42 | MenhirState39 | MenhirState37 | MenhirState34 | MenhirState32 | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | INTV _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LSQPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 92 "parser.mly"
              ( e )
# 1954 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv210)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ListExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 104 "parser.mly"
                                 ( ListExp e )
# 1986 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListExpr = 
# 107 "parser.mly"
                         ( e :: l )
# 2006 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
    | _ ->
        _menhir_fail ()

and _menhir_goto_MulID : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulID -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2021 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2027 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, m) = _menhir_stack in
        let _v : 'tv_MulID = 
# 43 "parser.mly"
               ( x :: m )
# 2033 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2041 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv149 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2051 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv151 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2089 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2188 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv167 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2198 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv169 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2236 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2245 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2255 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2293 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv183 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2302 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv179 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2312 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv181 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2350 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv189 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2359 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2369 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DFUN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FUN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ID _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | INTV _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LSQPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2407 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
       (Syntax.id)
# 2436 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv137 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2447 "parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState7 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FUN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv133 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2459 "parser.ml"
                    )) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv134)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv135 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2477 "parser.ml"
                    )) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 95 "parser.mly"
                    ( AppExp (e, x) )
# 2515 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
    | MenhirState0 | MenhirState114 | MenhirState110 | MenhirState2 | MenhirState96 | MenhirState102 | MenhirState3 | MenhirState90 | MenhirState4 | MenhirState83 | MenhirState77 | MenhirState74 | MenhirState69 | MenhirState71 | MenhirState13 | MenhirState66 | MenhirState15 | MenhirState61 | MenhirState63 | MenhirState19 | MenhirState23 | MenhirState50 | MenhirState42 | MenhirState47 | MenhirState39 | MenhirState37 | MenhirState34 | MenhirState32 | MenhirState25 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 96 "parser.mly"
           ( e )
# 2530 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)) : 'freshtv132)
    | _ ->
        _menhir_fail ()

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 100 "parser.mly"
           ( BLit true )
# 2546 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RSQPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState3 in
        ((let _v : 'tv_ListExpr = 
# 110 "parser.mly"
   ( [] )
# 2618 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv33 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2682 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv35 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2691 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv37 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2700 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2709 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv43 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 15 "parser.mly"
       (Syntax.id)
# 2723 "parser.ml"
        ))) * (
# 15 "parser.mly"
       (Syntax.id)
# 2727 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv45 * _menhir_state) * _menhir_state * 'tv_Expr))))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_UnitDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2761 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2770 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2779 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv61 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2788 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2797 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv65 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2806 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv103 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2905 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv105 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2914 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2923 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 2932 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv120)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (Syntax.id)
# 2964 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | EQ | RARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 2978 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_MulID = 
# 44 "parser.mly"
        ( [x] )
# 2984 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (Syntax.id)
# 2995 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 15 "parser.mly"
       (Syntax.id)
# 3007 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState73 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DFUN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | FALSE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | FUN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | IF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | INTV _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | LSQPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MATCH ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv24)
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
       (int)
# 3050 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 14 "parser.mly"
       (int)
# 3060 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 99 "parser.mly"
           ( ILit i )
# 3065 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (Syntax.id)
# 3105 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 15 "parser.mly"
       (Syntax.id)
# 3115 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 102 "parser.mly"
           ( Var i )
# 3120 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 101 "parser.mly"
           ( BLit false )
# 3147 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

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
# 18 "parser.mly"
      (Syntax.program)
# 3179 "parser.ml"
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
    | DFUN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState104 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv7 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 15 "parser.mly"
       (Syntax.id)
# 3234 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv5 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 3245 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState106 in
                    ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FUN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv1 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 3257 "parser.ml"
                        )) * _menhir_state) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | ID _v ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv2)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv3 * _menhir_state) * _menhir_state) * (
# 15 "parser.mly"
       (Syntax.id)
# 3275 "parser.ml"
                        )) * _menhir_state) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv4)) : 'freshtv6)
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv9 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv14)
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv16))

# 220 "/usr/share/menhir/standard.mly"
  


# 3313 "parser.ml"
