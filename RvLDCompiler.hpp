// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLDCompiler.pas' rev: 29.00 (Windows)

#ifndef RvldcompilerHPP
#define RvldcompilerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <RvClass.hpp>
#include <RvLEDefine.hpp>
#include <RvLEUtil.hpp>
#include <RvLEType.hpp>
#include <RvLEID.hpp>
#include <RvLEModule.hpp>
#include <RvLECode.hpp>
#include <RvLEExpr.hpp>
#include <RvUtil.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvldcompiler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDelphiCompiler;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TCompileMode : unsigned char { cmType, cmConst, cmVar, cmFunc };

enum DECLSPEC_DENUM TCompileLoc : unsigned char { clStart, clDefinition, clImplementation, clCreation, clDestruction };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDelphiCompiler : public Rvlemodule::TRaveCompiler
{
	typedef Rvlemodule::TRaveCompiler inherited;
	
protected:
	bool DefineMode;
	TCompileLoc CompileLoc;
	System::Classes::TList* GlobalFreeList;
	System::Classes::TList* BreakStack;
	System::Classes::TList* ContinueStack;
	Rvledefine::TCodeLabel ExitLabel;
	Rvleutil::TRaveParser* Parser;
	Rvlecode::TCodeManager* CM;
	Rvleexpr::TExpression* Expr;
	Rvlemodule::TRCPUModule* Module;
	int TempStart;
	int TempMax;
	Vcl::Stdctrls::TLabel* FStatusLabel;
	void __fastcall StartLoopStatement(void);
	void __fastcall FinishLoopStatement(void);
	Rvledefine::TCodeLabelObject* __fastcall ContinueObject(void);
	Rvledefine::TCodeLabelObject* __fastcall BreakObject(void);
	void __fastcall InitCompiler(void);
	void __fastcall CompileConst(void);
	void __fastcall GetOrdinalConst(int &Value, Rvletype::TBaseType* &BaseType, System::UnicodeString Terminators);
	void __fastcall GetRange(Rvletype::TRange* &Range);
	Rvletype::TEnumeratedType* __fastcall CreateEnumeratedType(void);
	Rvletype::TArrayType* __fastcall CreateArrayType(void);
	Rvletype::TRecordType* __fastcall CreateRecordType(System::UnicodeString AID);
	Rvletype::TFuncType* __fastcall CreateFuncType(void);
	Rvletype::TClassType* __fastcall CreateClassType(System::UnicodeString AID);
	Rvletype::TBaseType* __fastcall CreateTypeDef(bool Simple, System::UnicodeString AID);
	void __fastcall CompileType(void);
	void __fastcall CompileExpression(void);
	void __fastcall CompileIf(void);
	void __fastcall CompileFor(void);
	void __fastcall CompileWhile(void);
	void __fastcall CompileRepeat(void);
	void __fastcall CompileBreak(void);
	void __fastcall CompileContinue(void);
	void __fastcall CompileExit(void);
	void __fastcall CompileSuspend(void);
	void __fastcall CompileWith(void);
	bool __fastcall CompileStatement(System::UnicodeString Terminators);
	void __fastcall CompileVar(System::Classes::TList* FreeList);
	void __fastcall CompileFunc(void);
	void __fastcall CompileImport(void);
	void __fastcall CompileModule(void);
	void __fastcall CompileSection(bool Definition);
	
public:
	__fastcall virtual TRaveDelphiCompiler(void);
	__fastcall virtual ~TRaveDelphiCompiler(void);
	__classmethod virtual System::UnicodeString __fastcall SyntaxName();
	void __fastcall CompileSystemModule(void);
	virtual void __fastcall CompileStream(System::UnicodeString Source, System::UnicodeString FileName, Rvlemodule::TRCPUModule* AModule, bool Definition);
	void __fastcall CompileFile(System::UnicodeString FileName, Rvlemodule::TRCPUModule* AModule);
	void __fastcall CompileExpr(System::UnicodeString Source, Rvlemodule::TRCPUModule* AModule);
	__property Vcl::Stdctrls::TLabel* StatusLabel = {read=FStatusLabel, write=FStatusLabel};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvldcompiler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLDCOMPILER)
using namespace Rvldcompiler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvldcompilerHPP
