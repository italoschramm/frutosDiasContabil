// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEID.pas' rev: 29.00 (Windows)

#ifndef RvleidHPP
#define RvleidHPP

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
#include <RvUtil.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvleid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseID;
class DELPHICLASS TTypeID;
class DELPHICLASS TVarID;
class DELPHICLASS TConstID;
class DELPHICLASS TFuncID;
class DELPHICLASS TMethodID;
class DELPHICLASS TOpID;
class DELPHICLASS TIDManager;
//-- type declarations -------------------------------------------------------
typedef System::TMetaClass* TBaseIDClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseID : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Rvletype::TBaseType* FBaseType;
	System::UnicodeString FID;
	Rvledefine::TIDKind FIDKind;
	int FModule;
	virtual void __fastcall SetModule(int Value);
	
public:
	__fastcall TBaseID(Rvledefine::TIDKind AIDKind, System::UnicodeString AID, Rvletype::TBaseType* ABaseType);
	__fastcall virtual TBaseID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property Rvletype::TBaseType* BaseType = {read=FBaseType};
	__property System::UnicodeString ID = {read=FID};
	__property Rvledefine::TIDKind IDKind = {read=FIDKind, nodefault};
	__property int Module = {read=FModule, write=SetModule, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TBaseID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTypeID : public TBaseID
{
	typedef TBaseID inherited;
	
public:
	__fastcall TTypeID(System::UnicodeString AID, Rvletype::TBaseType* ABaseType);
public:
	/* TBaseID.CreateFromStreamHelper */ inline __fastcall virtual TTypeID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper) : TBaseID(TypeHelper, StreamHelper) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTypeID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TVarID : public TBaseID
{
	typedef TBaseID inherited;
	
protected:
	Rvledefine::TAddress FAddress;
	virtual void __fastcall SetModule(int Value);
	
public:
	__fastcall TVarID(System::UnicodeString AID, Rvletype::TBaseType* ABaseType, int AAddress, Rvledefine::TAddressLoc AAddressLoc);
	__fastcall virtual TVarID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property Rvledefine::TAddress Address = {read=FAddress, write=FAddress};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TVarID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TConstID : public TBaseID
{
	typedef TBaseID inherited;
	
public:
	void *FData;
	int FDataSize;
	__fastcall TConstID(System::UnicodeString AID, Rvletype::TBaseType* ABaseType, void *AData, int ADataSize);
	__fastcall virtual TConstID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__fastcall virtual ~TConstID(void);
	void __fastcall GetData(void *Buffer);
	__property void * Data = {read=FData};
	__property int DataSize = {read=FDataSize, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFuncID : public TBaseID
{
	typedef TBaseID inherited;
	
protected:
	System::Byte FDefineLevel;
	int FExecAddr;
	Rvledefine::TCodeLabel FCodeLabel;
	
public:
	__fastcall TFuncID(System::UnicodeString AID, Rvletype::TBaseType* ABaseType);
	__fastcall virtual TFuncID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property System::Byte DefineLevel = {read=FDefineLevel, write=FDefineLevel, nodefault};
	__property int ExecAddr = {read=FExecAddr, write=FExecAddr, nodefault};
	__property Rvledefine::TCodeLabel CodeLabel = {read=FCodeLabel, write=FCodeLabel};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TFuncID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMethodID : public TFuncID
{
	typedef TFuncID inherited;
	
public:
	__fastcall TMethodID(System::UnicodeString AID, Rvletype::TBaseType* ABaseType);
	__fastcall virtual TMethodID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TMethodID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TOpID : public TBaseID
{
	typedef TBaseID inherited;
	
private:
	Rvledefine::TOpKind FOpKind;
	
public:
	__fastcall TOpID(System::UnicodeString AID, Rvledefine::TOpKind AOpKind);
	__fastcall virtual TOpID(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvletype::TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property Rvledefine::TOpKind OpKind = {read=FOpKind, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TOpID(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIDManager : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TList* IDList;
	int IDIdx;
	Rvletype::TTypeHelper* TypeHelper;
	
public:
	__fastcall TIDManager(Rvletype::TTypeHelper* ATypeHelper);
	__fastcall virtual ~TIDManager(void);
	void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall Clear(void);
	TBaseID* __fastcall Add(TBaseID* IDObject);
	TBaseID* __fastcall Find(System::UnicodeString IDName);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::StaticArray<TBaseIDClass, 6> IDTypes;
}	/* namespace Rvleid */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLEID)
using namespace Rvleid;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvleidHPP
