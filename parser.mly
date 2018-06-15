%{
open Syntax
%}

%token LPAREN RPAREN SEMISEMI
%token PLUS MULT LT GT AAND OOR
%token IF THEN ELSE TRUE FALSE
%token LET IN EQ AND
%token FUN RARROW
%token REC

%token <int> INTV
%token <Syntax.id> ID

%start toplevel
%type <Syntax.program> toplevel
%%

toplevel :
    e=Expr SEMISEMI { Exp e }
  | m=MulLET SEMISEMI { Decl m }
  | LET REC x=ID EQ FUN m=MulID RARROW e=Expr SEMISEMI { RecDecl (x, m, e) }
  | LET REC x=ID m=MulID EQ e=Expr SEMISEMI { RecDecl (x, m, e) }

MulLET :
  | LET d=DeclExpr m=MulLET { d :: m }
	| LET d=DeclExpr { [d] }

Expr :
    e=IfExpr { e }
  | e=ORExpr { e }
  | e=LetExpr { e }
  | e=FunExpr { e }
  
FunExpr :
	FUN m=MulID RARROW e=Expr { FunExp (m, e) }
	
MulID :
		x=ID m=MulID { x :: m }
	| x=ID { [x] }
  
LetExpr :
		LET d=DeclExpr IN e=Expr { LetExp (d, e) }
	| LET REC x=ID EQ FUN m=MulID RARROW e1=Expr IN e2=Expr { LetRecExp (x, m, e1, e2) }
	| LET REC x=ID m=MulID EQ e1=Expr IN e2=Expr { LetRecExp (x, m, e1, e2) }

DeclExpr :
		u=UnitDeclExpr AND d=DeclExpr { u :: d }
	| u=UnitDeclExpr { [u] }
	
UnitDeclExpr :
		x=ID EQ e=Expr { (x, e) }
	| f=ID p=MulID EQ e=Expr { (f, FunExp (p, e)) }
	
ORExpr :
		l=ORExpr OOR r=ANDExpr { BinOp (Or, l, r) }
	| e=ANDExpr { e }

ANDExpr :
		l=ANDExpr AAND r=LTExpr { BinOp (And, l, r) }
	| e=LTExpr { e }

LTExpr : 
    l=PExpr LT r=PExpr { BinOp (Lt, l, r) }
  | e=GTExpr { e }

GTExpr :
		l=PExpr GT r=PExpr { BinOp (Gt, l, r) }
	| e=PExpr { e }

PExpr :
    l=PExpr PLUS r=MExpr { BinOp (Plus, l, r) }
  | e=MExpr { e }

MExpr : 
    l=MExpr MULT r=AppExpr { BinOp (Mult, l, r) }
  | e=AppExpr { e }

AppExpr :
		e=AppExpr x=AExpr { AppExp (e, x) }
	| e=AExpr { e }

AExpr :
    i=INTV { ILit i }
  | TRUE   { BLit true }
  | FALSE  { BLit false }
  | i=ID   { Var i }
  | LPAREN e=Expr RPAREN { e }

IfExpr :
    IF c=Expr THEN t=Expr ELSE e=Expr { IfExp (c, t, e) }
