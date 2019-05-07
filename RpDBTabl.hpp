// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpDBTabl.pas' rev: 29.00 (Windows)

#ifndef RpdbtablHPP
#define RpdbtablHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <System.TypInfo.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpTable.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpdbtabl
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TDBTableColumn;
class DELPHICLASS TDBTablePrinter;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString TFieldName;

class PASCALIMPLEMENTATION TDBTableColumn : public Rptable::TTableColumn
{
	typedef Rptable::TTableColumn inherited;
	
protected:
	System::UnicodeString FFieldName;
	Data::Db::TDataSet* FLookupDataSet;
	System::UnicodeString FLookupKey;
	System::UnicodeString FLookupDisplay;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetLookupDataSet(Data::Db::TDataSet* Value);
	virtual void __fastcall FillMemoBuf(void);
	
__published:
	__property System::UnicodeString FieldName = {read=FFieldName, write=FFieldName};
	__property Data::Db::TDataSet* LookupDataSet = {read=FLookupDataSet, write=SetLookupDataSet};
	__property System::UnicodeString LookupKey = {read=FLookupKey, write=FLookupKey};
	__property System::UnicodeString LookupDisplay = {read=FLookupDisplay, write=FLookupDisplay};
public:
	/* TTableColumn.Create */ inline __fastcall virtual TDBTableColumn(System::Classes::TComponent* AOwner) : Rptable::TTableColumn(AOwner) { }
	/* TTableColumn.Destroy */ inline __fastcall virtual ~TDBTableColumn(void) { }
	
};


class PASCALIMPLEMENTATION TDBTablePrinter : public Rptable::TTablePrinter
{
	typedef Rptable::TTablePrinter inherited;
	
protected:
	Data::Db::TDataSet* FDataSet;
	System::UnicodeString FMasterKey;
	System::UnicodeString FDetailKey;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetDataSet(Data::Db::TDataSet* Value);
	virtual void __fastcall InitMaster(bool &Valid, Rptable::TTablePrinter* Master);
	virtual void __fastcall InitTable(bool &Valid);
	virtual void __fastcall GetNextRow(bool &Valid);
	
public:
	virtual Rptable::TTableColumn* __fastcall CreateColumn(System::Classes::TComponentName Description);
	
__published:
	__property System::UnicodeString MasterKey = {read=FMasterKey, write=FMasterKey};
	__property System::UnicodeString DetailKey = {read=FDetailKey, write=FDetailKey};
	__property Data::Db::TDataSet* DataSet = {read=FDataSet, write=SetDataSet};
public:
	/* TTablePrinter.Create */ inline __fastcall virtual TDBTablePrinter(System::Classes::TComponent* AOwner) : Rptable::TTablePrinter(AOwner) { }
	/* TTablePrinter.Destroy */ inline __fastcall virtual ~TDBTablePrinter(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpdbtabl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPDBTABL)
using namespace Rpdbtabl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpdbtablHPP
