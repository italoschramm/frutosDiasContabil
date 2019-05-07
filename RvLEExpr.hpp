// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEExpr.pas' rev: 29.00 (Windows)

#ifndef RvleexprHPP
#define RvleexprHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvLEDefine.hpp>
#include <RvLEUtil.hpp>
#include <RvLEType.hpp>
#include <RvLEID.hpp>
#include <RvLEModule.hpp>
#include <RvLECode.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvleexpr
{
//-- forward type declarations -----------------------------------------------
struct TCodeListItem;
struct TOpStackItem;
struct TFreeVar;
class DELPHICLASS TExpression;
//-- type declarations -------------------------------------------------------
typedef TCodeListItem *PCodeListItem;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TCodeListItem
{
public:
	Rvletype::TBaseType* FromType;
	Rvletype::TBaseType* ToType;
	System::Word TempSize;
	int TempLoc;
	int Line;
	System::Word Col;
	Rvledefine::TIDKind Kind;
	Rvledefine::TAddress Address;
	bool DefaultParam;
	bool FuncResult;
	Rvleid::TBaseID* VarID;
	Rvutil::TRaveStackList* OpList;
	Rvletype::TFuncType* FuncType;
	int FuncModule;
	Rvledefine::TCodeLabel *FuncCodeLabel;
	bool FuncMethod;
	System::Word NumParams;
	Rvledefine::TOpKind OpKind;
	System::UnicodeString StringData;
	void *Data;
	System::Byte RefCount;
};
#pragma pack(pop)


typedef TOpStackItem *POpStackItem;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TOpStackItem
{
public:
	System::Word Level;
	System::Byte Order;
	Rvledefine::TOpKind Kind;
	Rvletype::TFuncType* OSFuncType;
	System::Word OSFuncModule;
	Rvledefine::TCodeLabel *OSFuncCodeLabel;
	System::Word OSNumParams;
	int OpLine;
	System::Word OpCol;
	System::UnicodeString OpToken;
	System::Byte RefCount;
};
#pragma pack(pop)


typedef TFreeVar *PFreeVar;

struct DECLSPEC_DRECORD TFreeVar
{
public:
	Rvletype::TBaseType* BaseType;
	Rvledefine::TAddress Address;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TExpression : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Rvutil::TRaveStackList* FCodeList;
	Rvutil::TRaveStackList* FOpStack;
	TCodeListItem *FResultItem;
	bool FNeedResult;
	Rvutil::TRaveStackList* CalcStack;
	System::Word CurrLevel;
	Rvleutil::TRaveParser* Parser;
	Rvlecode::TCodeManager* CM;
	Rvlemodule::TRCPUModule* Module;
	bool __fastcall CalcOpResult(Rvledefine::TTypeKind &TK1, Rvledefine::TTypeKind &TK2, Rvledefine::TTypeKind &TK3, Rvledefine::TTypeKind &TK4, Rvledefine::TOpKind OpKind);
	Rvletype::TBaseType* __fastcall GetBaseType(Rvledefine::TTypeKind TypeKind);
	void __fastcall AddCodeList(PCodeListItem CodeListItem);
	void __fastcall ProcessOpStack(Rvledefine::TOpKind NewOpKind);
	bool __fastcall FoldConstant(POpStackItem OpStackItem, Rvledefine::TOpKind OpKind);
	void __fastcall FreeCodeListItem(PCodeListItem CLI);
	void __fastcall PushCLIStack(Rvutil::TRaveStackList* Stack, PCodeListItem CLI);
	void __fastcall PopCLIStack(Rvutil::TRaveStackList* Stack);
	void __fastcall PushOSIStack(Rvutil::TRaveStackList* Stack, POpStackItem OSI);
	void __fastcall PopOSIStack(Rvutil::TRaveStackList* Stack);
	
public:
	__fastcall TExpression(Rvlemodule::TRCPUModule* AModule, Rvleutil::TRaveParser* AParser, Rvlecode::TCodeManager* ACM);
	__fastcall virtual ~TExpression(void);
	void __fastcall CreateCodeList(System::UnicodeString Terminators, bool LeaveResultOnStack);
	void __fastcall FreeCodeList(void);
	void __fastcall FreeType(const Rvledefine::TAddress &Addr, Rvletype::TBaseType* BaseType);
	void __fastcall CreateCode(int &TempMax, int TempStart);
	__property Rvutil::TRaveStackList* OpStack = {read=FOpStack, write=FOpStack};
	__property Rvutil::TRaveStackList* CodeList = {read=FCodeList, write=FCodeList};
	__property PCodeListItem ResultItem = {read=FResultItem};
	__property bool NeedResult = {read=FNeedResult, write=FNeedResult, nodefault};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rvleexpr */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLEEXPR)
using namespace Rvleexpr;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvleexprHPP
