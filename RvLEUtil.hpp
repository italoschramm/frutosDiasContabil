// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEUtil.pas' rev: 29.00 (Windows)

#ifndef RvleutilHPP
#define RvleutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Winapi.CommCtrl.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvLEDefine.hpp>
#include <RvClass.hpp>
#include <RvUtil.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvleutil
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveParser;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString TTKStr;

class PASCALIMPLEMENTATION TRaveParser : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::WideChar *Buf;
	System::WideChar *BufPtr;
	Rvledefine::TTokenType FTokenType;
	System::UnicodeString FTokenName;
	System::UnicodeString FTokenUpper;
	bool FKeepToken;
	int FCurrCol;
	int FCurrLine;
	int FTokenCol;
	int FTokenLine;
	int FTokenInt;
	System::Extended FTokenExt;
	System::Currency FTokenCurr;
	void __fastcall SetText(System::UnicodeString Value);
	
public:
	__fastcall virtual ~TRaveParser(void);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	void __fastcall GetToken(void);
	System::UnicodeString __fastcall GetID(void);
	bool __fastcall ValidToken(Rvledefine::TTokenTypeSet ValidTypes);
	bool __fastcall MatchID(System::UnicodeString ID);
	bool __fastcall MatchTerm(System::UnicodeString ID, System::UnicodeString Term);
	bool __fastcall MatchSymbol(System::UnicodeString Symbol);
	void __fastcall ReadUntil(System::UnicodeString ID);
	__property System::UnicodeString Text = {write=SetText};
	__property Rvledefine::TTokenType TokenType = {read=FTokenType, write=FTokenType, nodefault};
	__property System::UnicodeString TokenName = {read=FTokenName, write=FTokenName};
	__property System::UnicodeString TokenUpper = {read=FTokenUpper, write=FTokenUpper};
	__property bool KeepToken = {read=FKeepToken, write=FKeepToken, nodefault};
	__property int CurrCol = {read=FCurrCol, write=FCurrCol, nodefault};
	__property int CurrLine = {read=FCurrLine, write=FCurrLine, nodefault};
	__property int TokenCol = {read=FTokenCol, write=FTokenCol, nodefault};
	__property int TokenLine = {read=FTokenLine, write=FTokenLine, nodefault};
	__property int TokenInt = {read=FTokenInt, write=FTokenInt, nodefault};
	__property System::Extended TokenExt = {read=FTokenExt, write=FTokenExt};
	__property System::Currency TokenCurr = {read=FTokenCurr, write=FTokenCurr};
public:
	/* TObject.Create */ inline __fastcall TRaveParser(void) : System::TObject() { }
	
};


typedef bool __fastcall (*TBolCaller)(int Proc, void *StackData, int StackItems);

typedef System::Int8 __fastcall (*TShtCaller)(int Proc, void *StackData, int StackItems);

typedef System::Byte __fastcall (*TBytCaller)(int Proc, void *StackData, int StackItems);

typedef short __fastcall (*TSmlCaller)(int Proc, void *StackData, int StackItems);

typedef System::Word __fastcall (*TWrdCaller)(int Proc, void *StackData, int StackItems);

typedef int __fastcall (*TIntCaller)(int Proc, void *StackData, int StackItems);

typedef float __fastcall (*TSngCaller)(int Proc, void *StackData, int StackItems);

typedef double __fastcall (*TDblCaller)(int Proc, void *StackData, int StackItems);

typedef System::Extended __fastcall (*TExtCaller)(int Proc, void *StackData, int StackItems);

typedef System::Currency __fastcall (*TCurCaller)(int Proc, void *StackData, int StackItems);

typedef System::WideChar __fastcall (*TChrCaller)(int Proc, void *StackData, int StackItems);

typedef void * __fastcall (*TPtrCaller)(int Proc, void *StackData, int StackItems);

typedef System::TObject* __fastcall (*TClassCaller)(int Proc, void *StackData, int StackItems);

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool IncludeErrPos;
extern DELPHI_PACKAGE void __fastcall RaiseError(System::UnicodeString ErrorMessage);
extern DELPHI_PACKAGE void __fastcall FuncCaller(void);
extern DELPHI_PACKAGE void __fastcall RecCaller(int Proc, void *StackData, int StackItems, void *RecordData);
extern DELPHI_PACKAGE void __fastcall AddError(int Num, System::UnicodeString Msg);
}	/* namespace Rvleutil */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLEUTIL)
using namespace Rvleutil;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvleutilHPP
