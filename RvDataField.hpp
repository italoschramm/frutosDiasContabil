// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDataField.pas' rev: 29.00 (Windows)

#ifndef RvdatafieldHPP
#define RvdatafieldHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Vcl.Controls.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <RvDefine.hpp>
#include <RvClass.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdatafield
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDataRow;
class DELPHICLASS TRaveDataField;
class DELPHICLASS TRaveFormattedField;
class DELPHICLASS TRaveStringField;
class DELPHICLASS TRaveBooleanField;
class DELPHICLASS TRaveIntegerField;
class DELPHICLASS TRaveInt64Field;
class DELPHICLASS TRaveFloatField;
class DELPHICLASS TRaveCurrencyField;
class DELPHICLASS TRaveBCDField;
class DELPHICLASS TRaveDateTimeField;
class DELPHICLASS TRaveDateField;
class DELPHICLASS TRaveTimeField;
class DELPHICLASS TRaveBlobField;
class DELPHICLASS TRaveMemoField;
class DELPHICLASS TRaveGraphicField;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TDataRowType : unsigned char { rtFirst, rtMiddle, rtLast };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataRow : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int __fastcall ReadInt(System::WideChar * &CalcPtr);
	System::UnicodeString __fastcall ReadStr(System::WideChar * CalcPtr);
	
public:
	System::WideChar *DataPtr;
	int DataSize;
	TDataRowType DataRowType;
	TRaveDataRow* Next;
	__fastcall virtual ~TRaveDataRow(void);
	void __fastcall MoveTo(TRaveDataRow* Dest);
	void __fastcall Clear(void);
	void __fastcall Init(int Size);
	void * __fastcall GetNativePtr(int FieldIdx);
	void * __fastcall GetFormattedPtr(int FieldIdx);
	System::UnicodeString __fastcall GetNativeStr(int FieldIdx);
	System::UnicodeString __fastcall GetFormattedStr(int FieldIdx);
	void __fastcall GetNativeData(int FieldIdx, void * &CalcPtr, int &CalcSize);
public:
	/* TObject.Create */ inline __fastcall TRaveDataRow(void) : System::TObject() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveDataField : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	int FDataIndex;
	Rpdefine::TRPDataType FDataType;
	System::UnicodeString FFieldName;
	int FSize;
	System::UnicodeString FFullName;
	Rvdefine::TRaveMemoString FDescription;
	System::UnicodeString FNullText;
	bool FCalculated;
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void) = 0 ;
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual bool __fastcall GetAsBoolean(void);
	virtual int __fastcall GetAsInteger(void);
	virtual __int64 __fastcall GetAsInt64(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::Currency __fastcall GetAsCurrency(void);
	virtual System::TDateTime __fastcall GetAsDateTime(void);
	virtual System::TDate __fastcall GetAsDate(void);
	virtual System::TTime __fastcall GetAsTime(void);
	virtual void * __fastcall GetAsBlob(void);
	int __fastcall GetDataSize(void);
	bool __fastcall GetIsNull(void);
	void __fastcall SetFieldName(System::UnicodeString Value);
	
public:
	__fastcall virtual TRaveDataField(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveDataField(void);
	__property Rpdefine::TRPDataType DataType = {read=GetDataType, nodefault};
	__property int DataIndex = {read=FDataIndex, write=FDataIndex, nodefault};
	__property System::UnicodeString AsString = {read=GetAsString};
	__property bool AsBoolean = {read=GetAsBoolean, nodefault};
	__property int AsInteger = {read=GetAsInteger, nodefault};
	__property __int64 AsInt64 = {read=GetAsInt64};
	__property System::Extended AsFloat = {read=GetAsFloat};
	__property System::Currency AsCurrency = {read=GetAsCurrency};
	__property System::TDateTime AsDateTime = {read=GetAsDateTime};
	__property System::TDate AsDate = {read=GetAsDate};
	__property System::TTime AsTime = {read=GetAsTime};
	__property void * AsBlob = {read=GetAsBlob};
	__property int DataSize = {read=GetDataSize, nodefault};
	__property bool IsNull = {read=GetIsNull, nodefault};
	
__published:
	__property bool Calculated = {read=FCalculated, write=FCalculated, default=0};
	__property Rvdefine::TRaveMemoString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString FieldName = {read=FFieldName, write=SetFieldName};
	__property System::UnicodeString FullName = {read=FFullName, write=FFullName};
	__property System::UnicodeString NullText = {read=FNullText, write=FNullText};
	__property int Size = {read=FSize, write=FSize, default=10};
};


typedef System::TMetaClass* TRaveDataFieldClass;

class PASCALIMPLEMENTATION TRaveFormattedField : public TRaveDataField
{
	typedef TRaveDataField inherited;
	
protected:
	System::UnicodeString FDisplayFormat;
	
__published:
	__property System::UnicodeString DisplayFormat = {read=FDisplayFormat, write=FDisplayFormat};
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveFormattedField(System::Classes::TComponent* AOwner) : TRaveDataField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveFormattedField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveStringField : public TRaveDataField
{
	typedef TRaveDataField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveStringField(System::Classes::TComponent* AOwner) : TRaveDataField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveStringField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveBooleanField : public TRaveDataField
{
	typedef TRaveDataField inherited;
	
protected:
	System::UnicodeString FTextTrue;
	System::UnicodeString FTextFalse;
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual bool __fastcall GetAsBoolean(void);
	
__published:
	__property System::UnicodeString TextTrue = {read=FTextTrue, write=FTextTrue};
	__property System::UnicodeString TextFalse = {read=FTextFalse, write=FTextFalse};
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveBooleanField(System::Classes::TComponent* AOwner) : TRaveDataField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveBooleanField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveIntegerField : public TRaveFormattedField
{
	typedef TRaveFormattedField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual int __fastcall GetAsInteger(void);
	virtual __int64 __fastcall GetAsInt64(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::Currency __fastcall GetAsCurrency(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveIntegerField(System::Classes::TComponent* AOwner) : TRaveFormattedField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveIntegerField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveInt64Field : public TRaveFormattedField
{
	typedef TRaveFormattedField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual int __fastcall GetAsInteger(void);
	virtual __int64 __fastcall GetAsInt64(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::Currency __fastcall GetAsCurrency(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveInt64Field(System::Classes::TComponent* AOwner) : TRaveFormattedField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveInt64Field(void) { }
	
};


class PASCALIMPLEMENTATION TRaveFloatField : public TRaveFormattedField
{
	typedef TRaveFormattedField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual int __fastcall GetAsInteger(void);
	virtual __int64 __fastcall GetAsInt64(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::Currency __fastcall GetAsCurrency(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveFloatField(System::Classes::TComponent* AOwner) : TRaveFormattedField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveFloatField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCurrencyField : public TRaveFormattedField
{
	typedef TRaveFormattedField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual int __fastcall GetAsInteger(void);
	virtual __int64 __fastcall GetAsInt64(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::Currency __fastcall GetAsCurrency(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveCurrencyField(System::Classes::TComponent* AOwner) : TRaveFormattedField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveCurrencyField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveBCDField : public TRaveCurrencyField
{
	typedef TRaveCurrencyField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveBCDField(System::Classes::TComponent* AOwner) : TRaveCurrencyField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveBCDField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveDateTimeField : public TRaveFormattedField
{
	typedef TRaveFormattedField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual System::Extended __fastcall GetAsFloat(void);
	virtual System::TDateTime __fastcall GetAsDateTime(void);
	virtual System::TDate __fastcall GetAsDate(void);
	virtual System::TTime __fastcall GetAsTime(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveDateTimeField(System::Classes::TComponent* AOwner) : TRaveFormattedField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveDateTimeField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveDateField : public TRaveDateTimeField
{
	typedef TRaveDateTimeField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual System::TDateTime __fastcall GetAsDateTime(void);
	virtual System::TDate __fastcall GetAsDate(void);
	virtual System::TTime __fastcall GetAsTime(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveDateField(System::Classes::TComponent* AOwner) : TRaveDateTimeField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveDateField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveTimeField : public TRaveDateTimeField
{
	typedef TRaveDateTimeField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
	virtual System::TDateTime __fastcall GetAsDateTime(void);
	virtual System::TDate __fastcall GetAsDate(void);
	virtual System::TTime __fastcall GetAsTime(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveTimeField(System::Classes::TComponent* AOwner) : TRaveDateTimeField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveTimeField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveBlobField : public TRaveDataField
{
	typedef TRaveDataField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveBlobField(System::Classes::TComponent* AOwner) : TRaveDataField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveBlobField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveMemoField : public TRaveBlobField
{
	typedef TRaveBlobField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveMemoField(System::Classes::TComponent* AOwner) : TRaveBlobField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveMemoField(void) { }
	
};


class PASCALIMPLEMENTATION TRaveGraphicField : public TRaveBlobField
{
	typedef TRaveBlobField inherited;
	
protected:
	virtual Rpdefine::TRPDataType __fastcall GetDataType(void);
	virtual System::UnicodeString __fastcall GetAsString(void);
public:
	/* TRaveDataField.Create */ inline __fastcall virtual TRaveGraphicField(System::Classes::TComponent* AOwner) : TRaveBlobField(AOwner) { }
	/* TRaveDataField.Destroy */ inline __fastcall virtual ~TRaveGraphicField(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::StaticArray<TRaveDataFieldClass, 13> DataFieldTypes;
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvdatafield */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDATAFIELD)
using namespace Rvdatafield;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdatafieldHPP
