%{
open Syntax
%}

%token LPAREN RPAREN SEMISEMI
%token PLUS MINUS MULT LT GT AAND OOR
%token IF THEN ELSE TRUE FALSE
%token LET IN EQ AND
%token FUN DFUN RARROW
%token REC
%token LSQPAREN RSQPAREN SEMI CONS
%token MATCH WITH VERT

%token <int> INTV
%token <Syntax.id> ID

%start toplevel
%type <Syntax.program> toplevel
%%

toplevel :
    e=Expr SEMISEMI { Exp e }
  | m=MulLET SEMISEMI { Decl m }
	|	LET REC d=RecDeclExpr SEMISEMI { RecDecl d }

MulLET :
  | LET d=DeclExpr m=MulLET { d :: m }
	| LET d=DeclExpr { [d] }

Expr :
    e=IfExpr { e }
  | e=ConsExpr { e }
  | e=LetExpr { e }
  | e=FunExpr { e }
  | e=MatchExpr { e }
  
FunExpr :
		FUN p=MulID RARROW e=Expr { FunExp (p, e) }
	| DFUN p=MulID RARROW e=Expr { DFunExp (p, e) }
	
MulID :
		x=ID m=MulID { x :: m }
	| x=ID { [x] }
  
LetExpr :
		LET d=DeclExpr IN e=Expr { LetExp (d, e) }
	| LET REC d=RecDeclExpr IN e=Expr { LetRecExp (d, e) }

RecDeclExpr :
		u=UnitRecDeclExpr AND d=RecDeclExpr { u :: d }
	|	u=UnitRecDeclExpr { [u] }

UnitRecDeclExpr :
		f=ID p=MulID EQ e=Expr { (f, p, e) }
	| f=ID EQ FUN p=MulID RARROW e=Expr { (f, p, e) }

DeclExpr :
		u=UnitDeclExpr AND d=DeclExpr { u :: d }
	| u=UnitDeclExpr { [u] }
	
UnitDeclExpr :
		x=ID EQ e=Expr { (x, e) }
	| f=ID p=MulID EQ e=Expr { (f, FunExp (p, e)) }
	
MatchExpr :
	MATCH e1=Expr WITH LSQPAREN RSQPAREN RARROW e2=Expr VERT x1=ID CONS x2=ID RARROW e3=Expr { MatchExp (e1, e2, e3, x1, x2) } 

ConsExpr :
		l=ORExpr CONS r=ConsExpr { BinOp (Cons, l, r) }
	| e=ORExpr { e }

ORExpr :
		l=ORExpr OOR r=ANDExpr { BinOp (Or, l, r) }
	| e=ANDExpr { e }

ANDExpr :
		l=ANDExpr AAND r=LTExpr { BinOp (And, l, r) }
	| e=EQExpr { e }

EQExpr : 
		l=PExpr EQ r=PExpr { BinOp (Eq, l, r) }
	| e=LTExpr { e }

LTExpr : 
    l=PExpr LT r=PExpr { BinOp (Lt, l, r) }
  | e=GTExpr { e }

GTExpr :
		l=PExpr GT r=PExpr { BinOp (Gt, l, r) }
	| e=PExpr { e }

PExpr :
    l=PExpr PLUS r=MExpr { BinOp (Plus, l, r) }
  | l=PExpr MINUS r=MExpr { BinOp (Minus, l, r) }
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
  | LSQPAREN e=ListExpr RSQPAREN { ListExp e }
  
ListExpr :
		e=Expr SEMI l=ListExpr { e :: l }
	|	e=Expr SEMI { [e] }
	| e=Expr { [e] }
	| { [] }

IfExpr :
    IF c=Expr THEN t=Expr ELSE e=Expr { IfExp (c, t, e) }
