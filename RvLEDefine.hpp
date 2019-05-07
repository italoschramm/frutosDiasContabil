// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEDefine.pas' rev: 29.00 (Windows)

#ifndef RvledefineHPP
#define RvledefineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvledefine
{
//-- forward type declarations -----------------------------------------------
struct TVMT;
struct TAddress;
struct TCodeLabel;
class DELPHICLASS TCodeLabelObject;
struct TExternalFunc;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString TIdentifier;

typedef System::Classes::TPointerList *PIntList;

typedef System::StaticArray<int, 16380> TIntList;

typedef TVMT *PVMT;

struct DECLSPEC_DRECORD TVMT
{
public:
	TVMT *ParentVMT;
	void *Module;
	System::Classes::TPointerList *MethodList;
	System::UnicodeString ClassName;
	void *ClassType;
};


enum DECLSPEC_DENUM TTokenType : unsigned char { ttID, ttString, ttInteger, ttFloat, ttCurrency, ttOperator, ttEOF };

typedef System::Set<TTokenType, TTokenType::ttID, TTokenType::ttEOF> TTokenTypeSet;

enum DECLSPEC_DENUM TScope : unsigned char { scPrivate, scProtected, scPublic };

typedef System::Set<TScope, TScope::scPrivate, TScope::scPublic> TScopeSet;

enum DECLSPEC_DENUM TIDKind : unsigned char { idkVar, idkType, idkConst, idkFunc, idkMethod, idkOp };

enum DECLSPEC_DENUM TTypeStruc : unsigned char { tsSimple, tsEnumerated, tsArray, tsRecord, tsFunction, tsClass };

enum DECLSPEC_DENUM TTypeKind : unsigned char { tkBoolean, tkShortint, tkByte, tkSmallint, tkWord, tkInteger, tkSingle, tkDouble, tkExtended, tkCurrency, tkChar, tkString, tkPointer, tkComplex };

typedef System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex> TypeKindSet;

enum DECLSPEC_DENUM TMemberType : unsigned char { mtElement, mtField, mtMethod, mtProperty };

enum DECLSPEC_DENUM TOpKind : unsigned char { okTerm, okAssign, okAddAssign, okSubAssign, okMulAssign, okDivAssign, okEQ, okNE, okLT, okGT, okLE, okGE, okIS, okAdd, okSub, okOR, okXOR, okMul, okDiv, okIDiv, okMod, okAND, okSHL, okSHR, okAs, okPos, okNeg, okNOT, okLeftAssign, okRightAssign, okFunction, okMethod };

enum DECLSPEC_DENUM TAddressLoc : unsigned char { alBP, alSP, alDS };

struct DECLSPEC_DRECORD TAddress
{
public:
	TAddressLoc Loc;
	System::Word Module;
	int Offset;
};


typedef TCodeLabel *PCodeLabel;

struct DECLSPEC_DRECORD TCodeLabel
{
public:
	int Offset;
	System::Classes::TList* AssignList;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TCodeLabelObject : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TCodeLabel CodeLabel;
public:
	/* TObject.Create */ inline __fastcall TCodeLabelObject(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TCodeLabelObject(void) { }
	
};

#pragma pack(pop)

typedef TExternalFunc *PExternalFunc;

struct DECLSPEC_DRECORD TExternalFunc
{
public:
	int Offset;
};


//-- var, const, procedure ---------------------------------------------------
static const System::Int8 MAXIDLENGTH = System::Int8(0x40);
extern DELPHI_PACKAGE bool UseWideChar;
static const System::Int8 RAVE_STACK = System::Int8(0x0);
static const System::Int8 RAVEPUSHADDR = System::Int8(0x1);
static const System::Int8 RAVEPUSHMETHODADDR = System::Int8(0x2);
static const System::Int8 RAVEPUSHVAR = System::Int8(0x3);
static const System::Int8 RAVEPUSHDATA = System::Int8(0x4);
static const System::Int8 RAVEPUSHCONST = System::Int8(0x5);
static const System::Int8 RAVEPUSHSTR = System::Int8(0x6);
static const System::Int8 RAVEPUSHMETHODSTR = System::Int8(0x7);
static const System::Int8 RAVEPUSHDEFAULT = System::Int8(0x8);
static const System::Int8 RAVEPOP = System::Int8(0x9);
static const System::Int8 RAVE_CALL = System::Int8(0x9);
static const System::Int8 RAVEENTER = System::Int8(0xa);
static const System::Int8 RAVECOPYPARAMDATA = System::Int8(0xb);
static const System::Int8 RAVECOPYPARAMSTR = System::Int8(0xc);
static const System::Int8 RAVECOPYPARAMDATADEF = System::Int8(0xd);
static const System::Int8 RAVECOPYPARAMSTRDEF = System::Int8(0xe);
static const System::Int8 RAVEFREESTR = System::Int8(0xf);
static const System::Int8 RAVEFREEREC = System::Int8(0x10);
static const System::Int8 RAVELOADVAR = System::Int8(0x11);
static const System::Int8 RAVELOADDATA = System::Int8(0x12);
static const System::Int8 RAVERETURN = System::Int8(0x13);
static const System::Int8 RAVERETURNRES = System::Int8(0x14);
static const System::Int8 RAVECALL = System::Int8(0x15);
static const System::Int8 RAVECALLEXTERNALFUNC = System::Int8(0x16);
static const System::Int8 RAVECALLEXTERNALPROC = System::Int8(0x17);
static const System::Int8 RAVELONGCALL = System::Int8(0x18);
static const System::Int8 RAVE_JUMP = System::Int8(0x18);
static const System::Int8 RAVEJUMPEQ = System::Int8(0x19);
static const System::Int8 RAVEJUMPNE = System::Int8(0x1a);
static const System::Int8 RAVEJUMPLT = System::Int8(0x1b);
static const System::Int8 RAVEJUMPLE = System::Int8(0x1c);
static const System::Int8 RAVEJUMPGT = System::Int8(0x1d);
static const System::Int8 RAVEJUMPGE = System::Int8(0x1e);
static const System::Int8 RAVEJUMP = System::Int8(0x1f);
static const System::Int8 RAVELONGJUMP = System::Int8(0x20);
static const System::Int8 RAVE_COMPARE = System::Int8(0x20);
static const System::Int8 RAVEEQBOL = System::Int8(0x21);
static const System::Int8 RAVENEBOL = System::Int8(0x22);
static const System::Int8 RAVELTBOL = System::Int8(0x23);
static const System::Int8 RAVEGTBOL = System::Int8(0x24);
static const System::Int8 RAVELEBOL = System::Int8(0x25);
static const System::Int8 RAVEGEBOL = System::Int8(0x26);
static const System::Int8 RAVEEQINT = System::Int8(0x27);
static const System::Int8 RAVENEINT = System::Int8(0x28);
static const System::Int8 RAVELTINT = System::Int8(0x29);
static const System::Int8 RAVEGTINT = System::Int8(0x2a);
static const System::Int8 RAVELEINT = System::Int8(0x2b);
static const System::Int8 RAVEGEINT = System::Int8(0x2c);
static const System::Int8 RAVEEQEXT = System::Int8(0x2d);
static const System::Int8 RAVENEEXT = System::Int8(0x2e);
static const System::Int8 RAVELTEXT = System::Int8(0x2f);
static const System::Int8 RAVEGTEXT = System::Int8(0x30);
static const System::Int8 RAVELEEXT = System::Int8(0x31);
static const System::Int8 RAVEGEEXT = System::Int8(0x32);
static const System::Int8 RAVEEQCUR = System::Int8(0x33);
static const System::Int8 RAVENECUR = System::Int8(0x34);
static const System::Int8 RAVELTCUR = System::Int8(0x35);
static const System::Int8 RAVEGTCUR = System::Int8(0x36);
static const System::Int8 RAVELECUR = System::Int8(0x37);
static const System::Int8 RAVEGECUR = System::Int8(0x38);
static const System::Int8 RAVEEQCHR = System::Int8(0x39);
static const System::Int8 RAVENECHR = System::Int8(0x3a);
static const System::Int8 RAVELTCHR = System::Int8(0x3b);
static const System::Int8 RAVEGTCHR = System::Int8(0x3c);
static const System::Int8 RAVELECHR = System::Int8(0x3d);
static const System::Int8 RAVEGECHR = System::Int8(0x3e);
static const System::Int8 RAVEEQSTR = System::Int8(0x3f);
static const System::Int8 RAVENESTR = System::Int8(0x40);
static const System::Int8 RAVELTSTR = System::Int8(0x41);
static const System::Int8 RAVEGTSTR = System::Int8(0x42);
static const System::Int8 RAVELESTR = System::Int8(0x43);
static const System::Int8 RAVEGESTR = System::Int8(0x44);
static const System::Int8 RAVE_BINARY = System::Int8(0x44);
static const System::Int8 RAVEORBOL = System::Int8(0x45);
static const System::Int8 RAVEXORBOL = System::Int8(0x46);
static const System::Int8 RAVEANDBOL = System::Int8(0x47);
static const System::Int8 RAVEADDINT = System::Int8(0x48);
static const System::Int8 RAVESUBINT = System::Int8(0x49);
static const System::Int8 RAVEMULINT = System::Int8(0x4a);
static const System::Int8 RAVEDIVINT = System::Int8(0x4b);
static const System::Int8 RAVEMODINT = System::Int8(0x4c);
static const System::Int8 RAVEORINT = System::Int8(0x4d);
static const System::Int8 RAVEXORINT = System::Int8(0x4e);
static const System::Int8 RAVEANDINT = System::Int8(0x4f);
static const System::Int8 RAVESHLINT = System::Int8(0x50);
static const System::Int8 RAVESHRINT = System::Int8(0x51);
static const System::Int8 RAVEADDEXT = System::Int8(0x52);
static const System::Int8 RAVESUBEXT = System::Int8(0x53);
static const System::Int8 RAVEMULEXT = System::Int8(0x54);
static const System::Int8 RAVEDIVEXT = System::Int8(0x55);
static const System::Int8 RAVEADDCUR = System::Int8(0x56);
static const System::Int8 RAVESUBCUR = System::Int8(0x57);
static const System::Int8 RAVEMULCUR = System::Int8(0x58);
static const System::Int8 RAVEDIVCUR = System::Int8(0x59);
static const System::Int8 RAVE_UNARY = System::Int8(0x59);
static const System::Int8 RAVENOTBOL = System::Int8(0x5a);
static const System::Int8 RAVENOTINT = System::Int8(0x5b);
static const System::Int8 RAVENEGINT = System::Int8(0x5c);
static const System::Int8 RAVENEGEXT = System::Int8(0x5d);
static const System::Int8 RAVENEGCUR = System::Int8(0x5e);
static const System::Int8 RAVE_CONV = System::Int8(0x5e);
static const System::Int8 RAVESHT2INT = System::Int8(0x5f);
static const System::Int8 RAVEBYT2INT = System::Int8(0x60);
static const System::Int8 RAVESML2INT = System::Int8(0x61);
static const System::Int8 RAVEWRD2INT = System::Int8(0x62);
static const System::Int8 RAVEINT2SHT = System::Int8(0x63);
static const System::Int8 RAVEINT2BYT = System::Int8(0x64);
static const System::Int8 RAVEINT2SML = System::Int8(0x65);
static const System::Int8 RAVEINT2WRD = System::Int8(0x66);
static const System::Int8 RAVEINT2SNG = System::Int8(0x67);
static const System::Int8 RAVEINT2DBL = System::Int8(0x68);
static const System::Int8 RAVEINT2EXT = System::Int8(0x69);
static const System::Int8 RAVEINT2CUR = System::Int8(0x6a);
static const System::Int8 RAVESHT2EXT = System::Int8(0x6b);
static const System::Int8 RAVEBYT2EXT = System::Int8(0x6c);
static const System::Int8 RAVESML2EXT = System::Int8(0x6d);
static const System::Int8 RAVEWRD2EXT = System::Int8(0x6e);
static const System::Int8 RAVESNG2EXT = System::Int8(0x6f);
static const System::Int8 RAVEDBL2EXT = System::Int8(0x70);
static const System::Int8 RAVECUR2EXT = System::Int8(0x71);
static const System::Int8 RAVEEXT2SNG = System::Int8(0x72);
static const System::Int8 RAVEEXT2DBL = System::Int8(0x73);
static const System::Int8 RAVEEXT2CUR = System::Int8(0x74);
static const System::Int8 RAVECHR2STR = System::Int8(0x75);
static const System::Int8 RAVEDOUBLECONV = System::Int8(0x76);
static const System::Int8 RAVE_ASSIGN = System::Int8(0x76);
static const System::Int8 RAVEASSIGN = System::Int8(0x77);
static const System::Int8 RAVELEFTASSIGN = System::Int8(0x78);
static const System::Int8 RAVERIGHTASSIGN = System::Int8(0x79);
static const System::Int8 RAVEASSIGNSTR = System::Int8(0x7a);
static const System::Int8 RAVELEFTASSIGNSTR = System::Int8(0x7b);
static const System::Int8 RAVERIGHTASSIGNSTR = System::Int8(0x7c);
static const System::Int8 RAVEADDINTASSIGN = System::Int8(0x7d);
static const System::Int8 RAVESUBINTASSIGN = System::Int8(0x7e);
static const System::Int8 RAVEMULINTASSIGN = System::Int8(0x7f);
static const System::Byte RAVEADDEXTASSIGN = System::Byte(0x80);
static const System::Byte RAVESUBEXTASSIGN = System::Byte(0x81);
static const System::Byte RAVEMULEXTASSIGN = System::Byte(0x82);
static const System::Byte RAVEDIVEXTASSIGN = System::Byte(0x83);
static const System::Byte RAVEADDCURASSIGN = System::Byte(0x84);
static const System::Byte RAVESUBCURASSIGN = System::Byte(0x85);
static const System::Byte RAVEMULCURASSIGN = System::Byte(0x86);
static const System::Byte RAVEDIVCURASSIGN = System::Byte(0x87);
static const System::Byte RAVE_MISC = System::Byte(0x87);
static const System::Byte RAVENOP = System::Byte(0x88);
static const System::Byte RAVETERMINATE = System::Byte(0x89);
static const System::Byte RAVEADDSTR = System::Byte(0x8a);
static const System::Byte RAVETEST = System::Byte(0x8b);
static const System::Byte RAVESUSPEND = System::Byte(0x8c);
static const System::Byte RAVE_DEBUG = System::Byte(0x8c);
static const System::Byte RAVEBREAKPOINT = System::Byte(0x8d);
#define OpChars L"!\"#$%&'()*+,-./:;<=>?@[\\]^{|}~"
extern DELPHI_PACKAGE TScopeSet AllScopes;
#define IntegerTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkShortint << TTypeKind::tkByte << TTypeKind::tkSmallint << TTypeKind::tkWord << TTypeKind::tkInteger )
#define FloatTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkSingle << TTypeKind::tkDouble << TTypeKind::tkExtended << TTypeKind::tkCurrency )
#define OrdinalTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkBoolean << TTypeKind::tkShortint << TTypeKind::tkByte << TTypeKind::tkSmallint << TTypeKind::tkWord << TTypeKind::tkInteger << TTypeKind::tkChar )
#define StringTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkChar << TTypeKind::tkString )
#define MathTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkShortint << TTypeKind::tkByte << TTypeKind::tkSmallint << TTypeKind::tkWord << TTypeKind::tkInteger << TTypeKind::tkSingle << TTypeKind::tkDouble << TTypeKind::tkExtended << TTypeKind::tkCurrency )
#define AllTypes (System::Set<TTypeKind, TTypeKind::tkBoolean, TTypeKind::tkComplex>() << TTypeKind::tkBoolean << TTypeKind::tkShortint << TTypeKind::tkByte << TTypeKind::tkSmallint << TTypeKind::tkWord << TTypeKind::tkInteger << TTypeKind::tkSingle << TTypeKind::tkDouble << TTypeKind::tkExtended << TTypeKind::tkCurrency << TTypeKind::tkChar << TTypeKind::tkString << TTypeKind::tkPointer )
extern DELPHI_PACKAGE System::StaticArray<TTypeKind, 14> UpgradeType;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 14> TypeSize;
static const System::Byte RAVEINVALID = System::Byte(0xfe);
static const System::Byte RAVEDEFAULT = System::Byte(0xff);
extern DELPHI_PACKAGE System::StaticArray<System::StaticArray<System::Byte, 9>, 9> TypeConv1;
extern DELPHI_PACKAGE System::StaticArray<System::StaticArray<System::Byte, 9>, 9> TypeConv2;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpOrder;
#define OpUnary (System::Set<TOpKind, TOpKind::okTerm, TOpKind::okMethod>() << TOpKind::okPos << TOpKind::okNeg << TOpKind::okNOT )
#define OpSimpleAssign (System::Set<TOpKind, TOpKind::okTerm, TOpKind::okMethod>() << TOpKind::okAssign << TOpKind::okLeftAssign << TOpKind::okRightAssign )
#define OpMathAssign (System::Set<TOpKind, TOpKind::okTerm, TOpKind::okMethod>() << TOpKind::okAddAssign << TOpKind::okSubAssign << TOpKind::okMulAssign << TOpKind::okDivAssign )
#define OpStatementAssign (System::Set<TOpKind, TOpKind::okTerm, TOpKind::okMethod>() << TOpKind::okAssign << TOpKind::okAddAssign << TOpKind::okSubAssign << TOpKind::okMulAssign << TOpKind::okDivAssign )
#define OpAssign (System::Set<TOpKind, TOpKind::okTerm, TOpKind::okMethod>() << TOpKind::okAssign << TOpKind::okAddAssign << TOpKind::okSubAssign << TOpKind::okMulAssign << TOpKind::okDivAssign << TOpKind::okLeftAssign << TOpKind::okRightAssign )
extern DELPHI_PACKAGE System::StaticArray<TypeKindSet, 32> OpTypes;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpBolCommand;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpIntCommand;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpExtCommand;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpCurCommand;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpChrCommand;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 32> OpStrCommand;
extern DELPHI_PACKAGE System::StaticArray<bool, 32> OpPostConv;
}	/* namespace Rvledefine */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLEDEFINE)
using namespace Rvledefine;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvledefineHPP
