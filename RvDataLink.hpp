// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDataLink.pas' rev: 29.00 (Windows)

#ifndef RvdatalinkHPP
#define RvdatalinkHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <RvDLCommon.hpp>
#include <RvDLBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdatalink
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TDataConnection;
class DELPHICLASS TResultSetField;
class DELPHICLASS TResultSetFieldList;
class DELPHICLASS TDataResultSet;
class DELPHICLASS TRaveDataLink;
class DELPHICLASS TRaveDataLinks;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TDataConnection : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TRaveDataLink* FDataLink;
	int FConnectionHandle;
	System::UnicodeString FDataSource;
	System::UnicodeString FOptions;
	System::UnicodeString FUserName;
	System::UnicodeString FPassword;
	
public:
	__fastcall TDataConnection(TRaveDataLink* ADataLink);
	__fastcall virtual ~TDataConnection(void);
	void __fastcall Open(void);
	void __fastcall Close(void);
	void __fastcall GetFieldDefs(const System::UnicodeString TableName, System::Classes::TStrings* FieldDefs);
	void __fastcall GetTableNames(System::Classes::TStrings* TableNames);
	bool __fastcall ResultSetConfigure(System::UnicodeString &QueryCommand, System::UnicodeString &AStruct);
	__property System::UnicodeString DataSource = {read=FDataSource, write=FDataSource};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString Options = {read=FOptions, write=FOptions};
	__property System::UnicodeString UserName = {read=FUserName, write=FUserName};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResultSetField : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString FieldName;
	Rpdefine::TRPDataType DataType;
	int Width;
	System::UnicodeString FullName;
	System::UnicodeString Description;
public:
	/* TObject.Create */ inline __fastcall TResultSetField(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TResultSetField(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResultSetFieldList : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TResultSetField* operator[](int Index) { return Items[Index]; }
	
protected:
	System::Classes::TList* FList;
	int __fastcall GetCount(void);
	TResultSetField* __fastcall GetItem(int Index);
	
public:
	__fastcall TResultSetFieldList(void);
	__fastcall virtual ~TResultSetFieldList(void);
	TResultSetField* __fastcall Add(void);
	void __fastcall Clear(void);
	__property int Count = {read=GetCount, nodefault};
	__property TResultSetField* Items[int Index] = {read=GetItem/*, default*/};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDataResultSet : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TDataConnection* FConnection;
	System::UnicodeString FCommandText;
	int FResultSetHandle;
	TResultSetFieldList* FFieldList;
	Rvdlcommon::TDLTransferFieldList *FTransferList;
	int __fastcall GetFieldCount(void);
	
public:
	__fastcall TDataResultSet(TDataConnection* AConnection);
	__fastcall virtual ~TDataResultSet(void);
	void __fastcall Close(void);
	bool __fastcall Eof(void);
	void __fastcall First(void);
	void __fastcall GetRow(void * &RowBuffer, int &RowBufSize);
	void __fastcall Next(void);
	void __fastcall Open(void);
	__property int FieldCount = {read=GetFieldCount, nodefault};
	__property TResultSetFieldList* Fields = {read=FFieldList};
	__property System::UnicodeString CommandText = {read=FCommandText, write=FCommandText};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataLink : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString FFileName;
	int FLibHandle;
	Rvdlcommon::TDLInformationProc FInformationProc;
	Rvdlcommon::TDLConnectionConfigureProc FConnectionConfigureProc;
	Rvdlcommon::TDLConnectionOpenProc FConnectionOpenProc;
	Rvdlcommon::TDLConnectionCloseProc FConnectionCloseProc;
	Rvdlcommon::TDLGetTablesProc FGetTablesProc;
	Rvdlcommon::TDLGetFieldsProc FGetFieldsProc;
	Rvdlcommon::TDLResultSetOpenProc FResultSetOpenProc;
	Rvdlcommon::TDLResultSetCloseProc FResultSetCloseProc;
	Rvdlcommon::TDLResultSetFirstProc FResultSetFirstProc;
	Rvdlcommon::TDLResultSetNextProc FResultSetNextProc;
	Rvdlcommon::TDLResultSetEOFProc FResultSetEOFProc;
	Rvdlcommon::TDLResultSetGetRowProc FResultSetGetRowProc;
	Rvdlcommon::TDLResultSetSetFilterProc FResultSetSetFilterProc;
	Rvdlcommon::TDLResultSetSetSortProc FResultSetSetSortProc;
	Rvdlcommon::TDLResultSetConfigureProc FResultSetConfigureProc;
	Rvdlcommon::TDLGetErrorTextProc FErrorTextProc;
	Rvdlbase::TDLBaseDriver* FDriver;
	bool FInstalled;
	System::UnicodeString FInternalName;
	System::UnicodeString FDisplayName;
	int FVerMajor;
	int FVerMinor;
	void __fastcall BindProcs(void);
	void __fastcall CheckInstalled(void);
	void * __fastcall FindProc(const System::UnicodeString Name);
	bool __fastcall GetIsDynamicLink(void);
	void __fastcall Information(void);
	void __fastcall LoadDLL(const System::UnicodeString FileName);
	void __fastcall LogAPIError(const System::UnicodeString APIName, const System::UnicodeString Message);
	void __fastcall LogConnectionError(int ConnectionHandle, const System::UnicodeString APIName, const System::UnicodeString TableName = System::UnicodeString());
	void __fastcall LogGlobalError(const System::UnicodeString APIName);
	void __fastcall LogResultSetError(int ResultSetHandle, const System::UnicodeString APIName);
	void __fastcall UnloadDLL(void);
	__fastcall virtual ~TRaveDataLink(void);
	void __fastcall ConnectionClose(int ConnectionHandle);
	bool __fastcall ConnectionConfigure(System::UnicodeString &DataSource, System::UnicodeString &Options, System::UnicodeString &UserName, System::UnicodeString &Password);
	void __fastcall ConnectionOpen(const System::UnicodeString DataSource, const System::UnicodeString Options, const System::UnicodeString UserName, const System::UnicodeString Password, int &ConnectionHandle);
	void __fastcall GetFieldDefs(int ConnectionHandle, const System::UnicodeString TableName, System::Classes::TStrings* FieldDefs);
	void __fastcall GetTableNames(int ConnectionHandle, System::Classes::TStrings* TableNames);
	void __fastcall InitDynamic(const System::UnicodeString FileName);
	void __fastcall InitStatic(Rvdlbase::TDLBaseDriverClass ADriverClass);
	void __fastcall ResultSetClose(int &ResultSetHandle);
	bool __fastcall ResultSetConfigure(System::UnicodeString &QueryCommand, int ConnectionHandle, System::UnicodeString &AStruct);
	bool __fastcall ResultSetEOF(int ResultSetHandle);
	void __fastcall ResultSetFirst(int ResultSetHandle);
	void __fastcall ResultSetGetRow(int ResultSetHandle, int TransferCount, Rvdlcommon::PDLTransferFieldList TransferList, void * &RowBuffer, int &RowBufSize);
	void __fastcall ResultSetNext(int ResultSetHandle);
	void __fastcall ResultSetOpen(int ConnectionHandle, const System::UnicodeString QueryCommand, int &ResultSetHandle, TResultSetFieldList* FieldList);
	__property System::UnicodeString DisplayName = {read=FDisplayName};
	__property bool Installed = {read=FInstalled, nodefault};
	__property System::UnicodeString InternalName = {read=FInternalName};
	__property bool IsDynamicLink = {read=GetIsDynamicLink, nodefault};
	__property int VerMajor = {read=FVerMajor, nodefault};
	__property int VerMinor = {read=FVerMinor, nodefault};
	__property Rvdlbase::TDLBaseDriver* Driver = {read=FDriver};
public:
	/* TObject.Create */ inline __fastcall TRaveDataLink(void) : System::TObject() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataLinks : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TRaveDataLink* operator[](int Index) { return Items[Index]; }
	
protected:
	System::Classes::TList* FItems;
	int __fastcall GetCount(void);
	TRaveDataLink* __fastcall GetItem(int Index);
	
public:
	__fastcall TRaveDataLinks(void);
	__fastcall virtual ~TRaveDataLinks(void);
	void __fastcall AddDynamic(const System::UnicodeString FileName);
	void __fastcall AddStatic(Rvdlbase::TDLBaseDriverClass ADriverClass);
	TDataConnection* __fastcall CreateConnection(const System::UnicodeString InternalName);
	TRaveDataLink* __fastcall FindDataLink(const System::UnicodeString InternalName);
	__property int Count = {read=GetCount, nodefault};
	__property TRaveDataLink* Items[int Index] = {read=GetItem/*, default*/};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRaveDataLinks* GDataLinks;
extern DELPHI_PACKAGE void __fastcall (*LogDataLinkError)(System::UnicodeString APIName, System::UnicodeString Message);
extern DELPHI_PACKAGE void __fastcall AddDynamicDataLinks(System::UnicodeString Path);
extern DELPHI_PACKAGE void __fastcall AddStaticDataLinks(void);
extern DELPHI_PACKAGE TRaveDataLink* __fastcall FindDataLink(const System::UnicodeString InternalName);
}	/* namespace Rvdatalink */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDATALINK)
using namespace Rvdatalink;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdatalinkHPP
