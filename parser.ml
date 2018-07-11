
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
  | MenhirState170
  | MenhirState169
  | MenhirState168
  | MenhirState165
  | MenhirState164
  | MenhirState162
  | MenhirState159
  | MenhirState153
  | MenhirState147
  | MenhirState146
  | MenhirState144
  | MenhirState143
  | MenhirState141
  | MenhirState138
  | MenhirState136
  | MenhirState134
  | MenhirState131
  | MenhirState128
  | MenhirState124
  | MenhirState122
  | MenhirState119
  | MenhirState115
  | MenhirState112
  | MenhirState105
  | MenhirState99
  | MenhirState96
  | MenhirState91
  | MenhirState88
  | MenhirState86
  | MenhirState83
  | MenhirState81
  | MenhirState80
  | MenhirState77
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
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

# 150 "parser.ml"

let rec _menhir_goto_MulLET : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulLET -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState168 | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv685 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv683 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, d), _, m) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_MulLET = 
# 38 "parser.mly"
                            ( d :: m )
# 166 "parser.ml"
         in
        _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v) : 'freshtv684)) : 'freshtv686)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv693 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv689 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv687 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, m) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 185 "parser.ml"
            ) = 
# 32 "parser.mly"
                      ( Decl m )
# 189 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)) : 'freshtv690)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv691 * _menhir_state * 'tv_MulLET) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv692)) : 'freshtv694)
    | _ ->
        _menhir_fail ()

and _menhir_reduce69 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, d) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_MulLET = 
# 39 "parser.mly"
                  ( [d] )
# 209 "parser.ml"
     in
    _menhir_goto_MulLET _menhir_env _menhir_stack _menhir_s _v

and _menhir_run169 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState169
    | ID _v ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169

and _menhir_run147 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_DeclExpr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147

and _menhir_run134 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134

and _menhir_goto_DeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_DeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv675 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state * 'tv_UnitDeclExpr)) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_DeclExpr = 
# 95 "parser.mly"
                                ( u :: d )
# 331 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv674)) : 'freshtv676)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv677 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv678)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv679 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | LET ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | SEMISEMI ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv680)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv681 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | SEMISEMI ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv682)
    | _ ->
        _menhir_fail ()

and _menhir_goto_RecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_RecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv659 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state * 'tv_UnitRecDeclExpr)) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, u), _, d) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_RecDeclExpr = 
# 87 "parser.mly"
                                      ( u :: d )
# 393 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv663 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv661 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv667 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv665 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, d) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 431 "parser.ml"
            ) = 
# 33 "parser.mly"
                                  ( RecDecl d )
# 435 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)) : 'freshtv668)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv669 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv651 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv647 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv645 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 164 "parser.mly"
                              ( TupleExp t )
# 470 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv646)) : 'freshtv648)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv649 * _menhir_state) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv650)) : 'freshtv652)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_TupleExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleExpr = 
# 173 "parser.mly"
                           ( e :: l )
# 490 "parser.ml"
         in
        _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv654)) : 'freshtv656)
    | _ ->
        _menhir_fail ()

and _menhir_run153 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_goto_UnitDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | ID _v ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv638)
    | IN | LET | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_DeclExpr = 
# 96 "parser.mly"
                  ( [u] )
# 575 "parser.ml"
         in
        _menhir_goto_DeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_UnitDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)) : 'freshtv644)

and _menhir_goto_LetExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LetExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv635) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_LetExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_LetExpr) = _v in
    ((let _v : 'tv_Expr = 
# 44 "parser.mly"
              ( e )
# 599 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)

and _menhir_goto_UnitRecDeclExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_UnitRecDeclExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv626)
    | IN | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, u) = _menhir_stack in
        let _v : 'tv_RecDeclExpr = 
# 88 "parser.mly"
                     ( [u] )
# 630 "parser.ml"
         in
        _menhir_goto_RecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_UnitRecDeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)

and _menhir_goto_CaseExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_CaseExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 50 "parser.mly"
                       ( FunExp([(Var "match")], MatchExp (Var "match", l)) )
# 658 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)) : 'freshtv610)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv613 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv611 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_CaseExpr = 
# 106 "parser.mly"
                                               ( (m, e) :: l )
# 676 "parser.ml"
         in
        _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv612)) : 'freshtv614)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv623 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_CaseExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv621 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_CaseExpr) = _v in
        ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_MatchExpr = 
# 103 "parser.mly"
                               ( MatchExp (e, l) )
# 694 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_MatchExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_MatchExpr) = _v in
        ((let _v : 'tv_Expr = 
# 46 "parser.mly"
                ( e )
# 711 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_goto_FunExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_FunExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv605) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_FunExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_FunExpr) = _v in
    ((let _v : 'tv_Expr = 
# 45 "parser.mly"
              ( e )
# 730 "parser.ml"
     in
    _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)) : 'freshtv606)

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 743 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 749 "parser.ml"
        )) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 162 "parser.mly"
                    ( ConstrExp (x, e) )
# 755 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv505 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv503 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 51 "parser.mly"
                              ( DFunExp (p, e) )
# 769 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)) : 'freshtv506)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv507 * _menhir_state) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 49 "parser.mly"
                            ( FunExp (p, e) )
# 783 "parser.ml"
         in
        _menhir_goto_FunExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv511 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv512)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv513 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_CaseExpr = 
# 107 "parser.mly"
                                ( [(m, e)] )
# 826 "parser.ml"
             in
            _menhir_goto_CaseExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv515 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv529 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv525 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv527 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv539 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv537 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, c), _, t), _, e) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 177 "parser.mly"
                                      ( IfExp (c, t, e) )
# 950 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv533) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 42 "parser.mly"
             ( e )
# 967 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)) : 'freshtv536)) : 'freshtv538)) : 'freshtv540)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv543 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 975 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv541 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 981 "parser.ml"
        )) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 92 "parser.mly"
                  ( (f, [], e) )
# 988 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)) : 'freshtv544)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv547 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 996 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv545 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1002 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitRecDeclExpr = 
# 91 "parser.mly"
                         ( (f, p, e) )
# 1009 "parser.ml"
         in
        _menhir_goto_UnitRecDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)) : 'freshtv548)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv551 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv549 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, d), _, e) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 84 "parser.mly"
                                   ( LetRecExp (d, e) )
# 1024 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv555 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1032 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv553 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 1038 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, f), _, p), _, e) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_UnitDeclExpr = 
# 100 "parser.mly"
                          ( (Var f, FunExp (p, e)) )
# 1045 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv557 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, m), _), _, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_UnitDeclExpr = 
# 99 "parser.mly"
                           ( (m, e) )
# 1058 "parser.ml"
         in
        _menhir_goto_UnitDeclExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv563 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv561 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, d), _), _, e) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 83 "parser.mly"
                           ( LetExp (d, e) )
# 1072 "parser.ml"
         in
        _menhir_goto_LetExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 160 "parser.mly"
                         ( e )
# 1095 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleExpr = 
# 174 "parser.mly"
          ( [e] )
# 1120 "parser.ml"
             in
            _menhir_goto_TupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState159 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | RSQPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv579 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ListExpr = 
# 168 "parser.mly"
               ( [e] )
# 1178 "parser.ml"
                 in
                _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv582)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListExpr = 
# 169 "parser.mly"
          ( [e] )
# 1192 "parser.ml"
             in
            _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv584)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)) : 'freshtv588)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | FALSE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | INTV _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | LPAREN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LSQPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | UNDERBAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv590)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv592)) : 'freshtv594)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 1257 "parser.ml"
            ) = 
# 31 "parser.mly"
                    ( Exp e )
# 1261 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)) : 'freshtv598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv599 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConsExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConsExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState159 | MenhirState29 | MenhirState153 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState59 | MenhirState122 | MenhirState124 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv491) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_ConsExpr) = _v in
        ((let _v : 'tv_Expr = 
# 43 "parser.mly"
               ( e )
# 1289 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ConsExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_ConsExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConsExpr = 
# 110 "parser.mly"
                               ( BinOp (Cons, l, r) )
# 1306 "parser.ml"
         in
        _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
    | _ ->
        _menhir_fail ()

and _menhir_goto_AppendExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AppendExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_JoinExpr)) * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_JoinExpr)) * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_AppendExpr = 
# 114 "parser.mly"
                                 ( BinOp(Append, l, r) )
# 1326 "parser.ml"
         in
        _menhir_goto_AppendExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState159 | MenhirState29 | MenhirState153 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState59 | MenhirState122 | MenhirState124 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState112 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv484)
        | AAND | AND | APPEND | COMMA | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ConsExpr = 
# 111 "parser.mly"
                ( e )
# 1368 "parser.ml"
             in
            _menhir_goto_ConsExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_AppendExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)) : 'freshtv490)
    | _ ->
        _menhir_fail ()

and _menhir_goto_JoinExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_JoinExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_JoinExpr = 
# 118 "parser.mly"
                           ( BinOp (Join, l, r) )
# 1395 "parser.ml"
         in
        _menhir_goto_JoinExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
    | MenhirState0 | MenhirState27 | MenhirState159 | MenhirState28 | MenhirState153 | MenhirState29 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState124 | MenhirState122 | MenhirState59 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState112 | MenhirState105 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | APPEND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv472)
        | AAND | AND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_AppendExpr = 
# 115 "parser.mly"
              ( e )
# 1437 "parser.ml"
             in
            _menhir_goto_AppendExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_JoinExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JOIN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | FALSE ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | ID _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | INTV _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv458)
    | OOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | FALSE ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | ID _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | INTV _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv460)
    | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_JoinExpr = 
# 119 "parser.mly"
            ( e )
# 1517 "parser.ml"
         in
        _menhir_goto_JoinExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 122 "parser.mly"
                         ( BinOp (Or, l, r) )
# 1574 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState159 | MenhirState29 | MenhirState153 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState59 | MenhirState122 | MenhirState124 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState72 | MenhirState112 | MenhirState105 | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AAND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 123 "parser.mly"
             ( e )
# 1599 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | _ ->
        _menhir_fail ()

and _menhir_goto_EQExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_EQExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_EQExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_EQExpr) = _v in
    ((let _v : 'tv_ANDExpr = 
# 127 "parser.mly"
            ( e )
# 1625 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)

and _menhir_goto_GTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_GTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_GTExpr) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (e : 'tv_GTExpr) = _v in
    ((let _v : 'tv_LTExpr = 
# 135 "parser.mly"
             ( e )
# 1642 "parser.ml"
     in
    _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState159 | MenhirState28 | MenhirState153 | MenhirState29 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState124 | MenhirState122 | MenhirState59 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState112 | MenhirState105 | MenhirState72 | MenhirState99 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_LTExpr) = _v in
        ((let _v : 'tv_EQExpr = 
# 131 "parser.mly"
            ( e )
# 1661 "parser.ml"
         in
        _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv435 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LTExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv433 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (r : 'tv_LTExpr) = _v in
        ((let (_menhir_stack, _menhir_s, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 126 "parser.mly"
                          ( BinOp (And, l, r) )
# 1678 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | _ ->
        _menhir_fail ()

and _menhir_reduce48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, e) = _menhir_stack in
    let _v : 'tv_GTExpr = 
# 139 "parser.mly"
           ( e )
# 1690 "parser.ml"
     in
    _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
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

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState27 | MenhirState159 | MenhirState28 | MenhirState153 | MenhirState29 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState124 | MenhirState122 | MenhirState59 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState112 | MenhirState105 | MenhirState99 | MenhirState91 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv402)
        | GT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | FALSE | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 134 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 1869 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_GTExpr = 
# 138 "parser.mly"
                     ( BinOp (Gt, l, r) )
# 1897 "parser.ml"
             in
            _menhir_goto_GTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv423 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_EQExpr = 
# 130 "parser.mly"
                     ( BinOp (Eq, l, r) )
# 1925 "parser.ml"
             in
            _menhir_goto_EQExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | MULT | OOR | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
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

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (Syntax.program)
# 1990 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 27 "parser.mly"
      (Syntax.program)
# 1999 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 27 "parser.mly"
      (Syntax.program)
# 2007 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv398)) : 'freshtv400)

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 142 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 2031 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 143 "parser.mly"
                          ( BinOp (Minus, l, r) )
# 2057 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState0 | MenhirState27 | MenhirState159 | MenhirState28 | MenhirState153 | MenhirState29 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState124 | MenhirState122 | MenhirState59 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState112 | MenhirState105 | MenhirState72 | MenhirState99 | MenhirState96 | MenhirState91 | MenhirState88 | MenhirState86 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | AAND | AND | APPEND | COMMA | CONS | CONSTR _ | ELSE | EQ | FALSE | GT | ID _ | IN | INTV _ | JOIN | LET | LPAREN | LSQPAREN | LT | MINUS | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | STRING _ | THEN | TRUE | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 144 "parser.mly"
            ( e )
# 2082 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeTupleExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeTupleExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeExpr = 
# 188 "parser.mly"
                               ( TupleT (e :: l) )
# 2112 "parser.ml"
         in
        _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv375 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (l : 'tv_TypeTupleExpr) = _v in
        ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TypeTupleExpr = 
# 193 "parser.mly"
                               ( t :: l )
# 2129 "parser.ml"
         in
        _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TypeExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TypeExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_TExpr = 
# 197 "parser.mly"
                           ( t )
# 2157 "parser.ml"
             in
            _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2172 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2178 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ConstrExpr = 
# 185 "parser.mly"
                          ( (x, t) )
# 2185 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2193 "parser.ml"
        ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv365 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2203 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv363 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2209 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, t) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 2218 "parser.ml"
            ) = 
# 34 "parser.mly"
                                    ( TypeDecl (x, t) )
# 2222 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv367 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2232 "parser.ml"
            ))) * _menhir_state * 'tv_TypeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | _ ->
        _menhir_fail ()

and _menhir_goto_VariantExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_VariantExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv345 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2248 "parser.ml"
        ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv341 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2258 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2264 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), x), _, l) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 27 "parser.mly"
      (Syntax.program)
# 2273 "parser.ml"
            ) = 
# 35 "parser.mly"
                                       ( VariantDecl (x, l) )
# 2277 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv343 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 2287 "parser.ml"
            ))) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_ConstrExpr)) * _menhir_state * 'tv_VariantExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, c), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_VariantExpr = 
# 180 "parser.mly"
                                  ( c :: l )
# 2301 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | _ ->
        _menhir_fail ()

and _menhir_goto_MulID : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MulID -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, m) = _menhir_stack in
        let _v : 'tv_MulID = 
# 54 "parser.mly"
                         ( x :: m )
# 2422 "parser.ml"
         in
        _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2430 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2440 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2484 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2493 "parser.ml"
        )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2503 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2547 "parser.ml"
            )) * _menhir_state * 'tv_MulID) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ListMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 63 "parser.mly"
                                     ( ListExp e )
# 2576 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_ListMatchExpr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, l), _), _, r) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListMatchExpr = 
# 78 "parser.mly"
                                      ( l :: r )
# 2596 "parser.ml"
         in
        _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)) : 'freshtv310)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TupleMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TupleMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, t) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ArgMatchExpr = 
# 61 "parser.mly"
                                  ( TupleExp t )
# 2624 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_TupleMatchExpr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, e), _), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_TupleMatchExpr = 
# 70 "parser.mly"
                                        ( e :: l )
# 2644 "parser.ml"
         in
        _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | _ ->
        _menhir_fail ()

and _menhir_reduce21 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state -> _menhir_state -> 'tv_ConsMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _ r ->
    let ((_menhir_stack, _menhir_s, l), _) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ArgMatchExpr = 
# 62 "parser.mly"
                                       ( BinOp (Cons, l, r) )
# 2657 "parser.ml"
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
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | FALSE ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | ID _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | INTV _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, l), _, r) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 147 "parser.mly"
                           ( BinOp (Mult, l, r) )
# 2727 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv282)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState159 | MenhirState29 | MenhirState153 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState59 | MenhirState122 | MenhirState124 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState72 | MenhirState112 | MenhirState105 | MenhirState99 | MenhirState96 | MenhirState91 | MenhirState88 | MenhirState86 | MenhirState83 | MenhirState81 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | FALSE ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | ID _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | INTV _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LET | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 148 "parser.mly"
              ( e )
# 2763 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv286)
    | _ ->
        _menhir_fail ()

and _menhir_goto_TExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_TExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 | MenhirState16 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LIST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_TypeExpr = 
# 189 "parser.mly"
                ( ListT t )
# 2794 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv264)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeExpr = 
# 190 "parser.mly"
           ( t )
# 2818 "parser.ml"
             in
            _menhir_goto_TypeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState12 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv272)
        | RPAREN | SEMISEMI | VERT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, t) = _menhir_stack in
            let _v : 'tv_TypeTupleExpr = 
# 194 "parser.mly"
           ( [t] )
# 2855 "parser.ml"
             in
            _menhir_goto_TypeTupleExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_TExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ConstrExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ConstrExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv252)
    | SEMISEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, c) = _menhir_stack in
        let _v : 'tv_VariantExpr = 
# 181 "parser.mly"
                ( [c] )
# 2895 "parser.ml"
         in
        _menhir_goto_VariantExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_ConstrExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)

and _menhir_goto_ListExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ListExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 161 "parser.mly"
                                 ( ListExp e )
# 2928 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_ListExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, l) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ListExpr = 
# 167 "parser.mly"
                         ( e :: l )
# 2948 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_ListMatchExpr = 
# 80 "parser.mly"
   ( [] )
# 2959 "parser.ml"
     in
    _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 2966 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_ArgMatchExpr = 
# 66 "parser.mly"
        ( Var x )
# 2973 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ArgMatchExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ArgMatchExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2986 "parser.ml"
        )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | COMMA | CONSTR _ | EQ | FALSE | ID _ | INTV _ | LPAREN | LSQPAREN | RARROW | RPAREN | RSQPAREN | SEMI | TRUE | UNDERBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 2998 "parser.ml"
            )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
            let _v : 'tv_ArgMatchExpr = 
# 64 "parser.mly"
                            ( ConstrExp (x, e) )
# 3004 "parser.ml"
             in
            _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv202)
    | MenhirState45 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv204)
        | COMMA | CONSTR _ | EQ | FALSE | ID _ | INTV _ | LPAREN | LSQPAREN | RARROW | RPAREN | RSQPAREN | SEMI | TRUE | UNDERBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ConsMatchExpr = 
# 75 "parser.mly"
                  ( e )
# 3052 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_ConsMatchExpr) = _v in
            ((match _menhir_s with
            | MenhirState42 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv206)
            | MenhirState45 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_ConsMatchExpr) = _v in
                (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv208)
            | _ ->
                _menhir_fail ()) : 'freshtv210)) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv214)
    | MenhirState50 | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv216)
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_TupleMatchExpr = 
# 71 "parser.mly"
                  ( [e] )
# 3120 "parser.ml"
             in
            _menhir_goto_TupleMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv220)
    | MenhirState55 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv222)
        | RSQPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
            let _v : 'tv_ListMatchExpr = 
# 79 "parser.mly"
                  ( [e] )
# 3172 "parser.ml"
             in
            _menhir_goto_ListMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv226)
    | MenhirState162 | MenhirState119 | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState63 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv230)
    | MenhirState136 | MenhirState34 | MenhirState65 | MenhirState115 | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | EQ | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_MulID = 
# 55 "parser.mly"
                  ( [x] )
# 3262 "parser.ml"
             in
            _menhir_goto_MulID _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv234)
    | MenhirState164 | MenhirState169 | MenhirState30 | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState143 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONSTR _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | DFUN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | FALSE ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | FUN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | FUNCTION ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | ID _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | IF ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | INTV _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | LSQPAREN ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | MATCH ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | STRING _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | TRUE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv238)
    | _ ->
        _menhir_fail ()

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 3327 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState80 | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 151 "parser.mly"
                    ( AppExp (e, x) )
# 3350 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
    | MenhirState0 | MenhirState27 | MenhirState28 | MenhirState159 | MenhirState29 | MenhirState153 | MenhirState147 | MenhirState144 | MenhirState138 | MenhirState134 | MenhirState128 | MenhirState57 | MenhirState59 | MenhirState122 | MenhirState124 | MenhirState64 | MenhirState67 | MenhirState71 | MenhirState72 | MenhirState112 | MenhirState105 | MenhirState99 | MenhirState91 | MenhirState96 | MenhirState88 | MenhirState86 | MenhirState83 | MenhirState81 | MenhirState74 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (e : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 152 "parser.mly"
           ( e )
# 3365 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
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
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv190)
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
# 3430 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 22 "parser.mly"
       (Syntax.id)
# 3440 "parser.ml"
    )) = _v in
    ((let _v : 'tv_TExpr = 
# 198 "parser.mly"
        ( TVar x )
# 3445 "parser.ml"
     in
    _menhir_goto_TExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 3452 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3464 "parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv182)
    | SEMISEMI | VERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3482 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ConstrExpr = 
# 184 "parser.mly"
           ( (x, TNone) )
# 3488 "parser.ml"
         in
        _menhir_goto_ConstrExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3498 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 156 "parser.mly"
           ( BLit true )
# 3513 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
       (string)
# 3520 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (s : (
# 24 "parser.mly"
       (string)
# 3530 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 159 "parser.mly"
             ( SLit s )
# 3535 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
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
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
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
        let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState28 in
        ((let _v : 'tv_ListExpr = 
# 170 "parser.mly"
   ( [] )
# 3619 "parser.ml"
         in
        _menhir_goto_ListExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)
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
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
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
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 67 "parser.mly"
             ( None )
# 3676 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ArgMatchExpr = 
# 59 "parser.mly"
           ( BLit true )
# 3690 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * 'tv_DeclExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_DeclExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_UnitDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3767 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3776 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv63 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_RecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_UnitRecDeclExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3795 "parser.ml"
        )) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv69 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_AppendExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_JoinExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3889 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state) * _menhir_state * 'tv_MulID)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 3938 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * 'tv_ArgMatchExpr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3982 "parser.ml"
        )) * _menhir_state * 'tv_ArgMatchExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 3991 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4010 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_ConstrExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4049 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_TExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state) * (
# 22 "parser.mly"
       (Syntax.id)
# 4073 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv170)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4085 "parser.ml"
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
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 22 "parser.mly"
       (Syntax.id)
# 4099 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | DFUN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | FALSE ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | FUN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | FUNCTION ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | ID _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | IF ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | INTV _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LET ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LSQPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MATCH ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STRING _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | TRUE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv32)
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
# 4216 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 21 "parser.mly"
       (int)
# 4226 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ArgMatchExpr = 
# 58 "parser.mly"
           ( ILit i )
# 4231 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)

and _menhir_run136 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4238 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | CONS | EQ ->
        _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136

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
# 4278 "parser.ml"
     in
    _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 4285 "parser.ml"
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
# 4313 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_ArgMatchExpr = 
# 65 "parser.mly"
             ( ConstrExp (x, None) )
# 4319 "parser.ml"
         in
        _menhir_goto_ArgMatchExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
       (int)
# 4330 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 21 "parser.mly"
       (int)
# 4340 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 155 "parser.mly"
           ( ILit i )
# 4345 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (Syntax.id)
# 4391 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 22 "parser.mly"
       (Syntax.id)
# 4401 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 158 "parser.mly"
           ( Var i )
# 4406 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

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

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 157 "parser.mly"
           ( BLit false )
# 4474 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INTV _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LSQPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | UNDERBAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (Syntax.id)
# 4508 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTR _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LSQPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MATCH ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | STRING _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | TRUE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | AAND | AND | APPEND | COMMA | CONS | ELSE | EQ | GT | IN | JOIN | LT | MINUS | MULT | OOR | PLUS | RPAREN | RSQPAREN | SEMI | SEMISEMI | THEN | VERT | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 23 "parser.mly"
       (Syntax.id)
# 4548 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_AExpr = 
# 163 "parser.mly"
             ( ConstrExp (x, None) )
# 4554 "parser.ml"
         in
        _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

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
# 4577 "parser.ml"
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
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DFUN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTR _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | ID _v ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | INTV _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | LPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | LSQPAREN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * _menhir_state) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState164 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv2)
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | UNDERBAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv4)
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
# 4678 "parser.ml"
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
# 4689 "parser.ml"
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
# 4711 "parser.ml"
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
  


# 4731 "parser.ml"
