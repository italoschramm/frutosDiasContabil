// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDriverDataView.pas' rev: 29.00 (Windows)

#ifndef RvdriverdataviewHPP
#define RvdriverdataviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <RvDataLink.hpp>
#include <RvClass.hpp>
#include <RvData.hpp>
#include <RvDatabase.hpp>
#include <RvDefine.hpp>
#include <RvDataField.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdriverdataview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDriverDataView;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveDriverDataView : public Rvdata::TRaveBaseDataView
{
	typedef Rvdata::TRaveBaseDataView inherited;
	
protected:
	bool FActive;
	Rvdatabase::TRaveDatabase* FDatabase;
	Rvdatalink::TDataConnection* FConnection;
	Rvdatalink::TDataResultSet* FResultSet;
	System::UnicodeString FQuery;
	System::UnicodeString FQueryStruct;
	System::Classes::TStrings* FQueryParams;
	Rvdatafield::TRaveDataField* __fastcall FindRaveField(System::UnicodeString FieldName);
	virtual void __fastcall GetRow(int EventType);
	HIDESBASE void __fastcall SetActive(const bool AValue);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall OverrideProperties(Rvclass::TRaveFiler* Filer);
	void __fastcall ReadSQLProperty(Rvclass::TRaveReader* Reader);
	void __fastcall ReadParamsProperty(Rvclass::TRaveReader* Reader);
	void __fastcall SetQueryParams(System::Classes::TStrings* Value);
	System::UnicodeString __fastcall PrepareQuery(System::UnicodeString QueryStr);
	
public:
	virtual void __fastcall CreateFields(System::Classes::TList* AFieldList);
	__fastcall virtual TRaveDriverDataView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveDriverDataView(void);
	virtual void __fastcall Open(void);
	virtual void __fastcall Close(void);
	virtual void __fastcall SetFilter(System::Classes::TStringList* FilterList);
	virtual void __fastcall SetRemoteSort(System::Classes::TStringList* SortList);
	__property bool Active = {read=FActive, write=SetActive, nodefault};
	
__published:
	__property Rvdatabase::TRaveDatabase* Database = {read=FDatabase, write=FDatabase};
	__property System::UnicodeString Query = {read=FQuery, write=FQuery};
	__property System::Classes::TStrings* QueryParams = {read=FQueryParams, write=SetQueryParams};
	__property System::UnicodeString QueryStruct = {read=FQueryStruct, write=FQueryStruct};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvdriverdataview */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDRIVERDATAVIEW)
using namespace Rvdriverdataview;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdriverdataviewHPP
