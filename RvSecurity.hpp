// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvSecurity.pas' rev: 29.00 (Windows)

#ifndef RvsecurityHPP
#define RvsecurityHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvClass.hpp>
#include <RvData.hpp>
#include <RvDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvsecurity
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveBaseSecurity;
class DELPHICLASS TRaveSimpleSecurity;
class DELPHICLASS TRaveLookupSecurity;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveBaseSecurity : public Rvclass::TRaveDataObject
{
	typedef Rvclass::TRaveDataObject inherited;
	
public:
	virtual bool __fastcall IsValidUser(System::UnicodeString AUserName, System::UnicodeString APassword) = 0 ;
public:
	/* TRaveProjectItem.Create */ inline __fastcall virtual TRaveBaseSecurity(System::Classes::TComponent* AOwner) : Rvclass::TRaveDataObject(AOwner) { }
	/* TRaveProjectItem.Destroy */ inline __fastcall virtual ~TRaveBaseSecurity(void) { }
	
};


class PASCALIMPLEMENTATION TRaveSimpleSecurity : public TRaveBaseSecurity
{
	typedef TRaveBaseSecurity inherited;
	
protected:
	System::Classes::TStrings* FUserList;
	bool FCaseMatters;
	void __fastcall SetUserList(System::Classes::TStrings* Value);
	
public:
	__fastcall virtual TRaveSimpleSecurity(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveSimpleSecurity(void);
	virtual bool __fastcall IsValidUser(System::UnicodeString AUserName, System::UnicodeString APassword);
	
__published:
	__property System::Classes::TStrings* UserList = {read=FUserList, write=SetUserList};
	__property bool CaseMatters = {read=FCaseMatters, write=FCaseMatters, default=0};
};


class PASCALIMPLEMENTATION TRaveLookupSecurity : public TRaveBaseSecurity
{
	typedef TRaveBaseSecurity inherited;
	
protected:
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdefine::TRaveFieldName FUserField;
	Rvdefine::TRaveFieldName FPasswordField;
	
public:
	virtual bool __fastcall IsValidUser(System::UnicodeString AUserName, System::UnicodeString APassword);
	
__published:
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property Rvdefine::TRaveFieldName UserField = {read=FUserField, write=FPasswordField};
	__property Rvdefine::TRaveFieldName PasswordField = {read=FPasswordField, write=FPasswordField};
public:
	/* TRaveProjectItem.Create */ inline __fastcall virtual TRaveLookupSecurity(System::Classes::TComponent* AOwner) : TRaveBaseSecurity(AOwner) { }
	/* TRaveProjectItem.Destroy */ inline __fastcall virtual ~TRaveLookupSecurity(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvsecurity */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVSECURITY)
using namespace Rvsecurity;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvsecurityHPP
