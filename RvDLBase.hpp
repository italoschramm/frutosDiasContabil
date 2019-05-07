// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDLBase.pas' rev: 29.00 (Windows)

#ifndef RvdlbaseHPP
#define RvdlbaseHPP

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
#include <RvDLCommon.hpp>
#include <Vcl.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdlbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TDLConnectionManager;
class DELPHICLASS TDLResultSetManager;
class DELPHICLASS TDLFieldListManager;
class DELPHICLASS TDLConfigForm;
class DELPHICLASS TDLBaseDriver;
class DELPHICLASS TDLBaseConnection;
class DELPHICLASS TDLBaseResultSet;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLConnectionManager : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Classes::TStringList* FConnectionList;
	int FID;
	int __fastcall NextID(void);
	
public:
	__fastcall TDLConnectionManager(void);
	__property System::Classes::TStringList* ConnectionList = {read=FConnectionList, write=FConnectionList};
	int __fastcall Add(TDLBaseConnection* Connection);
	void __fastcall Delete(int ID);
	TDLBaseConnection* __fastcall Get(int ID);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TDLConnectionManager(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLResultSetManager : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Classes::TStringList* FResultSetList;
	int FID;
	int __fastcall NextID(void);
	
public:
	__fastcall TDLResultSetManager(void);
	__property System::Classes::TStringList* ResultSetList = {read=FResultSetList, write=FResultSetList};
	int __fastcall Add(TDLBaseResultSet* ResultSet);
	void __fastcall Delete(int ID);
	TDLBaseResultSet* __fastcall Get(int ID);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TDLResultSetManager(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLFieldListManager : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int FFieldCount;
	Rvdlcommon::TDLFieldList *FFieldList;
	
public:
	__fastcall virtual ~TDLFieldListManager(void);
	void __fastcall AllocFieldList(int Count);
	void __fastcall SetFieldItem(int Index, System::UnicodeString FieldName, System::Byte DataType, int Width, System::UnicodeString FullName, System::UnicodeString Description);
	__property int FieldCount = {read=FFieldCount, nodefault};
	__property Rvdlcommon::PDLFieldList FieldList = {read=FFieldList};
public:
	/* TObject.Create */ inline __fastcall TDLFieldListManager(void) : System::TObject() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TDLConfigForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
protected:
	void __fastcall TestConnection(System::Classes::TStrings* TableList);
	
public:
	virtual void __fastcall SetData(System::UnicodeString DataSource, System::UnicodeString UserName, System::UnicodeString Password, System::Classes::TStringList* OptionList) = 0 ;
	virtual void __fastcall GetData(System::UnicodeString &DataSource, System::UnicodeString &UserName, System::UnicodeString &Password, System::Classes::TStringList* OptionList) = 0 ;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TDLConfigForm(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TDLConfigForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TDLConfigForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TDLConfigForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


typedef System::TMetaClass* TDLConfigFormClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLBaseDriver : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::UnicodeString FDataSource;
	System::UnicodeString FUserName;
	System::UnicodeString FPassword;
	System::Classes::TStringList* FOptionList;
	System::UnicodeString FOptionText;
	TDLFieldListManager* FFields;
	
public:
	__fastcall virtual TDLBaseDriver(void);
	__fastcall virtual ~TDLBaseDriver(void);
	virtual void __fastcall ConnectionClose(Rvdlcommon::TDLConnectionClose &Params);
	virtual void __fastcall ConnectionConfigure(Rvdlcommon::TDLConnectionConfigure &Params);
	virtual void __fastcall ConnectionOpen(Rvdlcommon::TDLConnectionOpen &Params);
	virtual void __fastcall GetErrorText(Rvdlcommon::TDLErrorText &Params);
	virtual void __fastcall GetFields(Rvdlcommon::TDLFields &Params);
	virtual void __fastcall GetTables(Rvdlcommon::TDLTables &Params);
	virtual void __fastcall Information(Rvdlcommon::TDLInformation &Params) = 0 ;
	virtual void __fastcall ResultSetClose(Rvdlcommon::TDLResultSetClose &Params);
	virtual void __fastcall ResultSetConfigure(Rvdlcommon::TDLResultSetConfigure &Params);
	virtual void __fastcall ResultSetEOF(Rvdlcommon::TDLResultSetEOF &Params);
	virtual void __fastcall ResultSetFirst(Rvdlcommon::TDLResultSetFirst &Params);
	virtual void __fastcall ResultSetGetRow(Rvdlcommon::TDLResultSetRow &Params) = 0 ;
	virtual void __fastcall ResultSetNext(Rvdlcommon::TDLResultSetNext &Params);
	virtual void __fastcall ResultSetOpen(Rvdlcommon::TDLResultSetOpen &Params);
	virtual void __fastcall ResultSetSetFilter(Rvdlcommon::TDLResultSetFilter &Params);
	virtual void __fastcall ResultSetSetSort(Rvdlcommon::TDLResultSetSort &Params);
	virtual TDLBaseConnection* __fastcall CreateConnection(void) = 0 ;
	virtual TDLBaseResultSet* __fastcall CreateResultSet(TDLBaseConnection* AConnection) = 0 ;
	__property System::UnicodeString DataSource = {read=FDataSource};
	__property System::UnicodeString UserName = {read=FUserName};
	__property System::UnicodeString Password = {read=FPassword};
	__property System::Classes::TStringList* OptionList = {read=FOptionList};
	__property TDLFieldListManager* Fields = {read=FFields};
};

#pragma pack(pop)

typedef System::TMetaClass* TDLBaseDriverClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLBaseConnection : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TDLBaseDriver* FDriver;
	System::UnicodeString FErrorText;
	
public:
	__fastcall virtual TDLBaseConnection(void);
	virtual void __fastcall Connect(System::UnicodeString DataSource, System::UnicodeString UserName, System::UnicodeString Password, System::Classes::TStringList* OptionList) = 0 ;
	virtual void __fastcall Disconnect(void) = 0 ;
	virtual void __fastcall GetTableNames(System::Classes::TStrings* List) = 0 ;
	virtual void __fastcall GetFields(System::UnicodeString TableName);
	__property TDLBaseDriver* Driver = {read=FDriver};
	__property System::UnicodeString ErrorText = {read=FErrorText, write=FErrorText};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TDLBaseConnection(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLBaseResultSet : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TDLBaseConnection* FConnection;
	System::UnicodeString FErrorText;
	Rvdlcommon::TDLBuffer* FBuffer;
	TDLFieldListManager* FFields;
	
public:
	__fastcall virtual TDLBaseResultSet(TDLBaseConnection* AConnection);
	__fastcall virtual ~TDLBaseResultSet(void);
	virtual void __fastcall Open(System::UnicodeString QueryStr) = 0 ;
	virtual void __fastcall GetFields(TDLFieldListManager* AFields) = 0 ;
	virtual void __fastcall Close(void) = 0 ;
	virtual void __fastcall First(void) = 0 ;
	virtual void __fastcall Next(void) = 0 ;
	virtual bool __fastcall Eof(void) = 0 ;
	__property TDLBaseConnection* Connection = {read=FConnection};
	__property System::UnicodeString ErrorText = {read=FErrorText, write=FErrorText};
	__property TDLFieldListManager* Fields = {read=FFields};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TDLConfigFormClass ConnectionConfigureForm;
extern DELPHI_PACKAGE System::UnicodeString SQLEditorName;
extern DELPHI_PACKAGE System::Classes::TList* GDriverClassList;
extern DELPHI_PACKAGE TDLConnectionManager* GConnectionManager;
extern DELPHI_PACKAGE TDLResultSetManager* GResultSetManager;
extern DELPHI_PACKAGE void __fastcall CreateGlobalTableList(System::Classes::TStrings* TableNames);
extern DELPHI_PACKAGE void __fastcall FreeGlobalTableList(void);
extern DELPHI_PACKAGE void __fastcall AllocGlobalTableList(int Count);
extern DELPHI_PACKAGE void __fastcall SetGlobalTableItem(int Index, System::UnicodeString TableName);
extern DELPHI_PACKAGE void __fastcall SetGlobalErrorText(System::UnicodeString ErrorText);
extern DELPHI_PACKAGE void __fastcall RegisterDriverClass(TDLBaseDriverClass ADriverClass);
extern DELPHI_PACKAGE void __stdcall DataConnectionClose(Rvdlcommon::TDLConnectionClose &Params);
extern DELPHI_PACKAGE void __stdcall DataConnectionConfigure(Rvdlcommon::TDLConnectionConfigure &Params);
extern DELPHI_PACKAGE void __stdcall DataConnectionOpen(Rvdlcommon::TDLConnectionOpen &Params);
extern DELPHI_PACKAGE void __stdcall DataGetErrorText(Rvdlcommon::TDLErrorText &Params);
extern DELPHI_PACKAGE void __stdcall DataGetFields(Rvdlcommon::TDLFields &Params);
extern DELPHI_PACKAGE void __stdcall DataGetTables(Rvdlcommon::TDLTables &Params);
extern DELPHI_PACKAGE void __stdcall DataInformation(Rvdlcommon::TDLInformation &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetClose(Rvdlcommon::TDLResultSetClose &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetEOF(Rvdlcommon::TDLResultSetEOF &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetFirst(Rvdlcommon::TDLResultSetFirst &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetGetRow(Rvdlcommon::TDLResultSetRow &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetNext(Rvdlcommon::TDLResultSetNext &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetOpen(Rvdlcommon::TDLResultSetOpen &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetSetFilter(Rvdlcommon::TDLResultSetFilter &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetSetSort(Rvdlcommon::TDLResultSetSort &Params);
extern DELPHI_PACKAGE void __stdcall DataResultSetConfigure(Rvdlcommon::TDLResultSetConfigure &Params);
}	/* namespace Rvdlbase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDLBASE)
using namespace Rvdlbase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdlbaseHPP
