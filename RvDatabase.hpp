// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDatabase.pas' rev: 29.00 (Windows)

#ifndef RvdatabaseHPP
#define RvdatabaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <RvDataLink.hpp>
#include <RvClass.hpp>
#include <RvDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdatabase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TLinkInfo;
class DELPHICLASS TRaveDBAuth;
class DELPHICLASS TRaveDatabase;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TLinkInfo : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	Rvdatalink::TDataConnection* Link;
	unsigned ThreadID;
	int UseCount;
public:
	/* TObject.Create */ inline __fastcall TLinkInfo(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TLinkInfo(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDBAuth : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString FDatasource;
	System::UnicodeString FOptions;
	System::UnicodeString FPassword;
	System::UnicodeString FUsername;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* ADest);
	
public:
	void __fastcall Setup(System::UnicodeString ADatasource, System::UnicodeString AOptions, System::UnicodeString APassword, System::UnicodeString AUsername);
	
__published:
	__property System::UnicodeString Datasource = {read=FDatasource, write=FDatasource};
	__property System::UnicodeString Options = {read=FOptions, write=FOptions};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveDBAuth(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRaveDBAuth(void) : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveDatabase : public Rvclass::TRaveDataObject
{
	typedef Rvclass::TRaveDataObject inherited;
	
protected:
	TRaveDBAuth* FAuth;
	TRaveDBAuth* FAuthDesign;
	TRaveDBAuth* FAuthRun;
	System::Classes::TThreadList* FLinkList;
	System::Classes::TThreadList* FLinkPool;
	int FLinkPoolSize;
	System::UnicodeString FLinkType;
	Rvdatalink::TDataConnection* __fastcall ConstructLink(void);
	void __fastcall SetAuthDesign(TRaveDBAuth* AValue);
	void __fastcall SetAuthRun(TRaveDBAuth* AValue);
	__classmethod virtual bool __fastcall UseMaster();
	
public:
	__fastcall virtual TRaveDatabase(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveDatabase(void);
	TLinkInfo* __fastcall FindLinkForThread(void);
	TLinkInfo* __fastcall FindLink(Rvdatalink::TDataConnection* ALink);
	void __fastcall InitPool(void);
	Rvdatalink::TDataConnection* __fastcall GetLink(void);
	void __fastcall ReleaseLink(Rvdatalink::TDataConnection* ALink);
	
__published:
	__property TRaveDBAuth* AuthDesign = {read=FAuthDesign, write=SetAuthDesign};
	__property TRaveDBAuth* AuthRun = {read=FAuthRun, write=SetAuthRun};
	__property int LinkPoolSize = {read=FLinkPoolSize, write=FLinkPoolSize, nodefault};
	__property System::UnicodeString LinkType = {read=FLinkType, write=FLinkType};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool GAuthRunOverride;
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvdatabase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDATABASE)
using namespace Rvdatabase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdatabaseHPP
