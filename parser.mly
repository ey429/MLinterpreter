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
%token TYPE OF
%token COMMA
%token LIST
%token UNDERBAR
%token FUNCTION
%token JOIN
%token APPEND

%token <int> INTV
%token <Syntax.id> ID
%token <Syntax.id> CONSTR
%token <string> STRING

%start toplevel
%type <Syntax.program> toplevel
%%

toplevel :
    e=Expr SEMISEMI { Exp e }
  | m=MulLET SEMISEMI { Decl m }
	|	LET REC d=RecDeclExpr SEMISEMI { RecDecl d }
	| TYPE x=ID EQ t=TypeExpr SEMISEMI { TypeDecl (x, t) }
	| TYPE x=ID EQ l=VariantExpr SEMISEMI { VariantDecl (x, l) }

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
	| FUNCTION l=CaseExpr { FunExp([(Var "match")], MatchExp (Var "match", l)) }
	| DFUN p=MulID RARROW e=Expr { DFunExp (p, e) }
	
MulID :
		x=ArgMatchExpr m=MulID { x :: m }
	| x=ArgMatchExpr { [x] }

ArgMatchExpr :
    i=INTV { ILit i }
  | TRUE   { BLit true }
  | FALSE  { BLit false }
	| LPAREN t=TupleMatchExpr RPAREN { TupleExp t }
	| l=ArgMatchExpr CONS r=ConsMatchExpr { BinOp (Cons, l, r) }
	| LSQPAREN e=ListMatchExpr RSQPAREN { ListExp e }
  | x=CONSTR e=ArgMatchExpr { ConstrExp (x, e) }
  | x=CONSTR { ConstrExp (x, None) }
	| x=ID { Var x }
  | UNDERBAR { None }

TupleMatchExpr :
		e=ArgMatchExpr COMMA l=TupleMatchExpr { e :: l }
	| e=ArgMatchExpr { [e] }
	
ConsMatchExpr :
		l=ArgMatchExpr CONS r=ConsMatchExpr { BinOp (Cons, l, r) }
	| e=ArgMatchExpr { e }

ListMatchExpr :
		l=ArgMatchExpr SEMI r=ListMatchExpr { l :: r }
	| e=ArgMatchExpr { [e] }
	| { [] }
  
LetExpr :
		LET d=DeclExpr IN e=Expr { LetExp (d, e) }
	| LET REC d=RecDeclExpr IN e=Expr { LetRecExp (d, e) }

RecDeclExpr :
		u=UnitRecDeclExpr AND d=RecDeclExpr { u :: d }
	|	u=UnitRecDeclExpr { [u] }

UnitRecDeclExpr :
		f=ID p=MulID EQ e=Expr { (f, p, e) }
	| f=ID EQ e=Expr { (f, [], e) }

DeclExpr :
		u=UnitDeclExpr AND d=DeclExpr { u :: d }
	| u=UnitDeclExpr { [u] }
	
UnitDeclExpr :
		m=ArgMatchExpr EQ e=Expr { (m, e) }
	| f=ID p=MulID EQ e=Expr { (Var f, FunExp (p, e)) }
	
MatchExpr :
		MATCH e=Expr WITH l=CaseExpr { MatchExp (e, l) }

CaseExpr :
		m=ArgMatchExpr RARROW e=Expr VERT l=CaseExpr { (m, e) :: l }
	| m=ArgMatchExpr RARROW e=Expr { [(m, e)] }

ConsExpr :
		l=AppendExpr CONS r=ConsExpr { BinOp (Cons, l, r) }
	| e=AppendExpr { e }

AppendExpr :
		l=JoinExpr APPEND r=AppendExpr { BinOp(Append, l, r) }
	| e=JoinExpr { e }
	
JoinExpr :
		l=ORExpr JOIN r=JoinExpr { BinOp (Join, l, r) }
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
  | s=STRING { SLit s }
  | LPAREN e=Expr RPAREN { e }
  | LSQPAREN e=ListExpr RSQPAREN { ListExp e }
  | x=CONSTR e=Expr { ConstrExp (x, e) }
  | x=CONSTR { ConstrExp (x, None) }
  | LPAREN t=TupleExpr RPAREN { TupleExp t }
  
ListExpr :
		e=Expr SEMI l=ListExpr { e :: l }
	|	e=Expr SEMI { [e] }
	| e=Expr { [e] }
	| { [] }

TupleExpr :
		e=Expr COMMA l=TupleExpr { e :: l }
	| e=Expr { [e] }

IfExpr :
    IF c=Expr THEN t=Expr ELSE e=Expr { IfExp (c, t, e) }
    
VariantExpr :
		c=ConstrExpr VERT l=VariantExpr { c :: l }
	| c=ConstrExpr { [c] }

ConstrExpr :
		x=CONSTR { (x, TNone) }
	| x=CONSTR OF t=TypeExpr { (x, t) }
	
TypeExpr :
		e=TExpr MULT l=TypeTupleExpr { TupleT (e :: l) }
	| t=TExpr LIST { ListT t }
	| t=TExpr { t }

TypeTupleExpr :
		t=TExpr MULT l=TypeTupleExpr { t :: l }
	| t=TExpr { [t] }
		
TExpr :
		LPAREN t=TypeExpr RPAREN { t }
	| x=ID { TVar x }
