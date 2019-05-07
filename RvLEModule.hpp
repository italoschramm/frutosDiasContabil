// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEModule.pas' rev: 29.00 (Windows)

#ifndef RvlemoduleHPP
#define RvlemoduleHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.TypInfo.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvClass.hpp>
#include <RvLEDefine.hpp>
#include <RvLEID.hpp>
#include <RvLEType.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvlemodule
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TScopeManager;
class DELPHICLASS TModuleTypeHelper;
class DELPHICLASS TRCPUModule;
class DELPHICLASS TRaveCompiler;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TScopeManager : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int DataIdx;
	
protected:
	TRCPUModule* FOwner;
	TScopeManager* FParent;
	Rvletype::TTypeManager* FTypeManager;
	Rvleid::TIDManager* FIDManager;
	System::Classes::TList* FObjectScope;
	
public:
	__fastcall TScopeManager(TScopeManager* AParent, TRCPUModule* AOwner);
	__fastcall virtual ~TScopeManager(void);
	void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	Rvleid::TBaseID* __fastcall FindID(System::UnicodeString ID);
	Rvleid::TTypeID* __fastcall AddType(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvleid::TVarID* __fastcall AddVar(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvleid::TOpID* __fastcall AddOp(System::UnicodeString ID, Rvledefine::TOpKind OpKind);
	Rvleid::TFuncID* __fastcall AddFunc(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvleid::TConstID* __fastcall AddConst(System::UnicodeString ID, Rvletype::TBaseType* BaseType, void *Data);
	void __fastcall ClearData(void);
	void __fastcall PushObjectScope(Rvleid::TVarID* AObject);
	void __fastcall PopObjectScope(void);
	Rvleid::TVarID* __fastcall FindObjectScope(System::UnicodeString ID);
	__property TRCPUModule* Owner = {read=FOwner};
	__property TScopeManager* Parent = {read=FParent};
	__property Rvletype::TTypeManager* TypeManager = {read=FTypeManager};
	__property Rvleid::TIDManager* IDManager = {read=FIDManager};
	__property int DataSize = {read=DataIdx, write=DataIdx, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TModuleTypeHelper : public Rvletype::TTypeHelper
{
	typedef Rvletype::TTypeHelper inherited;
	
public:
	TRCPUModule* FModule;
	__fastcall TModuleTypeHelper(TRCPUModule* AModule);
	virtual Rvletype::TBaseType* __fastcall IndexToType(int ModuleIndex, int TypeIndex);
	virtual void __fastcall TypeToIndex(Rvletype::TBaseType* BaseType, int &ModuleIndex, int &TypeIndex);
	__property TRCPUModule* Module = {read=FModule};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TModuleTypeHelper(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRCPUModule : public Rvclass::TRaveModule
{
	typedef Rvclass::TRaveModule inherited;
	
protected:
	System::Classes::TList* UsedModules;
	System::Classes::TStringList* ExternalList;
	System::Classes::TStringList* ForwardRefList;
	System::Classes::TList* Params;
	System::Word FMajorVersion;
	System::Word FMinorVersion;
	System::TDateTime FCompileDate;
	TScopeManager* FScope;
	Rvletype::TTypeHelper* FTypeHelper;
	void *FDataBuf;
	int FDataSize;
	void *FCodeBuf;
	int FCodeSize;
	int FStartCO;
	int FCreateCO;
	int FDestroyCO;
	int FStackSize;
	System::UnicodeString FSource;
	System::Classes::TStrings* FEventList;
	System::Classes::TList* FSourceRefList;
	Rvclass::TRaveProjectItem* FProjectItem;
	Rvclass::TRaveProjectItem* FProjectManager;
	TRaveCompiler* FCompiler;
	TRCPUModule* FParentModule;
	TRCPUModule* __fastcall GetParentModule(void);
	void * __fastcall GetDataBuf(void);
	void __fastcall SetDataSize(int Value);
	virtual void __fastcall PostLoad(void);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream, Rvclass::TRaveProjectItem* aOwner, Rvclass::TRaveProjectItem* aProjectItem);
	
public:
	__fastcall TRCPUModule(void);
	__fastcall virtual TRCPUModule(System::Classes::TStream* Stream, Rvclass::TRaveProjectItem* aOwner, Rvclass::TRaveProjectItem* aProjectItem);
	__fastcall virtual TRCPUModule(System::UnicodeString FileName, Rvclass::TRaveProjectItem* AOwner);
	__fastcall virtual ~TRCPUModule(void);
	virtual void __fastcall SaveToStream(System::Classes::TStream* Stream);
	void __fastcall SaveToFile(System::UnicodeString FileName);
	virtual void __fastcall Changing(Rvclass::TRaveModule* OldItem, Rvclass::TRaveModule* NewItem);
	Rvleid::TTypeID* __fastcall AddType(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvletype::TBaseType* __fastcall CreateType(Rvletype::TBaseType* BaseType);
	Rvleid::TVarID* __fastcall AddVar(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvleid::TOpID* __fastcall AddOp(System::UnicodeString ID, Rvledefine::TOpKind OpKind);
	Rvleid::TFuncID* __fastcall AddFunc(System::UnicodeString ID, Rvletype::TBaseType* BaseType);
	Rvleid::TConstID* __fastcall AddConst(System::UnicodeString ID, Rvletype::TBaseType* BaseType, void *Data);
	TRCPUModule* __fastcall AddModule(System::UnicodeString ModuleName);
	void __fastcall AddExternal(System::UnicodeString AID, int AOffset);
	Rvleid::TBaseID* __fastcall FindInternalID(System::UnicodeString ID);
	Rvleid::TBaseID* __fastcall FindID(System::UnicodeString ID);
	Rvletype::TBaseType* __fastcall FindType(System::UnicodeString ID);
	Rvledefine::PExternalFunc __fastcall FindExternal(System::UnicodeString ID);
	TRCPUModule* __fastcall IndexToModule(int Index);
	int __fastcall ModuleToIndex(TRCPUModule* Module);
	Rvletype::TBaseType* __fastcall IndexToType(int Index);
	int __fastcall TypeToIndex(Rvletype::TBaseType* BaseType);
	void __fastcall CreateScopeLevel(void);
	void __fastcall FreeScopeLevel(void);
	virtual void __fastcall Execute(int Position, System::TObject* &SuspendState);
	void __fastcall Init(void);
	virtual void __fastcall BuildSource(void);
	virtual void __fastcall Compile(bool Definition);
	virtual void __fastcall EventConnect(void);
	virtual void __fastcall SetStringVar(System::UnicodeString Name, System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetStringVar(System::UnicodeString Name);
	virtual void __fastcall SetIntVar(System::UnicodeString Name, int Value);
	virtual int __fastcall GetIntVar(System::UnicodeString Name);
	virtual void __fastcall SetFloatVar(System::UnicodeString Name, System::Extended Value);
	virtual System::Extended __fastcall GetFloatVar(System::UnicodeString Name);
	void * __fastcall GetDataPtr(Rvleid::TVarID* VarID);
	virtual void __fastcall PushParam(void *Param);
	__property TScopeManager* Scope = {read=FScope};
	__property Rvletype::TTypeHelper* TypeHelper = {read=FTypeHelper};
	__property void * DataSeg = {read=GetDataBuf};
	__property int DataSize = {read=FDataSize, write=SetDataSize, nodefault};
	__property void * CodeSeg = {read=FCodeBuf, write=FCodeBuf};
	__property int CodeSize = {read=FCodeSize, write=FCodeSize, nodefault};
	__property int StartCO = {read=FStartCO, write=FStartCO, nodefault};
	__property int CreateCO = {read=FCreateCO, write=FCreateCO, nodefault};
	__property int DestroyCO = {read=FDestroyCO, write=FDestroyCO, nodefault};
	__property int StackSize = {read=FStackSize, write=FStackSize, nodefault};
	__property System::UnicodeString Source = {read=FSource, write=FSource};
	__property System::Classes::TList* SourceRefList = {read=FSourceRefList, write=FSourceRefList};
	__property TRaveCompiler* Compiler = {read=FCompiler, write=FCompiler};
	__property System::Classes::TStrings* EventList = {read=FEventList, write=FEventList};
	__property Rvclass::TRaveProjectItem* ProjectItem = {read=FProjectItem, write=FProjectItem};
	__property Rvclass::TRaveProjectItem* ProjectManager = {read=FProjectManager, write=FProjectManager};
	__property TRCPUModule* ParentModule = {read=GetParentModule, write=FParentModule};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveCompiler : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod virtual System::UnicodeString __fastcall SyntaxName();
	__fastcall virtual TRaveCompiler(void);
	virtual void __fastcall CompileStream(System::UnicodeString Source, System::UnicodeString FileName, TRCPUModule* AModule, bool Definition) = 0 ;
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRaveCompiler(void) { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TRaveCompilerClass;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::Classes::TList* CompilerList;
extern DELPHI_PACKAGE void __fastcall AddRaveCompiler(TRaveCompilerClass CompilerClass);
extern DELPHI_PACKAGE TRaveCompiler* __fastcall CreateRaveCompiler(System::UnicodeString SyntaxName);
}	/* namespace Rvlemodule */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLEMODULE)
using namespace Rvlemodule;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvlemoduleHPP
