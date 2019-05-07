// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCsData.pas' rev: 29.00 (Windows)

#ifndef RvcsdataHPP
#define RvcsdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Messages.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.TypInfo.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RvCsStd.hpp>
#include <RvData.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RvProj.hpp>
#include <RvCsRpt.hpp>
#include <RvDataField.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcsdata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDataText;
class DELPHICLASS TRaveDataMemo;
class DELPHICLASS TRaveCalcText;
class DELPHICLASS TRaveCalcVariable;
class DELPHICLASS TRaveCalcOp;
class DELPHICLASS TRaveCalcTotal;
class DELPHICLASS TRaveCalcController;
class DELPHICLASS TRaveDataMirror;
class DELPHICLASS TRaveDataMirrorSection;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveDataText : public Rvcsstd::TRaveText
{
	typedef Rvcsstd::TRaveText inherited;
	
protected:
	Rvdefine::TRaveFieldName FDataField;
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdata::TRaveBaseDataView* FLookupDataView;
	Rvdefine::TRaveFieldName FLookupField;
	Rvdefine::TRaveFieldName FLookupDisplay;
	System::UnicodeString FLookupInvalid;
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetText(void);
	void __fastcall SetDataField(Rvdefine::TRaveFieldName Value);
	void __fastcall SetLookupDataView(Rvdata::TRaveBaseDataView* Value);
	void __fastcall SetLookupField(Rvdefine::TRaveFieldName Value);
	void __fastcall SetLookupDisplay(Rvdefine::TRaveFieldName Value);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
public:
	__fastcall virtual TRaveDataText(System::Classes::TComponent* AOwner);
	
__published:
	__property Truncate = {default=1};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=SetDataField};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView};
	__property Rvdata::TRaveBaseDataView* LookupDataView = {read=FLookupDataView, write=SetLookupDataView, default=0};
	__property Rvdefine::TRaveFieldName LookupField = {read=FLookupField, write=SetLookupField};
	__property Rvdefine::TRaveFieldName LookupDisplay = {read=FLookupDisplay, write=SetLookupDisplay};
	__property System::UnicodeString LookupInvalid = {read=FLookupInvalid, write=FLookupInvalid};
public:
	/* TRaveCustomText.Destroy */ inline __fastcall virtual ~TRaveDataText(void) { }
	
};


class PASCALIMPLEMENTATION TRaveDataMemo : public Rvcsstd::TRaveMemo
{
	typedef Rvcsstd::TRaveMemo inherited;
	
protected:
	Rvdefine::TRaveFieldName FDataField;
	Rvdata::TRaveBaseDataView* FDataView;
	virtual System::UnicodeString __fastcall GetText(void);
	void __fastcall SetDataField(Rvdefine::TRaveFieldName Value);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
public:
	virtual bool __fastcall AllowPrint(void);
	
__published:
	__property ContainsRTF = {default=0};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=SetDataField};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView};
public:
	/* TRaveMemo.Create */ inline __fastcall virtual TRaveDataMemo(System::Classes::TComponent* AOwner) : Rvcsstd::TRaveMemo(AOwner) { }
	/* TRaveMemo.Destroy */ inline __fastcall virtual ~TRaveDataMemo(void) { }
	
};


enum DECLSPEC_DENUM TRaveDisplayType : unsigned char { dtNumericFormat, dtDateTimeFormat };

enum DECLSPEC_DENUM TRaveCalcFunction : unsigned char { cfNone, cfTrunc, cfFrac, cfRound, cfNeg, cfAbs, cfSin, cfCos, cfArcTan, cfSqr, cfSqrt, cfInc, cfDec, cfRandom, cfRound1, cfRound2, cfRound3, cfRound4, cfRound5, cfSecsToTime, cfMinsToTime, cfHoursToTime, cfTimeToSecs, cfTimeToMins, cfTimeToHours, cfPercent };

enum DECLSPEC_DENUM TRaveCalcOperator : unsigned char { coAdd, coSub, coMul, coDiv, coMod, coExp, coGreater, coLesser, coAverage };

class PASCALIMPLEMENTATION TRaveCalcText : public Rvcsstd::TRaveText
{
	typedef Rvcsstd::TRaveText inherited;
	
protected:
	int Count;
	System::Extended Total;
	Rvclass::TRaveComponent* FController;
	Rvclass::TRaveComponent* FInitializer;
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdefine::TRaveFieldName FDataField;
	Rvdefine::TRaveCalcType FCalcType;
	bool FRunningTotal;
	System::UnicodeString FDisplayFormat;
	TRaveDisplayType FDisplayType;
	bool FCountBlanks;
	bool FCountNulls;
	System::UnicodeString FCountValue;
	Rvclass::TRaveFloatEvent* FOnCalcValue;
	virtual void __fastcall BeforeReport(void);
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetText(void);
	System::Extended __fastcall GetValue(void);
	void __fastcall SetDataField(Rvdefine::TRaveFieldName Value);
	void __fastcall SetController(Rvclass::TRaveComponent* Value);
	void __fastcall SetInitializer(Rvclass::TRaveComponent* Value);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	void __fastcall CalcNewDataListen(Rvclass::TRaveComponent* Speaker, System::TObject* Msg);
	void __fastcall CalcInitDataListen(Rvclass::TRaveComponent* Speaker, System::TObject* Msg);
	virtual void __fastcall OverrideProperties(Rvclass::TRaveFiler* Filer);
	void __fastcall ReadControllerBand(Rvclass::TRaveReader* Reader);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveCalcText(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveCalcText(void);
	__property System::Extended Value = {read=GetValue};
	
__published:
	__property Rvdefine::TRaveCalcType CalcType = {read=FCalcType, write=FCalcType, default=1};
	__property Rvclass::TRaveComponent* Controller = {read=FController, write=SetController, default=0};
	__property bool CountBlanks = {read=FCountBlanks, write=FCountBlanks, default=1};
	__property bool CountNulls = {read=FCountNulls, write=FCountNulls, default=0};
	__property System::UnicodeString CountValue = {read=FCountValue, write=FCountValue};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=SetDataField};
	__property System::UnicodeString DisplayFormat = {read=FDisplayFormat, write=FDisplayFormat};
	__property TRaveDisplayType DisplayType = {read=FDisplayType, write=FDisplayType, default=0};
	__property Rvclass::TRaveComponent* Initializer = {read=FInitializer, write=SetInitializer, default=0};
	__property bool RunningTotal = {read=FRunningTotal, write=FRunningTotal, default=0};
	__property Rvclass::TRaveFloatEvent* OnCalcValue = {read=FOnCalcValue, write=FOnCalcValue};
};


class PASCALIMPLEMENTATION TRaveCalcVariable : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	System::UnicodeString FDestParam;
	System::UnicodeString FDestPIVar;
	System::UnicodeString FDisplayFormat;
	TRaveDisplayType FDisplayType;
	Rvclass::TRaveFloatEvent* FOnGetValue;
	virtual System::Extended __fastcall GetValue(void) = 0 ;
	virtual bool __fastcall GetIsNull(void);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	
public:
	__property System::Extended Value = {read=GetValue};
	__property bool IsNull = {read=GetIsNull, nodefault};
	__property System::UnicodeString DestParam = {read=FDestParam, write=FDestParam};
	__property System::UnicodeString DestPIVar = {read=FDestPIVar, write=FDestPIVar};
	__property System::UnicodeString DisplayFormat = {read=FDisplayFormat, write=FDisplayFormat};
	__property TRaveDisplayType DisplayType = {read=FDisplayType, write=FDisplayType, default=0};
	__property Rvclass::TRaveFloatEvent* OnGetValue = {read=FOnGetValue, write=FOnGetValue};
public:
	/* TRaveComponent.Create */ inline __fastcall virtual TRaveCalcVariable(System::Classes::TComponent* AOwner) : Rvclass::TRaveComponent(AOwner) { }
	/* TRaveComponent.Destroy */ inline __fastcall virtual ~TRaveCalcVariable(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCalcOp : public TRaveCalcVariable
{
	typedef TRaveCalcVariable inherited;
	
protected:
	TRaveCalcVariable* FSrc1CalcVar;
	Rvdefine::TRaveFieldName FSrc1DataField;
	Rvdata::TRaveBaseDataView* FSrc1DataView;
	System::Extended FSrc1Value;
	TRaveCalcFunction FSrc1Function;
	TRaveCalcVariable* FSrc2CalcVar;
	Rvdefine::TRaveFieldName FSrc2DataField;
	Rvdata::TRaveBaseDataView* FSrc2DataView;
	System::Extended FSrc2Value;
	TRaveCalcFunction FSrc2Function;
	TRaveCalcOperator FOperator;
	TRaveCalcFunction FResultFunction;
	virtual bool __fastcall GetIsNull(void);
	virtual System::Extended __fastcall GetValue(void);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
public:
	__fastcall virtual TRaveCalcOp(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveCalcOp(void);
	
__published:
	__property DestParam = {default=0};
	__property DestPIVar = {default=0};
	__property DisplayFormat = {default=0};
	__property DisplayType = {default=0};
	__property TRaveCalcOperator Operator = {read=FOperator, write=FOperator, default=0};
	__property TRaveCalcFunction ResultFunction = {read=FResultFunction, write=FResultFunction, default=0};
	__property TRaveCalcVariable* Src1CalcVar = {read=FSrc1CalcVar, write=FSrc1CalcVar, default=0};
	__property Rvdefine::TRaveFieldName Src1DataField = {read=FSrc1DataField, write=FSrc1DataField};
	__property Rvdata::TRaveBaseDataView* Src1DataView = {read=FSrc1DataView, write=FSrc1DataView, default=0};
	__property System::Extended Src1Value = {read=FSrc1Value, write=FSrc1Value};
	__property TRaveCalcFunction Src1Function = {read=FSrc1Function, write=FSrc1Function, default=0};
	__property TRaveCalcVariable* Src2CalcVar = {read=FSrc2CalcVar, write=FSrc2CalcVar, default=0};
	__property Rvdefine::TRaveFieldName Src2DataField = {read=FSrc2DataField, write=FSrc2DataField};
	__property Rvdata::TRaveBaseDataView* Src2DataView = {read=FSrc2DataView, write=FSrc2DataView, default=0};
	__property System::Extended Src2Value = {read=FSrc2Value, write=FSrc2Value};
	__property TRaveCalcFunction Src2Function = {read=FSrc2Function, write=FSrc2Function, default=0};
	__property OnGetValue;
};


class PASCALIMPLEMENTATION TRaveCalcTotal : public TRaveCalcVariable
{
	typedef TRaveCalcVariable inherited;
	
protected:
	int Count;
	System::Extended Total;
	TRaveCalcVariable* FCalcVar;
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdefine::TRaveFieldName FDataField;
	Rvclass::TRaveComponent* FController;
	Rvclass::TRaveComponent* FInitializer;
	Rvdefine::TRaveCalcType FCalcType;
	bool FCountBlanks;
	bool FCountNulls;
	System::UnicodeString FCountValue;
	bool FRunningTotal;
	Rvclass::TRaveFloatEvent* FOnCalcValue;
	virtual void __fastcall BeforeReport(void);
	void __fastcall SetController(Rvclass::TRaveComponent* Value);
	void __fastcall SetInitializer(Rvclass::TRaveComponent* Value);
	virtual System::Extended __fastcall GetValue(void);
	void __fastcall CalcNewDataListen(Rvclass::TRaveComponent* Speaker, System::TObject* Msg);
	void __fastcall CalcInitDataListen(Rvclass::TRaveComponent* Speaker, System::TObject* Msg);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveCalcTotal(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveCalcTotal(void);
	
__published:
	__property Rvdefine::TRaveCalcType CalcType = {read=FCalcType, write=FCalcType, default=1};
	__property TRaveCalcVariable* CalcVar = {read=FCalcVar, write=FCalcVar, default=0};
	__property Rvclass::TRaveComponent* Controller = {read=FController, write=SetController, default=0};
	__property bool CountBlanks = {read=FCountBlanks, write=FCountBlanks, default=1};
	__property bool CountNulls = {read=FCountNulls, write=FCountNulls, default=0};
	__property System::UnicodeString CountValue = {read=FCountValue, write=FCountValue};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=FDataField};
	__property DestParam = {default=0};
	__property DestPIVar = {default=0};
	__property DisplayFormat = {default=0};
	__property DisplayType = {default=0};
	__property Rvclass::TRaveComponent* Initializer = {read=FInitializer, write=SetInitializer, default=0};
	__property bool RunningTotal = {read=FRunningTotal, write=FRunningTotal, default=0};
	__property Rvclass::TRaveFloatEvent* OnCalcValue = {read=FOnCalcValue, write=FOnCalcValue};
	__property OnGetValue;
};


class PASCALIMPLEMENTATION TRaveCalcController : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	Rvclass::TRaveMethodList* CalcNewDataListenList;
	Rvclass::TRaveMethodList* CalcInitDataListenList;
	TRaveCalcVariable* FInitCalcVar;
	Rvdefine::TRaveFieldName FInitDataField;
	System::Extended FInitValue;
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveCalcController(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveCalcController(void);
	virtual void __fastcall AddListener(System::UnicodeString Conversation, Rvclass::TRaveListenEvent ListenMethod);
	virtual void __fastcall RemoveListener(System::UnicodeString Conversation, Rvclass::TRaveListenEvent ListenMethod);
	virtual bool __fastcall Habla(System::UnicodeString Conversation);
	
__published:
	__property TRaveCalcVariable* InitCalcVar = {read=FInitCalcVar, write=FInitCalcVar};
	__property Rvdefine::TRaveFieldName InitDataField = {read=FInitDataField, write=FInitDataField};
	__property System::Extended InitValue = {read=FInitValue, write=FInitValue};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataMirror : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString FDataValue;
	Rvcsstd::TRaveSection* FSectionMirror;
	bool FIsDefault;
	
__published:
	__property System::UnicodeString DataValue = {read=FDataValue, write=FDataValue};
	__property bool IsDefault = {read=FIsDefault, write=FIsDefault, default=0};
	__property Rvcsstd::TRaveSection* SectionMirror = {read=FSectionMirror, write=FSectionMirror, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveDataMirror(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRaveDataMirror(void) : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveDataMirrorSection : public Rvcsstd::TRaveSection
{
	typedef Rvcsstd::TRaveSection inherited;
	
protected:
	bool Initialized;
	bool DirectReference;
	Rvdefine::TRaveFieldName FDataField;
	Rvdata::TRaveBaseDataView* FDataView;
	Rvclass::TRavePersistentList* FDataMirrors;
	bool FCompareCase;
	Rvclass::TRaveControl* FSaveMirror;
	Rvdefine::TRaveAnchor FSaveAnchor;
	bool FSaveCompareCase;
	Rvdefine::TRaveFieldName FSaveDataField;
	Rvclass::TRavePersistentList* FSaveDataMirrors;
	Rvdata::TRaveBaseDataView* FSaveDataView;
	Rvdefine::TDisplayOn FSaveDisplayOn;
	int FSaveTag;
	Rvclass::TRaveStringEvent* FOnMirrorValue;
	void __fastcall SetDataMirrors(Rvclass::TRavePersistentList* Value);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall InitData(void);
	virtual void __fastcall DoneData(void);
	virtual void __fastcall SaveDesigned(void);
	virtual void __fastcall RestoreDesigned(void);
	virtual void __fastcall SaveAdjusted(void);
	virtual void __fastcall RestoreAdjusted(void);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveDataMirrorSection(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveDataMirrorSection(void);
	
__published:
	__property bool CompareCase = {read=FCompareCase, write=FCompareCase, default=0};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=FDataField};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView};
	__property Rvclass::TRavePersistentList* DataMirrors = {read=FDataMirrors, write=SetDataMirrors};
	__property Rvclass::TRaveStringEvent* OnMirrorValue = {read=FOnMirrorValue, write=FOnMirrorValue};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall CreateDataTextControl(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall CreateDataMemoControl(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
extern DELPHI_PACKAGE System::Extended __fastcall CalcFunction(System::Extended Value, TRaveCalcFunction Func);
extern DELPHI_PACKAGE System::Extended __fastcall CalcVariable(Rvclass::TRaveComponent* Self, TRaveCalcVariable* CalcVar, Rvdata::TRaveBaseDataView* DataView, Rvdefine::TRaveFieldName DataField, System::Extended Value, TRaveCalcFunction Func, bool &DoCount);
}	/* namespace Rvcsdata */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCSDATA)
using namespace Rvcsdata;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcsdataHPP
