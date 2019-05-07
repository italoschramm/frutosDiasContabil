// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDLCommon.pas' rev: 29.00 (Windows)

#ifndef RvdlcommonHPP
#define RvdlcommonHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdlcommon
{
//-- forward type declarations -----------------------------------------------
struct TDLInformation;
struct TDLConnectionConfigure;
struct TDLConnectionOpen;
struct TDLConnectionClose;
struct TDLTableItem;
struct TDLTables;
struct TDLFieldItem;
struct TDLFields;
struct TDLResultSetOpen;
struct TDLResultSetClose;
struct TDLResultSetFirst;
struct TDLResultSetNext;
struct TDLResultSetEOF;
struct TDLResultSetRow;
struct TDLResultSetFilter;
struct TDLResultSetSort;
struct TDLErrorText;
struct TDLResultSetConfigure;
struct TDLQueryEditor;
class DELPHICLASS TDLBuffer;
//-- type declarations -------------------------------------------------------
typedef int TConnectionHandle;

typedef int TResultSetHandle;

typedef TDLInformation *PDLInformation;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLInformation
{
public:
	int Resultcode;
	bool Installed;
	System::Word VerMajor;
	System::Word VerMinor;
	System::StaticArray<System::WideChar, 33> InternalName;
	System::StaticArray<System::WideChar, 256> DisplayName;
};
#pragma pack(pop)


typedef TDLConnectionConfigure *PDLConnectionConfigure;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLConnectionConfigure
{
public:
	int ResultCode;
	System::WideChar *DataSource;
	System::WideChar *Options;
	System::WideChar *UserName;
	System::WideChar *PassWord;
};
#pragma pack(pop)


typedef TDLConnectionOpen *PDLConnectionOpen;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLConnectionOpen
{
public:
	int Resultcode;
	System::WideChar *DataSource;
	System::WideChar *Options;
	System::WideChar *UserName;
	System::WideChar *Password;
	int ConnectionHandle;
};
#pragma pack(pop)


typedef TDLConnectionClose *PDLConnectionClose;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLConnectionClose
{
public:
	int ResultCode;
	int ConnectionHandle;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLTableItem
{
public:
	System::WideChar *Name;
};
#pragma pack(pop)


typedef System::StaticArray<TDLTableItem, 10000> TDLTableList;

typedef TDLTableList *PDLTableList;

typedef TDLTables *PDLTables;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLTables
{
public:
	int ResultCode;
	int ConnectionHandle;
	int TableCount;
	TDLTableList *TableList;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLFieldItem
{
public:
	System::WideChar *FieldName;
	System::Byte DataType;
	int Width;
	System::WideChar *FullName;
	System::WideChar *Description;
};
#pragma pack(pop)


typedef System::StaticArray<TDLFieldItem, 10000> TDLFieldList;

typedef TDLFieldList *PDLFieldList;

typedef TDLFields *PDLFields;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLFields
{
public:
	int ResultCode;
	int ConnectionHandle;
	System::WideChar *TableName;
	int FieldCount;
	TDLFieldList *FieldList;
};
#pragma pack(pop)


typedef TDLResultSetOpen *PDLResultSetOpen;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetOpen
{
public:
	int ResultCode;
	int ConnectionHandle;
	System::WideChar *QueryCommand;
	int ResultSetHandle;
	int FieldCount;
	TDLFieldList *FieldList;
};
#pragma pack(pop)


typedef TDLResultSetClose *PDLResultSetClose;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetClose
{
public:
	int ResultCode;
	int ResultSetHandle;
};
#pragma pack(pop)


typedef TDLResultSetFirst *PDLResultSetFirst;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetFirst
{
public:
	int ResultCode;
	int ResultSetHandle;
};
#pragma pack(pop)


typedef TDLResultSetNext *PDLResultSetNext;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetNext
{
public:
	int ResultCode;
	int ResultSetHandle;
};
#pragma pack(pop)


typedef TDLResultSetEOF *PDLResultSetEOF;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetEOF
{
public:
	int ResultCode;
	int ResultSetHandle;
	bool Eof;
};
#pragma pack(pop)


typedef System::StaticArray<bool, 10000> TDLTransferFieldList;

typedef TDLTransferFieldList *PDLTransferFieldList;

typedef TDLResultSetRow *PDLResultSetRow;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetRow
{
public:
	int ResultCode;
	int ResultSetHandle;
	int TransferCount;
	TDLTransferFieldList *TransferList;
	System::WideChar *RowBuffer;
	int RowBufSize;
};
#pragma pack(pop)


typedef TDLResultSetFilter *PDLResultSetFilter;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetFilter
{
public:
	int ResultCode;
	int ResultSetHandle;
};
#pragma pack(pop)


typedef TDLResultSetSort *PDLResultSetSort;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetSort
{
public:
	int ResultCode;
	int ResultSetHandle;
};
#pragma pack(pop)


typedef TDLErrorText *PDLErrorText;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLErrorText
{
public:
	int ConnectionHandle;
	int ResultSetHandle;
	System::WideChar *ErrorText;
};
#pragma pack(pop)


typedef TDLResultSetConfigure *PDLResultSetConfigure;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLResultSetConfigure
{
public:
	int ResultCode;
	int ConnectionHandle;
	System::WideChar *QueryCommand;
	System::WideChar *QueryStruct;
};
#pragma pack(pop)


typedef void __stdcall (*TDLGetTablesProc)(TDLTables &Params);

typedef void __stdcall (*TDLGetFieldsProc)(TDLFields &Params);

typedef void __stdcall (*TDLConnectionCloseProc)(TDLConnectionClose &Params);

typedef void __stdcall (*TDLConnectionConfigureProc)(TDLConnectionConfigure &Params);

typedef void __stdcall (*TDLConnectionOpenProc)(TDLConnectionOpen &Params);

typedef void __stdcall (*TDLGetErrorTextProc)(TDLErrorText &Params);

typedef void __stdcall (*TDLInformationProc)(TDLInformation &Params);

typedef void __stdcall (*TDLResultSetCloseProc)(TDLResultSetClose &Params);

typedef void __stdcall (*TDLResultSetEOFProc)(TDLResultSetEOF &Params);

typedef void __stdcall (*TDLResultSetFirstProc)(TDLResultSetFirst &Params);

typedef void __stdcall (*TDLResultSetGetRowProc)(TDLResultSetRow &Params);

typedef void __stdcall (*TDLResultSetNextProc)(TDLResultSetNext &Params);

typedef void __stdcall (*TDLResultSetOpenProc)(TDLResultSetOpen &Params);

typedef void __stdcall (*TDLResultSetSetFilterProc)(TDLResultSetFilter &Params);

typedef void __stdcall (*TDLResultSetSetSortProc)(TDLResultSetSort &Params);

typedef void __stdcall (*TDLResultSetConfigureProc)(TDLResultSetConfigure &Params);

typedef TDLQueryEditor *PDLQueryEditor;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDLQueryEditor
{
public:
	int ResultCode;
	int ConnectionHandle;
	System::WideChar *QueryCommand;
	System::WideChar *QueryStruct;
	TDLGetTablesProc GetTablesProc;
	TDLGetFieldsProc GetFieldsProc;
	TDLConnectionCloseProc ConnectionCloseProc;
	TDLConnectionConfigureProc ConnectionConfigureProc;
	TDLConnectionOpenProc ConnectionOpenProc;
	TDLGetErrorTextProc GetErrorTextProc;
	TDLInformationProc InformationProc;
	TDLResultSetCloseProc ResultSetCloseProc;
	TDLResultSetEOFProc ResultSetEOFProc;
	TDLResultSetFirstProc ResultSetFirstProc;
	TDLResultSetGetRowProc ResultSetGetRowProc;
	TDLResultSetNextProc ResultSetNextProc;
	TDLResultSetOpenProc ResultSetOpenProc;
	TDLResultSetSetFilterProc ResultSetSetFilterProc;
	TDLResultSetSetSortProc ResultSetSetSortProc;
};
#pragma pack(pop)


#pragma pack(push,4)
class PASCALIMPLEMENTATION TDLBuffer : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::WideChar *FRowBuf;
	int FRowBufSize;
	System::WideChar *FRowBufPtr;
	int FFieldIndex;
	int FAddPad;
	int FFieldCount;
	int __fastcall GetBufferSize(void);
	void * __fastcall GetBuffer(void);
	void __fastcall AddingNative(void);
	void __fastcall AddingFormatted(void);
	void __fastcall AllocateSpace(int AddSize);
	void __fastcall WriteStr(System::UnicodeString Value);
	void __fastcall WriteLong(int Value);
	void __fastcall WriteInt64(__int64 Value);
	void __fastcall WriteBool(bool Value);
	void __fastcall WriteFloat(System::Extended Value);
	void __fastcall WriteCurr(System::Currency Value);
	void __fastcall WriteDateTime(System::TDateTime Value);
	void __fastcall WriteBuf(void *Buffer, int Len);
	
public:
	__fastcall TDLBuffer(void);
	__fastcall virtual ~TDLBuffer(void);
	void __fastcall Init(int AFieldCount);
	void __fastcall WriteNullData(void);
	void __fastcall WriteStrData(System::UnicodeString FormatData, System::UnicodeString NativeData);
	void __fastcall WriteLongData(System::UnicodeString FormatData, int NativeData);
	void __fastcall WriteInt64Data(System::UnicodeString FormatData, __int64 NativeData);
	void __fastcall WriteBoolData(System::UnicodeString FormatData, bool NativeData);
	void __fastcall WriteFloatData(System::UnicodeString FormatData, System::Extended NativeData);
	void __fastcall WriteCurrData(System::UnicodeString FormatData, System::Currency NativeData);
	void __fastcall WriteBCDData(System::UnicodeString FormatData, System::Currency NativeData);
	void __fastcall WriteDateTimeData(System::UnicodeString FormatData, System::TDateTime NativeData);
	void __fastcall WriteBlobData(void *Buffer, int Len);
	__property int AddPad = {read=FAddPad, write=FAddPad, nodefault};
	__property int FieldCount = {read=FFieldCount, nodefault};
	__property int BufferSize = {read=GetBufferSize, nodefault};
	__property void * Buffer = {read=GetBuffer};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const System::Int8 dt_String = System::Int8(0x0);
static const System::Int8 dt_Integer = System::Int8(0x1);
static const System::Int8 dt_Boolean = System::Int8(0x2);
static const System::Int8 dt_Float = System::Int8(0x3);
static const System::Int8 dt_Currency = System::Int8(0x4);
static const System::Int8 dt_BCD = System::Int8(0x5);
static const System::Int8 dt_Date = System::Int8(0x6);
static const System::Int8 dt_Time = System::Int8(0x7);
static const System::Int8 dt_DateTime = System::Int8(0x8);
static const System::Int8 dt_Blob = System::Int8(0x9);
static const System::Int8 dt_Memo = System::Int8(0xa);
static const System::Int8 dt_Graphic = System::Int8(0xb);
static const System::Int8 dt_Int64 = System::Int8(0xc);
}	/* namespace Rvdlcommon */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDLCOMMON)
using namespace Rvdlcommon;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdlcommonHPP
