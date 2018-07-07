
exception Error

let _eRR =
  Error

type token = 
  | WITH
  | VERT
  | TYPE
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
  | OF
  | MULT
  | MINUS
  | MATCH
  | LT
  | LSQPAREN
  | LPAREN
  | LET
  | INTV of (
# 16 "parser.mly"
       (int)
# 33 "parser.ml"
)
  | INT
  | IN
  | IF
  | ID of (
# 17 "parser.mly"
       (Syntax.id)
# 41 "parser.ml"
)
  | GT
  | FUN
  | FALSE
  | EQ
  | ELSE
  | DFUN
  | CONSTR of (
# 18 "parser.mly"
       (Syntax.id)
# 52 "parser.ml"
)
  | CONS
  | BOOL
  | AND
  | AAND

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState127
  | MenhirState126
  | MenhirState125
  | MenhirState122
  | MenhirState121
  | MenhirState119
  | MenhirState113
  | MenhirState107
  | MenhirState100
  | MenhirState99
  | MenhirState97
  | MenhirState94
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState85
  | MenhirState82
  | MenhirState78
  | MenhirState76
  | MenhirState64
  | MenhirState61
  | MenhirState56
  | MenhirState53
  | MenhirState51
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState42
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState12
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Syntax

# 120 "parser.ml"

let rec _menhir_goto_MulLET : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulLET -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState125 | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv519 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, d), _, m) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_MulLET = 
# 31 "parser.mly"
                            ( d :: m )
# 136 "parser.ml"
         in
        _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv527 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv523 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, m) = _menhir_stack in
            let _2 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 155 "parser.ml"
            ) = 
# 26 "parser.mly"
                      ( Decl m )
# 159 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv525 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | _ ->
        _menhir_fail ()

and _menhir_reduce44 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, d) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_MulLET = 
# 32 "parser.mly"
                  ( [d] )
# 179 "parser.ml"
     in
    _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v

and _menhir_run126 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126

and _menhir_run100 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run88 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_goto_DeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_DeclExpr = 
# 62 "parser.mly"
                                ( u :: d )
# 279 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv511 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv512)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv513 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | LET ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | SEMISEMI ->
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv514)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | SEMISEMI ->
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv516)
    | _ ->
        _menhir_fail ()

and _menhir_goto_RecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_RecDeclExpr = 
# 54 "parser.mly"
                                      ( u :: d )
# 341 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv497 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv495 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv499 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, d) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 379 "parser.ml"
            ) = 
# 27 "parser.mly"
                                  ( RecDecl d )
# 383 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | _ ->
        _menhir_fail ()

and _menhir_goto_UnitDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv484)
    | IN | LET | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_DeclExpr = 
# 63 "parser.mly"
                  ( [u] )
# 423 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)) : 'freshtv490)

and _menhir_goto_LetExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LetExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_LetExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_LetExpr) = _v in
    ((let _v : 'tv_Expr = 
# 37 "parser.mly"
              ( e )
# 447 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)

and _menhir_goto_UnitRecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitRecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv472)
    | IN | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_RecDeclExpr = 
# 55 "parser.mly"
                     ( [u] )
# 478 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)

and _menhir_goto_FunExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_FunExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_FunExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_FunExpr) = _v in
    ((let _v : 'tv_Expr = 
# 38 "parser.mly"
              ( e )
# 502 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 515 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 521 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 116 "parser.mly"
                    ( ConstrExp (x, e) )
# 527 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv339 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv337 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 43 "parser.mly"
                              ( DFunExp (p, e) )
# 541 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv343 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv341 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 42 "parser.mly"
                            ( FunExp (p, e) )
# 555 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv355 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv351 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv353 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv365 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv363 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, c), _, t), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 125 "parser.mly"
                                      ( IfExp (c, t, e) )
# 664 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 35 "parser.mly"
             ( e )
# 681 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)) : 'freshtv362)) : 'freshtv364)) : 'freshtv366)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv369 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 689 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv367 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 695 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, f), _), _, p), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 59 "parser.mly"
                                     ( (f, p, e) )
# 704 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv373 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 712 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv371 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 718 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 58 "parser.mly"
                         ( (f, p, e) )
# 725 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv377 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv375 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, d), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 51 "parser.mly"
                                   ( LetRecExp (d, e) )
# 740 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 748 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 754 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x), _), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitDeclExpr = 
# 66 "parser.mly"
                 ( (x, e) )
# 761 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv385 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 769 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv383 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 775 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitDeclExpr = 
# 67 "parser.mly"
                          ( (f, FunExp (p, e)) )
# 782 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)) : 'freshtv386)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv389 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv387 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, d), _), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 50 "parser.mly"
                           ( LetExp (d, e) )
# 796 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 114 "parser.mly"
                         ( e )
# 817 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState107 | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | RSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv399 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ListExpr = 
# 120 "parser.mly"
               ( [e] )
# 871 "parser.ml"
                 in
                _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv402)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListExpr = 
# 121 "parser.mly"
          ( [e] )
# 885 "parser.ml"
             in
            _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv417 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RSQPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv413 * _menhir_state) * _menhir_state * 'tv_Expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RARROW ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv409 * _menhir_state) * _menhir_state * 'tv_Expr)))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | CONSTR _v ->
                            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
                        | DFUN ->
                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | FALSE ->
                            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | FUN ->
                            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | ID _v ->
                            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
                        | IF ->
                            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | INTV _v ->
                            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
                        | LET ->
                            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | LPAREN ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | LSQPAREN ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | MATCH ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | TRUE ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv410)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv411 * _menhir_state) * _menhir_state * 'tv_Expr)))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv415 * _menhir_state) * _menhir_state * 'tv_Expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv419 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv447 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv443 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv439 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                let (_v : (
# 17 "parser.mly"
       (Syntax.id)
# 999 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONS ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv435 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1010 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((((('freshtv431 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1020 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 17 "parser.mly"
       (Syntax.id)
# 1025 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RARROW ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((((((('freshtv427 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1036 "parser.ml"
                            ))) * (
# 17 "parser.mly"
       (Syntax.id)
# 1040 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | CONSTR _v ->
                                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
                            | DFUN ->
                                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | FALSE ->
                                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | FUN ->
                                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | ID _v ->
                                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
                            | IF ->
                                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | INTV _v ->
                                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
                            | LET ->
                                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | LPAREN ->
                                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | LSQPAREN ->
                                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | MATCH ->
                                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | TRUE ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState119
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv428)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((((((('freshtv429 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1080 "parser.ml"
                            ))) * (
# 17 "parser.mly"
       (Syntax.id)
# 1084 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((((((('freshtv433 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1095 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv437 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1106 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)) : 'freshtv440)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv441 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv445 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv457 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1129 "parser.ml"
        ))) * (
# 17 "parser.mly"
       (Syntax.id)
# 1133 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv455 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 1139 "parser.ml"
        ))) * (
# 17 "parser.mly"
       (Syntax.id)
# 1143 "parser.ml"
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
# 70 "parser.mly"
                                                                                           ( MatchExp (e1, e2, e3, x1, x2) )
# 1157 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_MatchExpr) = _v in
        ((let _v : 'tv_Expr = 
# 39 "parser.mly"
                ( e )
# 1174 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _2 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 1193 "parser.ml"
            ) = 
# 25 "parser.mly"
                    ( Exp e )
# 1197 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConsExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConsExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_ConsExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConsExpr = 
# 73 "parser.mly"
                           ( BinOp (Cons, l, r) )
# 1227 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
    | MenhirState0 | MenhirState15 | MenhirState113 | MenhirState119 | MenhirState16 | MenhirState107 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState28 | MenhirState76 | MenhirState78 | MenhirState32 | MenhirState36 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_ConsExpr) = _v in
        ((let _v : 'tv_Expr = 
# 36 "parser.mly"
               ( e )
# 1242 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | FALSE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | INTV _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LSQPAREN ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | TRUE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv316)
    | OOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | FALSE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | INTV _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LSQPAREN ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TRUE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv318)
    | AAND | AND | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_ConsExpr = 
# 74 "parser.mly"
            ( e )
# 1311 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 77 "parser.mly"
                         ( BinOp (Or, l, r) )
# 1366 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState0 | MenhirState15 | MenhirState113 | MenhirState119 | MenhirState16 | MenhirState107 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState28 | MenhirState76 | MenhirState78 | MenhirState32 | MenhirState36 | MenhirState37 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 78 "parser.mly"
             ( e )
# 1391 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | _ ->
        _menhir_fail ()

and _menhir_goto_EQExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_EQExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_EQExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_EQExpr) = _v in
    ((let _v : 'tv_ANDExpr = 
# 82 "parser.mly"
            ( e )
# 1417 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)

and _menhir_goto_GTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_GTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_GTExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_GTExpr) = _v in
    ((let _v : 'tv_LTExpr = 
# 90 "parser.mly"
             ( e )
# 1434 "parser.ml"
     in
    _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState119 | MenhirState113 | MenhirState15 | MenhirState107 | MenhirState16 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState78 | MenhirState76 | MenhirState28 | MenhirState32 | MenhirState36 | MenhirState37 | MenhirState64 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_LTExpr) = _v in
        ((let _v : 'tv_EQExpr = 
# 86 "parser.mly"
            ( e )
# 1453 "parser.ml"
         in
        _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_LTExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 81 "parser.mly"
                          ( BinOp (And, l, r) )
# 1470 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
    | _ ->
        _menhir_fail ()

and _menhir_reduce28 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, e) = _menhir_stack in
    let _v : 'tv_GTExpr = 
# 94 "parser.mly"
           ( e )
# 1482 "parser.ml"
     in
    _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState119 | MenhirState113 | MenhirState15 | MenhirState107 | MenhirState16 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState78 | MenhirState76 | MenhirState28 | MenhirState32 | MenhirState36 | MenhirState64 | MenhirState56 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv260)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | FALSE | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 89 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 1651 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_GTExpr = 
# 93 "parser.mly"
                     ( BinOp (Gt, l, r) )
# 1679 "parser.ml"
             in
            _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_EQExpr = 
# 85 "parser.mly"
                     ( BinOp (Eq, l, r) )
# 1707 "parser.ml"
             in
            _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | _ ->
        _menhir_fail ()

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (Syntax.program)
# 1770 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 21 "parser.mly"
      (Syntax.program)
# 1779 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 21 "parser.mly"
      (Syntax.program)
# 1787 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv256)) : 'freshtv258)

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 97 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 1811 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 98 "parser.mly"
                          ( BinOp (Minus, l, r) )
# 1837 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
    | MenhirState0 | MenhirState119 | MenhirState113 | MenhirState15 | MenhirState107 | MenhirState16 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState78 | MenhirState76 | MenhirState28 | MenhirState32 | MenhirState36 | MenhirState37 | MenhirState64 | MenhirState61 | MenhirState56 | MenhirState53 | MenhirState51 | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 99 "parser.mly"
            ( e )
# 1862 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | _ ->
        _menhir_fail ()

and _menhir_goto_VariantExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_VariantExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 1884 "parser.ml"
        ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 1894 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv225 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 1900 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, l) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 1909 "parser.ml"
            ) = 
# 28 "parser.mly"
                                       ( TypeDecl (x, l) )
# 1913 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv229 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 1923 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, c), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_VariantExpr = 
# 128 "parser.mly"
                                  ( c :: l )
# 1937 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)) : 'freshtv236)
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
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | FALSE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | INTV _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LSQPAREN ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TRUE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 102 "parser.mly"
                           ( BinOp (Mult, l, r) )
# 1980 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv220)
    | MenhirState0 | MenhirState15 | MenhirState113 | MenhirState119 | MenhirState16 | MenhirState107 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState28 | MenhirState76 | MenhirState78 | MenhirState32 | MenhirState36 | MenhirState37 | MenhirState64 | MenhirState61 | MenhirState56 | MenhirState53 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | FALSE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | INTV _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LSQPAREN ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | TRUE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | AAND | AND | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 103 "parser.mly"
              ( e )
# 2014 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv224)
    | _ ->
        _menhir_fail ()

and _menhir_goto_MulID : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulID -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2033 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2039 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, m) = _menhir_stack in
        let _v : 'tv_MulID = 
# 46 "parser.mly"
               ( x :: m )
# 2045 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)) : 'freshtv186)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv191 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2053 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2063 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2103 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2206 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2216 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2256 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2265 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2275 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | DFUN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FALSE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FUN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INTV _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | LET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LSQPAREN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TRUE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv213 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2315 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConstrExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConstrExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv176)
    | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, c) = _menhir_stack in
        let _v : 'tv_VariantExpr = 
# 129 "parser.mly"
                ( [c] )
# 2349 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)

and _menhir_goto_TypeExpr : _menhir_env -> 'ttv_tail -> 'tv_TypeExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2366 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (_v : 'tv_TypeExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv171 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2373 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (e : 'tv_TypeExpr) = _v in
    ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ConstrExpr = 
# 133 "parser.mly"
                          ( (x, e) )
# 2381 "parser.ml"
     in
    _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)

and _menhir_goto_ListExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 115 "parser.mly"
                                 ( ListExp e )
# 2407 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListExpr = 
# 119 "parser.mly"
                         ( e :: l )
# 2427 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | _ ->
        _menhir_fail ()

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState45 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 106 "parser.mly"
                    ( AppExp (e, x) )
# 2449 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | MenhirState0 | MenhirState15 | MenhirState113 | MenhirState119 | MenhirState16 | MenhirState107 | MenhirState17 | MenhirState100 | MenhirState94 | MenhirState91 | MenhirState88 | MenhirState82 | MenhirState26 | MenhirState28 | MenhirState76 | MenhirState78 | MenhirState32 | MenhirState36 | MenhirState37 | MenhirState64 | MenhirState56 | MenhirState61 | MenhirState53 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState39 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 107 "parser.mly"
           ( e )
# 2464 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
    | _ ->
        _menhir_fail ()

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (Syntax.id)
# 2473 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | EQ | RARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2487 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_MulID = 
# 47 "parser.mly"
        ( [x] )
# 2493 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState18 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
       (Syntax.id)
# 2531 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2543 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_TypeExpr = 
# 137 "parser.mly"
        ( TyBool )
# 2558 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _v) : 'freshtv132)) : 'freshtv134)
        | INT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_TypeExpr = 
# 136 "parser.mly"
      ( TyInt )
# 2571 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _v) : 'freshtv136)) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2581 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | SEMISEMI | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2590 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ConstrExpr = 
# 132 "parser.mly"
           ( (x, TyNone) )
# 2596 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2606 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 111 "parser.mly"
           ( BLit true )
# 2621 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | RSQPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState16 in
        ((let _v : 'tv_ListExpr = 
# 122 "parser.mly"
   ( [] )
# 2697 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv41 * _menhir_state) * _menhir_state * 'tv_Expr))))) * _menhir_state * 'tv_Expr)) * (
# 17 "parser.mly"
       (Syntax.id)
# 2773 "parser.ml"
        ))) * (
# 17 "parser.mly"
       (Syntax.id)
# 2777 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv43 * _menhir_state) * _menhir_state * 'tv_Expr))))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_UnitDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2811 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2820 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2829 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_UnitRecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2848 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 18 "parser.mly"
       (Syntax.id)
# 2922 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv103 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2956 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2965 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2974 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 2983 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_ConstrExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 3022 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (Syntax.id)
# 3034 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 3046 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState20 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 3058 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv26)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 3076 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)) : 'freshtv30)
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (Syntax.id)
# 3090 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 17 "parser.mly"
       (Syntax.id)
# 3102 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState90 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | DFUN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | FALSE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | FUN ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | INTV _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LSQPAREN ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MATCH ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TRUE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv24)
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 3147 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 16 "parser.mly"
       (int)
# 3157 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 110 "parser.mly"
           ( ILit i )
# 3162 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (Syntax.id)
# 3204 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 17 "parser.mly"
       (Syntax.id)
# 3214 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 113 "parser.mly"
           ( Var i )
# 3219 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 112 "parser.mly"
           ( BLit false )
# 3246 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
       (Syntax.id)
# 3266 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

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
# 21 "parser.mly"
      (Syntax.program)
# 3317 "parser.ml"
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
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DFUN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * _menhir_state) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv2)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv4)
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQPAREN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
# 17 "parser.mly"
       (Syntax.id)
# 3400 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 3411 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONSTR _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 17 "parser.mly"
       (Syntax.id)
# 3429 "parser.ml"
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
  


# 3449 "parser.ml"
