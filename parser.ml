
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
  | INTV of (
# 18 "parser.mly"
       (int)
# 35 "parser.ml"
)
  | IN
  | IF
  | ID of (
# 19 "parser.mly"
       (Syntax.id)
# 42 "parser.ml"
)
  | GT
  | FUN
  | FALSE
  | EQ
  | ELSE
  | DFUN
  | CONSTR of (
# 20 "parser.mly"
       (Syntax.id)
# 53 "parser.ml"
)
  | CONS
  | COMMA
  | AND
  | AAND

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState161
  | MenhirState160
  | MenhirState159
  | MenhirState156
  | MenhirState155
  | MenhirState153
  | MenhirState151
  | MenhirState148
  | MenhirState145
  | MenhirState139
  | MenhirState133
  | MenhirState132
  | MenhirState130
  | MenhirState127
  | MenhirState124
  | MenhirState122
  | MenhirState120
  | MenhirState115
  | MenhirState110
  | MenhirState107
  | MenhirState105
  | MenhirState103
  | MenhirState102
  | MenhirState100
  | MenhirState97
  | MenhirState94
  | MenhirState90
  | MenhirState88
  | MenhirState76
  | MenhirState73
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState60
  | MenhirState58
  | MenhirState57
  | MenhirState54
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState23
  | MenhirState16
  | MenhirState12
  | MenhirState9
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Syntax

# 134 "parser.ml"

let rec _menhir_goto_MulLET : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulLET -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv653 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv651 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, d), _, m) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_MulLET = 
# 34 "parser.mly"
                            ( d :: m )
# 150 "parser.ml"
         in
        _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v) : 'freshtv652)) : 'freshtv654)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, m) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.program)
# 169 "parser.ml"
            ) = 
# 28 "parser.mly"
                      ( Decl m )
# 173 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv659 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv660)) : 'freshtv662)
    | _ ->
        _menhir_fail ()

and _menhir_reduce60 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, d) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_MulLET = 
# 35 "parser.mly"
                  ( [d] )
# 193 "parser.ml"
     in
    _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v

and _menhir_run160 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | ID _v ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160

and _menhir_run133 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133

and _menhir_run100 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_goto_DeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv641 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_DeclExpr = 
# 87 "parser.mly"
                                ( u :: d )
# 301 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv645 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv646)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv647 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | LET ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | SEMISEMI ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv648)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv649 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | SEMISEMI ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv650)
    | _ ->
        _menhir_fail ()

and _menhir_goto_RecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv627 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv625 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_RecDeclExpr = 
# 79 "parser.mly"
                                      ( u :: d )
# 363 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)) : 'freshtv628)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv629 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv633 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, d) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.program)
# 401 "parser.ml"
            ) = 
# 29 "parser.mly"
                                  ( RecDecl d )
# 405 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_goto_CaseExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_CaseExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv619 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv617 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_MatchExpr = 
# 95 "parser.mly"
                               ( MatchExp (e, l) )
# 436 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv611) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_MatchExpr) = _v in
        ((let _v : 'tv_Expr = 
# 42 "parser.mly"
                ( e )
# 453 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv612)) : 'freshtv614)) : 'freshtv616)) : 'freshtv618)) : 'freshtv620)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv623 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv621 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let ((_menhir_stack, _menhir_s, m), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_CaseExpr = 
# 98 "parser.mly"
                                               ( (m, e) :: l )
# 471 "parser.ml"
         in
        _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 147 "parser.mly"
                              ( TupleExp t )
# 499 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)) : 'freshtv602)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv609 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv607 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleExpr = 
# 156 "parser.mly"
                           ( e :: l )
# 519 "parser.ml"
         in
        _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)) : 'freshtv610)
    | _ ->
        _menhir_fail ()

and _menhir_run139 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139

and _menhir_goto_UnitDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | ID _v ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LPAREN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | LSQPAREN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | UNDERBAR ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv592)
    | IN | LET | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_DeclExpr = 
# 88 "parser.mly"
                  ( [u] )
# 594 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)

and _menhir_goto_LetExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LetExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_LetExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv587) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_LetExpr) = _v in
    ((let _v : 'tv_Expr = 
# 40 "parser.mly"
              ( e )
# 618 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv588)) : 'freshtv590)

and _menhir_goto_UnitRecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitRecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv580)
    | IN | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_RecDeclExpr = 
# 80 "parser.mly"
                     ( [u] )
# 649 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv584)) : 'freshtv586)

and _menhir_goto_FunExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_FunExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_FunExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_FunExpr) = _v in
    ((let _v : 'tv_Expr = 
# 41 "parser.mly"
              ( e )
# 673 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv576)) : 'freshtv578)

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 686 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 692 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 145 "parser.mly"
                    ( ConstrExp (x, e) )
# 698 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv477 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv475 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 46 "parser.mly"
                              ( DFunExp (p, e) )
# 712 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv481 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv479 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 45 "parser.mly"
                            ( FunExp (p, e) )
# 726 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv483 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv485 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv493 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv489 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv491 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv503 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv501 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, c), _, t), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 160 "parser.mly"
                                      ( IfExp (c, t, e) )
# 835 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 38 "parser.mly"
             ( e )
# 852 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)) : 'freshtv500)) : 'freshtv502)) : 'freshtv504)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv507 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 860 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv505 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 866 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, f), _), _, p), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 84 "parser.mly"
                                     ( (f, p, e) )
# 875 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv511 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 883 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv509 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 889 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 83 "parser.mly"
                         ( (f, p, e) )
# 896 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv515 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv513 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, d), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 76 "parser.mly"
                                   ( LetRecExp (d, e) )
# 911 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv519 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 919 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv517 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 925 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitDeclExpr = 
# 92 "parser.mly"
                          ( (Var f, FunExp (p, e)) )
# 932 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv523 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, m), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitDeclExpr = 
# 91 "parser.mly"
                           ( (m, e) )
# 945 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv527 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv525 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, d), _), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 75 "parser.mly"
                           ( LetExp (d, e) )
# 959 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)) : 'freshtv528)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv535 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 143 "parser.mly"
                         ( e )
# 982 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv537 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleExpr = 
# 157 "parser.mly"
          ( [e] )
# 1007 "parser.ml"
             in
            _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv539 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState145 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv545 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | RSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv543 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ListExpr = 
# 151 "parser.mly"
               ( [e] )
# 1061 "parser.ml"
                 in
                _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv546)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv547 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListExpr = 
# 152 "parser.mly"
          ( [e] )
# 1075 "parser.ml"
             in
            _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv549 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv553 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
            | LPAREN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | LSQPAREN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | UNDERBAR ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv554)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv556)) : 'freshtv558)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | LPAREN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | LSQPAREN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | UNDERBAR ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv560)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, m), _, e) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_CaseExpr = 
# 99 "parser.mly"
                                ( [(m, e)] )
# 1152 "parser.ml"
             in
            _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)) : 'freshtv566)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv567 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.program)
# 1178 "parser.ml"
            ) = 
# 27 "parser.mly"
                    ( Exp e )
# 1182 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)) : 'freshtv570)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv572)) : 'freshtv574)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConsExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConsExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_ConsExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConsExpr = 
# 102 "parser.mly"
                           ( BinOp (Cons, l, r) )
# 1212 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | MenhirState0 | MenhirState26 | MenhirState151 | MenhirState27 | MenhirState145 | MenhirState28 | MenhirState139 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState40 | MenhirState88 | MenhirState90 | MenhirState44 | MenhirState48 | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_ConsExpr) = _v in
        ((let _v : 'tv_Expr = 
# 39 "parser.mly"
               ( e )
# 1227 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | FALSE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | INTV _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | LPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | LSQPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv454)
    | OOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | FALSE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | INTV _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | LPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LSQPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv456)
    | AAND | AND | COMMA | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_ConsExpr = 
# 103 "parser.mly"
            ( e )
# 1296 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 106 "parser.mly"
                         ( BinOp (Or, l, r) )
# 1351 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState0 | MenhirState26 | MenhirState151 | MenhirState27 | MenhirState145 | MenhirState28 | MenhirState139 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState40 | MenhirState88 | MenhirState90 | MenhirState44 | MenhirState48 | MenhirState49 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 107 "parser.mly"
             ( e )
# 1376 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_goto_EQExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_EQExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_EQExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_EQExpr) = _v in
    ((let _v : 'tv_ANDExpr = 
# 111 "parser.mly"
            ( e )
# 1402 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)

and _menhir_goto_GTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_GTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_GTExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_GTExpr) = _v in
    ((let _v : 'tv_LTExpr = 
# 119 "parser.mly"
             ( e )
# 1419 "parser.ml"
     in
    _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState151 | MenhirState26 | MenhirState145 | MenhirState27 | MenhirState139 | MenhirState28 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState90 | MenhirState88 | MenhirState40 | MenhirState44 | MenhirState48 | MenhirState49 | MenhirState76 | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_LTExpr) = _v in
        ((let _v : 'tv_EQExpr = 
# 115 "parser.mly"
            ( e )
# 1438 "parser.ml"
         in
        _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_LTExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 110 "parser.mly"
                          ( BinOp (And, l, r) )
# 1455 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | _ ->
        _menhir_fail ()

and _menhir_reduce41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, e) = _menhir_stack in
    let _v : 'tv_GTExpr = 
# 123 "parser.mly"
           ( e )
# 1467 "parser.ml"
     in
    _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState151 | MenhirState26 | MenhirState145 | MenhirState27 | MenhirState139 | MenhirState28 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState90 | MenhirState88 | MenhirState40 | MenhirState44 | MenhirState48 | MenhirState76 | MenhirState68 | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv398)
        | GT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | FALSE | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv403 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 118 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 1636 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_GTExpr = 
# 122 "parser.mly"
                     ( BinOp (Gt, l, r) )
# 1664 "parser.ml"
             in
            _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_EQExpr = 
# 114 "parser.mly"
                     ( BinOp (Eq, l, r) )
# 1692 "parser.ml"
             in
            _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | _ ->
        _menhir_fail ()

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Syntax.program)
# 1755 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 23 "parser.mly"
      (Syntax.program)
# 1764 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 23 "parser.mly"
      (Syntax.program)
# 1772 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv394)) : 'freshtv396)

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 126 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 1796 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 127 "parser.mly"
                          ( BinOp (Minus, l, r) )
# 1822 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState0 | MenhirState151 | MenhirState26 | MenhirState145 | MenhirState27 | MenhirState139 | MenhirState28 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState90 | MenhirState88 | MenhirState40 | MenhirState44 | MenhirState48 | MenhirState49 | MenhirState76 | MenhirState73 | MenhirState68 | MenhirState65 | MenhirState63 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 128 "parser.mly"
            ( e )
# 1847 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeTupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeTupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeExpr = 
# 171 "parser.mly"
                               ( TupleT (e :: l) )
# 1877 "parser.ml"
         in
        _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeTupleExpr = 
# 176 "parser.mly"
                               ( t :: l )
# 1894 "parser.ml"
         in
        _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_TExpr = 
# 180 "parser.mly"
                           ( t )
# 1922 "parser.ml"
             in
            _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 1937 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 1943 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConstrExpr = 
# 168 "parser.mly"
                          ( (x, t) )
# 1950 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv365 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 1958 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 1968 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 1974 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, t) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.program)
# 1983 "parser.ml"
            ) = 
# 30 "parser.mly"
                                    ( TypeDecl (x, t) )
# 1987 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv363 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 1997 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | _ ->
        _menhir_fail ()

and _menhir_goto_VariantExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_VariantExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv341 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 2013 "parser.ml"
        ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv337 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 2023 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 2029 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, l) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.program)
# 2038 "parser.ml"
            ) = 
# 31 "parser.mly"
                                       ( VariantDecl (x, l) )
# 2042 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 2052 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, c), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_VariantExpr = 
# 163 "parser.mly"
                                  ( c :: l )
# 2066 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ListMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 55 "parser.mly"
                                     ( ListExp e )
# 2094 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListMatchExpr = 
# 70 "parser.mly"
                                      ( l :: r )
# 2114 "parser.ml"
         in
        _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TupleMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 53 "parser.mly"
                                 ( TupleExp t )
# 2142 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleMatchExpr = 
# 62 "parser.mly"
                                        ( e :: l )
# 2162 "parser.ml"
         in
        _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
    | _ ->
        _menhir_fail ()

and _menhir_reduce15 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_ArgMatchExpr) -> _menhir_state -> 'tv_ConsMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _ r ->
    let (_menhir_stack, _menhir_s, l) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ArgMatchExpr = 
# 54 "parser.mly"
                                       ( BinOp (Cons, l, r) )
# 2175 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run107 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ArgMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | ID _v ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_goto_MulID : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulID -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2208 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2214 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, m) = _menhir_stack in
        let _v : 'tv_MulID = 
# 49 "parser.mly"
               ( x :: m )
# 2220 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv285 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2228 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv281 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2238 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv283 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2278 "parser.ml"
            )) * _menhir_state)) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2381 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2391 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2431 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv309 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2440 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2450 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2490 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
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
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | FALSE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | INTV _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | LPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LSQPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | AAND | AND | COMMA | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 131 "parser.mly"
                           ( BinOp (Mult, l, r) )
# 2534 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv272)
    | MenhirState0 | MenhirState26 | MenhirState151 | MenhirState27 | MenhirState145 | MenhirState28 | MenhirState139 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState40 | MenhirState88 | MenhirState90 | MenhirState44 | MenhirState48 | MenhirState49 | MenhirState76 | MenhirState73 | MenhirState68 | MenhirState65 | MenhirState63 | MenhirState60 | MenhirState58 | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | FALSE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | INTV _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LSQPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | AAND | AND | COMMA | CONS | ELSE | EQ | GT | IN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 132 "parser.mly"
              ( e )
# 2568 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv276)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 | MenhirState16 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LIST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_TypeExpr = 
# 172 "parser.mly"
                ( ListT t )
# 2599 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv254)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeExpr = 
# 173 "parser.mly"
           ( t )
# 2623 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState12 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv262)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeTupleExpr = 
# 177 "parser.mly"
           ( [t] )
# 2660 "parser.ml"
             in
            _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConstrExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConstrExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv242)
    | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, c) = _menhir_stack in
        let _v : 'tv_VariantExpr = 
# 164 "parser.mly"
                ( [c] )
# 2700 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)

and _menhir_goto_ListExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 144 "parser.mly"
                                 ( ListExp e )
# 2733 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListExpr = 
# 150 "parser.mly"
                         ( e :: l )
# 2753 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)) : 'freshtv240)
    | _ ->
        _menhir_fail ()

and _menhir_reduce53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_ListMatchExpr = 
# 72 "parser.mly"
   ( [] )
# 2764 "parser.ml"
     in
    _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce19 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 2771 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_ArgMatchExpr = 
# 58 "parser.mly"
        ( Var x )
# 2778 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ArgMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ArgMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 2791 "parser.ml"
        )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EQ | RARROW | RPAREN | RSQPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 2803 "parser.ml"
            )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
            let _v : 'tv_ArgMatchExpr = 
# 56 "parser.mly"
                            ( ConstrExp (x, e) )
# 2809 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 2819 "parser.ml"
            )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState110 | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | LPAREN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LSQPAREN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | UNDERBAR ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv188)
        | COMMA | EQ | RARROW | RPAREN | RSQPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ConsMatchExpr = 
# 67 "parser.mly"
                  ( e )
# 2856 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_ConsMatchExpr) = _v in
            ((match _menhir_s with
            | MenhirState107 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv190)
            | MenhirState110 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv192)
            | _ ->
                _menhir_fail ()) : 'freshtv194)) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | MenhirState115 | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | LPAREN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | LSQPAREN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | UNDERBAR ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv202)
        | CONS ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleMatchExpr = 
# 63 "parser.mly"
                  ( [e] )
# 2919 "parser.ml"
             in
            _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | MenhirState120 | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | LPAREN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LSQPAREN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | UNDERBAR ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | RSQPAREN ->
                _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv210)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListMatchExpr = 
# 71 "parser.mly"
                  ( [e] )
# 2966 "parser.ml"
             in
            _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState155 | MenhirState160 | MenhirState29 | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState153 | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | DFUN ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FALSE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FUN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | INTV _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LSQPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MATCH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)
    | _ ->
        _menhir_fail ()

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
       (Syntax.id)
# 3080 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
       (Syntax.id)
# 3090 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | EQ | RARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3104 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_MulID = 
# 50 "parser.mly"
        ( [x] )
# 3110 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState57 | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 135 "parser.mly"
                    ( AppExp (e, x) )
# 3134 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
    | MenhirState0 | MenhirState26 | MenhirState151 | MenhirState27 | MenhirState145 | MenhirState28 | MenhirState139 | MenhirState133 | MenhirState130 | MenhirState124 | MenhirState100 | MenhirState94 | MenhirState38 | MenhirState40 | MenhirState88 | MenhirState90 | MenhirState44 | MenhirState48 | MenhirState49 | MenhirState76 | MenhirState68 | MenhirState73 | MenhirState65 | MenhirState63 | MenhirState60 | MenhirState58 | MenhirState51 | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 136 "parser.mly"
           ( e )
# 3149 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)) : 'freshtv178)
    | _ ->
        _menhir_fail ()

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | ID _v ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState29 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv170)
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

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
# 19 "parser.mly"
       (Syntax.id)
# 3208 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 19 "parser.mly"
       (Syntax.id)
# 3218 "parser.ml"
    )) = _v in
    ((let _v : 'tv_TExpr = 
# 181 "parser.mly"
        ( TVar x )
# 3223 "parser.ml"
     in
    _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "parser.mly"
       (Syntax.id)
# 3230 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3242 "parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv162)
    | SEMISEMI | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3260 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ConstrExpr = 
# 167 "parser.mly"
           ( (x, TNone) )
# 3266 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3276 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 140 "parser.mly"
           ( BLit true )
# 3291 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | RSQPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState27 in
        ((let _v : 'tv_ListExpr = 
# 153 "parser.mly"
   ( [] )
# 3367 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
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
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 59 "parser.mly"
             ( None )
# 3420 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv43 * _menhir_state * 'tv_ArgMatchExpr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_UnitDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3502 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3511 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_ArgMatchExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3540 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_UnitRecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3569 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv85 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3643 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv123 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3677 "parser.ml"
        )) * _menhir_state)) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3686 "parser.ml"
        )) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3695 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3704 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_ConstrExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3743 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 3767 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv154)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
       (Syntax.id)
# 3779 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3791 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3803 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 19 "parser.mly"
       (Syntax.id)
# 3821 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | ID _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
    | ID _v ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | RSQPAREN ->
        _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | ID _v ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
       (Syntax.id)
# 3879 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | CONS | EQ ->
        _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "parser.mly"
       (Syntax.id)
# 3898 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | ID _v ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LPAREN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | LSQPAREN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | UNDERBAR ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | COMMA | CONS | EQ | RARROW | RPAREN | RSQPAREN | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 3920 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ArgMatchExpr = 
# 57 "parser.mly"
             ( ConstrExp (x, None) )
# 3926 "parser.ml"
         in
        _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
       (int)
# 3937 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 18 "parser.mly"
       (int)
# 3947 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 139 "parser.mly"
           ( ILit i )
# 3952 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
       (Syntax.id)
# 3994 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 19 "parser.mly"
       (Syntax.id)
# 4004 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 142 "parser.mly"
           ( Var i )
# 4009 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 141 "parser.mly"
           ( BLit false )
# 4036 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "parser.mly"
       (Syntax.id)
# 4056 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | AAND | AND | COMMA | CONS | ELSE | EQ | GT | IN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 20 "parser.mly"
       (Syntax.id)
# 4092 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 146 "parser.mly"
             ( ConstrExp (x, None) )
# 4098 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

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
# 23 "parser.mly"
      (Syntax.program)
# 4121 "parser.ml"
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
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DFUN ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | ID _v ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | LPAREN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | LSQPAREN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * _menhir_state) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState155 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv2)
        | UNDERBAR ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv4)
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
# 19 "parser.mly"
       (Syntax.id)
# 4212 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 19 "parser.mly"
       (Syntax.id)
# 4223 "parser.ml"
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
# 19 "parser.mly"
       (Syntax.id)
# 4245 "parser.ml"
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
  


# 4265 "parser.ml"
