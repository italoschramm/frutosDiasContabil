// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCsStd.pas' rev: 29.00 (Windows)

#ifndef RvcsstdHPP
#define RvcsstdHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RvData.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpMemo.hpp>
#include <RvDataField.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcsstd
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveFontMaster;
class DELPHICLASS TRavePageNumInit;
class DELPHICLASS TRaveCustomText;
class DELPHICLASS TRaveText;
class DELPHICLASS TRavePrintEvent;
class DELPHICLASS TRaveSection;
class DELPHICLASS TRaveBaseImage;
class DELPHICLASS TRaveGraphicImage;
class DELPHICLASS TRaveBitmap;
class DELPHICLASS TRaveMetaFile;
class DELPHICLASS TRaveMailMergeItem;
class DELPHICLASS TRaveMemo;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveFontMaster : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	Rvclass::TRaveFont* FFont;
	void __fastcall SetFont(Rvclass::TRaveFont* Value);
	
public:
	__fastcall virtual TRaveFontMaster(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveFontMaster(void);
	
__published:
	__property Rvclass::TRaveFont* Font = {read=FFont, write=SetFont};
};


class PASCALIMPLEMENTATION TRavePageNumInit : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	int FInitValue;
	Rvdata::TRaveBaseDataView* FInitDataView;
	Rvdefine::TRaveFieldName FInitDataField;
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall Print(Rpbase::TBaseReport* AReport);
	
public:
	__fastcall virtual TRavePageNumInit(System::Classes::TComponent* AOwner);
	
__published:
	__property int InitValue = {read=FInitValue, write=FInitValue, default=1};
	__property Rvdata::TRaveBaseDataView* InitDataView = {read=FInitDataView, write=FInitDataView, default=0};
	__property Rvdefine::TRaveFieldName InitDataField = {read=FInitDataField, write=FInitDataField};
public:
	/* TRaveComponent.Destroy */ inline __fastcall virtual ~TRavePageNumInit(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCustomText : public Rvclass::TRaveControl
{
	typedef Rvclass::TRaveControl inherited;
	
protected:
	Rvclass::TRaveFont* FFont;
	Rpdefine::TPrintJustify FFontJustify;
	System::UnicodeString FText;
	TRaveFontMaster* FFontMirror;
	Rvclass::TRaveStringEvent* FOnGetText;
	bool BracketText;
	HFONT __fastcall MakeFont(void);
	void __fastcall PaintText(NativeUInt Handle, System::UnicodeString Text, Rvdefine::TRaveUnits PaintLeft, Rvdefine::TRaveUnits PaintRight, Rvdefine::TRaveUnits &PaintTop, bool Truncate = false);
	virtual void __fastcall SetFontAttr(Rvdefine::TFontAttribute Index, Rvclass::TRaveFont* Value);
	virtual Rvclass::TRaveFont* __fastcall GetFontAttr(Rvdefine::TFontAttribute Index);
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetText(void);
	void __fastcall SetFont(Rvclass::TRaveFont* Value);
	virtual void __fastcall SetFontJustify(Rpdefine::TPrintJustify Value);
	virtual Rpdefine::TPrintJustify __fastcall GetFontJustify(void);
	virtual void __fastcall SetForeColor(System::Uitypes::TColor Value);
	virtual System::Uitypes::TColor __fastcall GetForeColor(void);
	void __fastcall SetFontMirror(TRaveFontMaster* Value);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	void __fastcall DoGetText(System::UnicodeString &Value);
	
public:
	__fastcall virtual TRaveCustomText(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveCustomText(void);
	__property TRaveFontMaster* FontMirror = {read=FFontMirror, write=SetFontMirror};
	__property System::Uitypes::TColor Color = {read=GetForeColor, write=SetForeColor, default=0};
	__property Rvclass::TRaveFont* Font = {read=FFont, write=SetFont};
};


class PASCALIMPLEMENTATION TRaveText : public TRaveCustomText
{
	typedef TRaveCustomText inherited;
	
protected:
	bool FTruncate;
	int FRotation;
	virtual Rvdefine::TRaveUnits __fastcall GetHeight(void);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveText(System::Classes::TComponent* AOwner);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	
__published:
	__property Color = {default=0};
	__property Font;
	__property FontJustify;
	__property FontMirror;
	__property Left = {default=0};
	__property int Rotation = {read=FRotation, write=FRotation, default=0};
	__property Text = {default=0};
	__property Top = {default=0};
	__property bool Truncate = {read=FTruncate, write=FTruncate, default=0};
	__property Width = {default=0};
	__property Rvclass::TRaveStringEvent* OnGetText = {read=FOnGetText, write=FOnGetText};
public:
	/* TRaveCustomText.Destroy */ inline __fastcall virtual ~TRaveText(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRavePrintEvent : public Rvclass::TRaveSimpleEvent
{
	typedef Rvclass::TRaveSimpleEvent inherited;
	
protected:
	Rpbase::TBaseReport* FReport;
	virtual bool __fastcall SuspendValid(void);
	
public:
	virtual void __fastcall DefineParams(void);
	virtual System::UnicodeString __fastcall ParamSource(void);
	
__published:
	__property Rpbase::TBaseReport* Report = {read=FReport, write=FReport};
public:
	/* TRaveEvent.Create */ inline __fastcall virtual TRavePrintEvent(void) : Rvclass::TRaveSimpleEvent() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRavePrintEvent(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveSection : public Rvclass::TRaveContainerControl
{
	typedef Rvclass::TRaveContainerControl inherited;
	
protected:
	bool FWasteFit;
	TRavePrintEvent* FOnPrint;
	virtual void __fastcall BeforePrint(void);
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveSection(System::Classes::TComponent* AOwner);
	
__published:
	__property Height = {default=0};
	__property Left = {default=0};
	__property Top = {default=0};
	__property bool WasteFit = {read=FWasteFit, write=FWasteFit, default=0};
	__property Width = {default=0};
	__property TRavePrintEvent* OnPrint = {read=FOnPrint, write=FOnPrint};
public:
	/* TRaveControl.Destroy */ inline __fastcall virtual ~TRaveSection(void) { }
	
};


enum DECLSPEC_DENUM TMatchSide : unsigned char { msWidth, msHeight, msBoth, msInside };

class PASCALIMPLEMENTATION TRaveBaseImage : public Rvclass::TRaveControl
{
	typedef Rvclass::TRaveControl inherited;
	
protected:
	TMatchSide FMatchSide;
	bool FMatchHeight;
	System::Sysutils::TFileName FFileLink;
	Rvdefine::TRaveFieldName FDataField;
	Rvdata::TRaveBaseDataView* FDataView;
	void __fastcall SetFileLink(System::Sysutils::TFileName Value);
	void __fastcall SetDataField(Rvdefine::TRaveFieldName Value);
	void __fastcall SetMatchSide(TMatchSide Value);
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall LoadFromStream(System::Classes::TStream* Stream) = 0 ;
	virtual bool __fastcall ImageValid(void) = 0 ;
	virtual void __fastcall UnloadAltImage(void) = 0 ;
	virtual int __fastcall ImageWidth(void) = 0 ;
	virtual int __fastcall ImageHeight(void) = 0 ;
	virtual void __fastcall PaintImage(Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Dest) = 0 ;
	virtual void __fastcall PrintImage(Rpbase::TBaseReport* Report, Rvdefine::TRaveUnits X1, Rvdefine::TRaveUnits Y1, Rvdefine::TRaveUnits X2, Rvdefine::TRaveUnits Y2) = 0 ;
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveBaseImage(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveBaseImage(void);
	virtual System::UnicodeString __fastcall ImageName(void);
	virtual System::UnicodeString __fastcall ImageFilter(void);
	
__published:
	__property Height = {default=0};
	__property Left = {default=0};
	__property Top = {default=0};
	__property Width = {default=0};
	__property TMatchSide MatchSide = {read=FMatchSide, write=SetMatchSide, default=0};
	__property System::Sysutils::TFileName FileLink = {read=FFileLink, write=SetFileLink};
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=SetDataField};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
};


class PASCALIMPLEMENTATION TRaveGraphicImage : public TRaveBaseImage
{
	typedef TRaveBaseImage inherited;
	
protected:
	Vcl::Graphics::TGraphic* FImage;
	Vcl::Graphics::TGraphic* FAltImage;
	virtual Vcl::Graphics::TGraphic* __fastcall CreateGraphic(void) = 0 ;
	void __fastcall SetImage(Vcl::Graphics::TGraphic* Value);
	Vcl::Graphics::TGraphic* __fastcall ActiveImage(void);
	virtual void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	virtual void __fastcall UnloadAltImage(void);
	virtual int __fastcall ImageWidth(void);
	virtual int __fastcall ImageHeight(void);
	virtual void __fastcall PaintImage(Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Dest);
	
public:
	__fastcall virtual TRaveGraphicImage(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveGraphicImage(void);
	
__published:
	__property Vcl::Graphics::TGraphic* Image = {read=FImage, write=SetImage};
};


class PASCALIMPLEMENTATION TRaveBitmap : public TRaveGraphicImage
{
	typedef TRaveGraphicImage inherited;
	
protected:
	virtual Vcl::Graphics::TGraphic* __fastcall CreateGraphic(void);
	virtual bool __fastcall ImageValid(void);
	virtual void __fastcall PrintImage(Rpbase::TBaseReport* Report, Rvdefine::TRaveUnits X1, Rvdefine::TRaveUnits Y1, Rvdefine::TRaveUnits X2, Rvdefine::TRaveUnits Y2);
	
public:
	virtual System::UnicodeString __fastcall ImageName(void);
	virtual System::UnicodeString __fastcall ImageFilter(void);
public:
	/* TRaveGraphicImage.Create */ inline __fastcall virtual TRaveBitmap(System::Classes::TComponent* AOwner) : TRaveGraphicImage(AOwner) { }
	/* TRaveGraphicImage.Destroy */ inline __fastcall virtual ~TRaveBitmap(void) { }
	
};


class PASCALIMPLEMENTATION TRaveMetaFile : public TRaveGraphicImage
{
	typedef TRaveGraphicImage inherited;
	
protected:
	virtual Vcl::Graphics::TGraphic* __fastcall CreateGraphic(void);
	virtual bool __fastcall ImageValid(void);
	virtual void __fastcall PrintImage(Rpbase::TBaseReport* Report, Rvdefine::TRaveUnits X1, Rvdefine::TRaveUnits Y1, Rvdefine::TRaveUnits X2, Rvdefine::TRaveUnits Y2);
	
public:
	virtual System::UnicodeString __fastcall ImageName(void);
	virtual System::UnicodeString __fastcall ImageFilter(void);
public:
	/* TRaveGraphicImage.Create */ inline __fastcall virtual TRaveMetaFile(System::Classes::TComponent* AOwner) : TRaveGraphicImage(AOwner) { }
	/* TRaveGraphicImage.Destroy */ inline __fastcall virtual ~TRaveMetaFile(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveMailMergeItem : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString FSearchToken;
	System::UnicodeString FReplaceString;
	bool FCaseMatters;
	
__published:
	__property bool CaseMatters = {read=FCaseMatters, write=FCaseMatters, default=0};
	__property System::UnicodeString ReplaceString = {read=FReplaceString, write=FReplaceString};
	__property System::UnicodeString SearchToken = {read=FSearchToken, write=FSearchToken};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveMailMergeItem(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRaveMailMergeItem(void) : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveMemo : public TRaveCustomText
{
	typedef TRaveCustomText inherited;
	
protected:
	Rvdefine::TRaveAnchor SaveAnchor;
	bool FExpandParent;
	bool FTruncate;
	bool Prepared;
	Rpmemo::TMemoBuf* MemoBuf;
	System::Classes::TStrings* LineList;
	Rvclass::TRavePersistentList* FMailMergeItems;
	bool FContainsRTF;
	void __fastcall SetMailMergeItems(Rvclass::TRavePersistentList* Value);
	void __fastcall InitMemoBuf(void);
	void __fastcall FreeMemoBuf(void);
	void __fastcall SetMemoText(Rvdefine::TRaveMemoString Value);
	Rvdefine::TRaveMemoString __fastcall GetMemoText(void);
	virtual void __fastcall InitData(void);
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall BeforeReport(void);
	virtual void __fastcall AfterReport(void);
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveMemo(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveMemo(void);
	virtual void __fastcall Resize(void);
	virtual Rvdefine::TRaveUnits __fastcall HeightToPrint(void);
	__property bool ContainsRTF = {read=FContainsRTF, write=FContainsRTF, default=0};
	
__published:
	__property Color = {default=0};
	__property bool ExpandParent = {read=FExpandParent, write=FExpandParent, default=1};
	__property Font;
	__property FontJustify;
	__property FontMirror;
	__property Left = {default=0};
	__property Height = {default=0};
	__property Rvclass::TRavePersistentList* MailMergeItems = {read=FMailMergeItems, write=SetMailMergeItems};
	__property Rvdefine::TRaveMemoString Text = {read=GetMemoText, write=SetMemoText};
	__property Top = {default=0};
	__property bool Truncate = {read=FTruncate, write=FTruncate, default=0};
	__property Width = {default=0};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE Rvclass::TRaveControl* __fastcall CreateTextControl(System::Classes::TComponent* AOwner, Rvdatafield::TRaveDataField* DataField);
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvcsstd */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCSSTD)
using namespace Rvcsstd;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcsstdHPP
