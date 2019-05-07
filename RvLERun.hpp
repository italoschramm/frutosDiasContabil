// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLERun.pas' rev: 29.00 (Windows)

#ifndef RvlerunHPP
#define RvlerunHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvClass.hpp>
#include <RvLEDefine.hpp>
#include <RvLEUtil.hpp>
#include <RvLEModule.hpp>
#include <RvUtil.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvlerun
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRCPURunner;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TRCPURunner : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int SP;
	int BP;
	Rvlemodule::TRCPUModule* MI;
	int CO;
	void *SS;
	void *DS;
	void *CS;
	int StackSize;
	System::Int8 CompareFlag;
	void __fastcall Push(int Len);
	void __fastcall PushData(void *Data, int Len);
	void __fastcall PushInteger(int Data);
	void __fastcall PushNull(int Len);
	void __fastcall Pop(int Len);
	void __fastcall PopData(void *Data, int Len);
	int __fastcall PopInteger(void);
	void __fastcall ReadStack(void *Data, int Offset, int Len);
	void __fastcall WriteStack(void *Data, int Offset, int Len);
	void __fastcall ReadData(void *Data, int Offset, int Len);
	void __fastcall WriteData(void *Data, int Offset, int Len);
	System::Byte __fastcall GetCodeByte(void);
	int __fastcall GetCodeIndex(void);
	int __fastcall GetCodeAddress(void);
	void * __fastcall PushCodeAddress(void);
	void * __fastcall GetMICOPointer(void);
	void __fastcall NewModule(Rvlemodule::TRCPUModule* AModule);
	
public:
	__fastcall TRCPURunner(void);
	__fastcall virtual ~TRCPURunner(void);
	void __fastcall Execute(Rvlemodule::TRCPUModule* RCPUModule, System::Classes::TList* Params, System::TObject* &SuspendState);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRCPURunner* RCPURunner;
extern DELPHI_PACKAGE System::Classes::TStringList* ModuleRegList;
}	/* namespace Rvlerun */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLERUN)
using namespace Rvlerun;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvlerunHPP
