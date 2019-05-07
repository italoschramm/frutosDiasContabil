// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvData.pas' rev: 29.00 (Windows)

#ifndef RvdataHPP
#define RvdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RpDefine.hpp>
#include <RvDataField.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDataFieldInfo;
class DELPHICLASS TRaveBaseDataView;
class DELPHICLASS TRaveDataBuffer;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataFieldInfo : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString FieldName;
	Rpdefine::TRPDataType DataType;
	int Width;
	System::UnicodeString FullName;
	System::UnicodeString Description;
public:
	/* TObject.Create */ inline __fastcall TRaveDataFieldInfo(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TRaveDataFieldInfo(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveBaseDataView : public Rvclass::TRaveDataObject
{
	typedef Rvclass::TRaveDataObject inherited;
	
protected:
	bool DataOpened;
	bool FEmpty;
	System::Classes::TStringList* FieldNameList;
	bool FSaving;
	bool AtEOF;
	Rvdatafield::TRaveDataRow* DataRow;
	Rvdatafield::TRaveDataRow* ValueListHead;
	Rvdatafield::TRaveDataRow* ValueListTail;
	Rvdatafield::TRaveDataRow* ValueListPtr;
	bool StateSaveEOF;
	Rvdatafield::TRaveDataRow* SaveValueListPtr;
	bool SaveAtEOF;
	bool SaveSaving;
	virtual bool __fastcall AcceptChild(System::TClass NewChild);
	void __fastcall AddValueListItem(void);
	virtual void __fastcall AfterReport(void);
	void __fastcall GetData(int EventType);
	virtual void __fastcall GetRow(int EventType) = 0 ;
	void __fastcall NextValueListItem(void);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	
public:
	__fastcall virtual TRaveBaseDataView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveBaseDataView(void);
	Rvdatafield::TRaveDataRow* __fastcall ActiveDataRow(void);
	virtual void __fastcall Close(void);
	Rvdatafield::TRaveDataField* __fastcall FieldByName(System::UnicodeString FieldName);
	virtual void __fastcall First(void);
	virtual void __fastcall Next(void);
	virtual void __fastcall GetCurrentRow(void);
	virtual bool __fastcall Eof(void);
	virtual void __fastcall CreateFields(System::Classes::TList* AFieldList) = 0 ;
	virtual void __fastcall SetFilter(System::Classes::TStringList* FilterList) = 0 ;
	virtual void __fastcall SetRemoteSort(System::Classes::TStringList* SortList) = 0 ;
	virtual bool __fastcall CheckRowsLeft(int ReqRows);
	virtual void __fastcall SaveState(void);
	virtual void __fastcall RestoreState(void);
	virtual bool __fastcall CheckBeforeEOF(void);
	virtual void __fastcall Peek(int Amount);
	virtual void __fastcall Unpeek(void);
	__property bool Empty = {read=FEmpty, nodefault};
	__property bool Saving = {read=FSaving, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataBuffer : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::WideChar *RowBuf;
	int RowBufSize;
	System::WideChar *RowBufPtr;
	int FieldIdx;
	int FAddPad;
	int FFieldCount;
	int __fastcall GetBufferSize(void);
	void * __fastcall GetBuffer(void);
	void __fastcall AddingNative(void);
	void __fastcall AddingFormatted(void);
	void __fastcall AllocateSpace(int AddSize);
	void __fastcall WriteStr(System::UnicodeString Value);
	void __fastcall WriteInt(int Value);
	void __fastcall WriteBool(bool Value);
	void __fastcall WriteFloat(System::Extended Value);
	void __fastcall WriteCurr(System::Currency Value);
	void __fastcall WriteDateTime(System::TDateTime Value);
	void __fastcall WriteBuf(void *Buffer, int Len);
	
public:
	__fastcall TRaveDataBuffer(void);
	__fastcall virtual ~TRaveDataBuffer(void);
	void __fastcall Init(int AFieldCount);
	void __fastcall WriteNullData(void);
	void __fastcall WriteStrData(System::UnicodeString FormatData, System::UnicodeString NativeData);
	void __fastcall WriteIntData(System::UnicodeString FormatData, int NativeData);
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
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall (*CreateTextControlProc)(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall (*CreateDataTextControlProc)(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall (*CreateDataMemoControlProc)(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE System::UnicodeString __fastcall ProcessDataStr(Rvclass::TRaveComponent* Self, TRaveBaseDataView* DefaultDataView, System::UnicodeString Value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall CreateFieldName(System::UnicodeString DataViewName, System::UnicodeString FieldName);
extern DELPHI_PACKAGE void __fastcall CreateFields(TRaveBaseDataView* DataView, System::Classes::TStringList* DeletedFields, System::Classes::TStringList* ReplacedFields, bool DoCreate);
extern DELPHI_PACKAGE System::UnicodeString __fastcall PerformLookup(TRaveBaseDataView* LookupDataView, System::UnicodeString LookupValue, Rvdatafield::TRaveDataField* LookupValueField, Rvdefine::TRaveFieldName LookupField, Rvdefine::TRaveFieldName LookupDisplay, System::UnicodeString LookupInvalid);
extern DELPHI_PACKAGE void __fastcall DataViewFirst(TRaveBaseDataView* DataView, Rvdefine::TRaveFieldName DetailKey, TRaveBaseDataView* MasterDataView, Rvdefine::TRaveFieldName MasterKey, System::UnicodeString SortKey);
}	/* namespace Rvdata */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDATA)
using namespace Rvdata;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdataHPP
