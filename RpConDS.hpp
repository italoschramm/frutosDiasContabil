// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpConDS.pas' rev: 29.00 (Windows)

#ifndef RpcondsHPP
#define RpcondsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Forms.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <RpDefine.hpp>
#include <RpCon.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpconds
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvCustomDataSetConnection;
class DELPHICLASS TRvDataSetConnection;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvCustomDataSetConnection : public Rpcon::TRvCustomConnection
{
	typedef Rpcon::TRvCustomConnection inherited;
	
protected:
	bool StateSaved;
	bool InitActive;
	System::UnicodeString SaveFilter;
	bool SaveFiltered;
	System::DynamicArray<System::Byte> SaveBookmark;
	bool FirstEOFCheck;
	bool FDisableDataSource;
	bool FRestoreDataSet;
	virtual Data::Db::TDataSet* __fastcall GetDataSet(void) = 0 ;
	
public:
	__fastcall virtual TRvCustomDataSetConnection(System::Classes::TComponent* AOwner);
	virtual void __fastcall DoFirst(void);
	virtual void __fastcall DoNext(void);
	virtual bool __fastcall DoEOF(void);
	virtual void __fastcall DoGetCols(void);
	virtual void __fastcall DoGetRow(void);
	virtual void __fastcall DoSetFilter(void);
	virtual void __fastcall DoOpen(void);
	virtual void __fastcall DoRestore(void);
	
__published:
	__property bool DisableDataSource = {read=FDisableDataSource, write=FDisableDataSource, default=1};
	__property bool RestoreDataSet = {read=FRestoreDataSet, write=FRestoreDataSet, default=1};
public:
	/* TRvCustomConnection.Destroy */ inline __fastcall virtual ~TRvCustomDataSetConnection(void) { }
	
};


class PASCALIMPLEMENTATION TRvDataSetConnection : public TRvCustomDataSetConnection
{
	typedef TRvCustomDataSetConnection inherited;
	
protected:
	Data::Db::TDataSet* FDataSet;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetDataSet(Data::Db::TDataSet* Value);
	virtual Data::Db::TDataSet* __fastcall GetDataSet(void);
	
__published:
	__property Data::Db::TDataSet* DataSet = {read=FDataSet, write=SetDataSet, default=0};
public:
	/* TRvCustomDataSetConnection.Create */ inline __fastcall virtual TRvDataSetConnection(System::Classes::TComponent* AOwner) : TRvCustomDataSetConnection(AOwner) { }
	
public:
	/* TRvCustomConnection.Destroy */ inline __fastcall virtual ~TRvDataSetConnection(void) { }
	
};


typedef TRvDataSetConnection TRPDataSetConnection;

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpconds */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPCONDS)
using namespace Rpconds;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpcondsHPP
