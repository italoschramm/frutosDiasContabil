// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCsRpt.pas' rev: 29.00 (Windows)

#ifndef RvcsrptHPP
#define RvcsrptHPP

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
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RvCsStd.hpp>
#include <RvData.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RvProj.hpp>
#include <RvDataField.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcsrpt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBandDetail;
class DELPHICLASS TBandSearchRec;
class DELPHICLASS TRaveBandStyle;
class DELPHICLASS TRaveRegion;
class DELPHICLASS TRaveBand;
class DELPHICLASS TRaveIterateBand;
class DELPHICLASS TRaveDataBand;
class DELPHICLASS TRaveDataCycle;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TBandPositionMode : unsigned char { pmOffset, pmOverlay, pmAbsolute };

enum DECLSPEC_DENUM TBandPrintLoc : unsigned char { plBodyHeader, plGroupHeader, plRowHeader, plMaster, plDetail, plRowFooter, plGroupFooter, plBodyFooter };

typedef System::Set<TBandPrintLoc, TBandPrintLoc::plBodyHeader, TBandPrintLoc::plBodyFooter> TBandPrintLocSet;

enum DECLSPEC_DENUM TBandPrintOcc : unsigned char { poFirst, poNewPage, poNewColumn };

typedef System::Set<TBandPrintOcc, TBandPrintOcc::poFirst, TBandPrintOcc::poNewColumn> TBandPrintOccSet;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBandDetail : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TRaveBand* Band;
	bool PointerDown;
	int PointerColor;
	int MasterColor;
	System::Byte Level;
	System::Byte MasterLevel;
	bool IsController;
	TBandDetail* ControllerDetail;
public:
	/* TObject.Create */ inline __fastcall TBandDetail(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TBandDetail(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBandSearchRec : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	int Index;
	TRaveIterateBand* ControllerBand;
	TBandPrintLoc PrintLoc;
public:
	/* TObject.Create */ inline __fastcall TBandSearchRec(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TBandSearchRec(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveBandStyle : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	TBandPrintLocSet FPrintLoc;
	TBandPrintOccSet FPrintOcc;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	
public:
	__fastcall TRaveBandStyle(void);
	
__published:
	__property TBandPrintLocSet PrintLoc = {read=FPrintLoc, write=FPrintLoc, default=0};
	__property TBandPrintOccSet PrintOcc = {read=FPrintOcc, write=FPrintOcc, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveBandStyle(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveRegion : public Rvclass::TRaveContainerControl
{
	typedef Rvclass::TRaveContainerControl inherited;
	
protected:
	TRaveBand* FReplaceBand;
	TRaveBandStyle* FReplaceBandStyle;
	Rvdefine::TRaveUnits PrintTop;
	Rvdefine::TRaveUnits SavePrintTop;
	TBandSearchRec* BandSearchRec;
	Rvutil::TRaveStackList* BandSearchSave;
	TRaveBand* RestartBand;
	TBandPrintLoc RestartLoc;
	bool FRestarting;
	bool ForceRestart;
	bool FTopOfRegion;
	TBandPrintLoc PrintLoc;
	TBandPrintOcc PrintOcc;
	int FCurrentColumn;
	int FColumns;
	Rvdefine::TRaveUnits FColumnSpacing;
	virtual bool __fastcall AcceptChild(System::TClass NewChild);
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall BeforeReport(void);
	Rvdefine::TRaveUnits __fastcall GetColumnStart(void);
	Rvdefine::TRaveUnits __fastcall GetBandWidth(Rvdefine::TRaveUnits RegionWidth);
	Rvdefine::TRaveUnits __fastcall GetColumnWidth(void);
	void __fastcall SetColumns(int Value);
	void __fastcall SetColumnSpacing(Rvdefine::TRaveUnits Value);
	void __fastcall PushBandSearchRec(void);
	void __fastcall PopBandSearchRec(void);
	Rvdefine::TRaveUnits __fastcall HeightAvail(void);
	virtual void __fastcall InitData(void);
	virtual void __fastcall DoneData(void);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall PaintAll(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveRegion(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveRegion(void);
	void __fastcall SaveState(void);
	void __fastcall RestoreState(void);
	void __fastcall Restart(TRaveBand* Band);
	void __fastcall UndoRestart(void);
	void __fastcall PostponeRestart(void);
	void __fastcall PrintBands(Rpbase::TBaseReport* Report, TRaveIterateBand* ControllerBand, TBandPrintLoc APrintLoc);
	TRaveBand* __fastcall FirstSubBand(TBandSearchRec* &BandSearchRec, TRaveIterateBand* ControllerBand, TBandPrintLoc PrintLoc);
	TRaveBand* __fastcall NextSubBand(TBandSearchRec* &BandSearchRec);
	__property TRaveBand* ReplaceBand = {read=FReplaceBand, write=FReplaceBand};
	__property TRaveBandStyle* ReplaceBandStyle = {read=FReplaceBandStyle, write=FReplaceBandStyle};
	__property bool Restarting = {read=FRestarting, nodefault};
	__property int CurrentColumn = {read=FCurrentColumn, nodefault};
	__property Rvdefine::TRaveUnits ColumnStart = {read=GetColumnStart};
	__property Rvdefine::TRaveUnits ColumnWidth = {read=GetColumnWidth};
	__property bool TopOfRegion = {read=FTopOfRegion, nodefault};
	
__published:
	__property Height = {default=0};
	__property Left = {default=0};
	__property Top = {default=0};
	__property Width = {default=0};
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property Rvdefine::TRaveUnits ColumnSpacing = {read=FColumnSpacing, write=SetColumnSpacing};
};


class PASCALIMPLEMENTATION TRaveBand : public Rvclass::TRaveContainerControl
{
	typedef Rvclass::TRaveContainerControl inherited;
	
protected:
	Rvdefine::TRaveUnits BandHeaderTop;
	Rvdefine::TRaveUnits BandHeaderBottom;
	System::UnicodeString LastGroupValue;
	bool OnCurrPage;
	TRaveIterateBand* FControllerBand;
	TBandPositionMode FPositionMode;
	Rvdefine::TRaveUnits FPositionValue;
	TRaveBandStyle* FBandStyle;
	Rvdata::TRaveBaseDataView* FGroupDataView;
	Rvdefine::TRaveFieldName FGroupKey;
	TBandPrintLocSet FReprintLocs;
	bool FSaving;
	bool FStartNewPage;
	bool FFinishNewPage;
	bool FDesignerHide;
	bool FAllowSplit;
	Rvdefine::TRaveUnits FMinHeightLeft;
	bool FDoSplit;
	Rvclass::TRaveStringEvent* FOnGetGroup;
	__classmethod virtual bool __fastcall AcceptParent(System::TClass NewParent);
	virtual void __fastcall SetParent(Rvclass::TRaveComponent* Value);
	void __fastcall SetControllerBand(TRaveIterateBand* Value);
	void __fastcall SetBandStyle(TRaveBandStyle* Value);
	TRaveRegion* __fastcall GetRegion(void);
	Rvdefine::TRaveUnits __fastcall GetMinHeight(void);
	virtual Rvdefine::TRaveUnits __fastcall GetLeft(void);
	virtual Rvdefine::TRaveUnits __fastcall GetWidth(void);
	virtual void __fastcall AnchorAdjust(bool WidthChanging, Rvdefine::TRaveUnits OldWidth, Rvdefine::TRaveUnits NewWidth, bool HeightChanging, Rvdefine::TRaveUnits OldHeight, Rvdefine::TRaveUnits NewHeight);
	virtual void __fastcall BeforeReport(void);
	System::UnicodeString __fastcall GetCurrGroupValue(void);
	System::UnicodeString __fastcall GetNextGroupValue(void);
	virtual void __fastcall SaveState(void);
	virtual void __fastcall RestoreState(void);
	virtual bool __fastcall GetSaving(void);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	void __fastcall SetDesignerHide(bool Value);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	virtual void __fastcall Preprint(void);
	virtual void __fastcall ResetState(void);
	virtual void __fastcall SetBandTop(void);
	void __fastcall DoGetGroup(System::UnicodeString &Value);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	__property bool DoSplit = {read=FDoSplit, write=FDoSplit, nodefault};
	
public:
	__fastcall virtual TRaveBand(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveBand(void);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	virtual bool __fastcall CanSelect(Rvclass::TRaveComponent* Item);
	virtual bool __fastcall IsSelectPoint(const Rvdefine::TRavePoint &Point);
	virtual void __fastcall Resize(void);
	__property Rvdefine::TRaveUnits MinHeight = {read=GetMinHeight};
	__property TRaveRegion* Region = {read=GetRegion};
	__property bool Saving = {read=GetSaving, nodefault};
	
__published:
	__property bool AllowSplit = {read=FAllowSplit, write=FAllowSplit, default=0};
	__property TRaveBandStyle* BandStyle = {read=FBandStyle, write=SetBandStyle};
	__property TRaveIterateBand* ControllerBand = {read=FControllerBand, write=SetControllerBand};
	__property bool DesignerHide = {read=FDesignerHide, write=SetDesignerHide, default=0};
	__property bool FinishNewPage = {read=FFinishNewPage, write=FFinishNewPage, default=0};
	__property Rvdata::TRaveBaseDataView* GroupDataView = {read=FGroupDataView, write=FGroupDataView, default=0};
	__property Rvdefine::TRaveFieldName GroupKey = {read=FGroupKey, write=FGroupKey};
	__property Height = {default=0};
	__property Rvdefine::TRaveUnits MinHeightLeft = {read=FMinHeightLeft, write=FMinHeightLeft};
	__property TBandPositionMode PositionMode = {read=FPositionMode, write=FPositionMode, default=0};
	__property Rvdefine::TRaveUnits PositionValue = {read=FPositionValue, write=FPositionValue};
	__property TBandPrintLocSet ReprintLocs = {read=FReprintLocs, write=FReprintLocs, default=255};
	__property bool StartNewPage = {read=FStartNewPage, write=FStartNewPage, default=0};
	__property Rvclass::TRaveStringEvent* OnGetGroup = {read=FOnGetGroup, write=FOnGetGroup};
};


class PASCALIMPLEMENTATION TRaveIterateBand : public TRaveBand
{
	typedef TRaveBand inherited;
	
protected:
	bool NewData;
	System::Classes::TList* FControlledList;
	bool FKeepBodyTogether;
	bool FKeepRowTogether;
	int FOrphanRows;
	int FWidowRows;
	TBandPrintLoc FLocOnRestart;
	int FMaxRows;
	bool FInitToFirst;
	bool Active;
	Rvclass::TRaveMethodList* CalcNewDataListenList;
	int FColumns;
	Rvdefine::TRaveUnits FColumnSpacing;
	int FCurrentColumn;
	Rvdefine::TRaveUnits SaveLastTop;
	Rvdefine::TRaveUnits SavePriorTop;
	Rvdefine::TRaveUnits SaveLastBottom;
	int SaveRegionColumn;
	Rvdefine::TRaveFieldName FDetailKey;
	Rvdefine::TRaveUnits __fastcall GetColumnStart(void);
	Rvdefine::TRaveUnits __fastcall GetColumnWidth(void);
	void __fastcall SetColumns(int Value);
	void __fastcall SetColumnSpacing(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetLeft(void);
	virtual Rvdefine::TRaveUnits __fastcall GetWidth(void);
	virtual void __fastcall First(void) = 0 ;
	virtual void __fastcall Next(void) = 0 ;
	virtual void __fastcall GetCurrent(void) = 0 ;
	virtual bool __fastcall Eof(void) = 0 ;
	virtual bool __fastcall CheckRowsLeft(int ReqRows) = 0 ;
	void __fastcall AddControlled(TRaveBand* Value);
	void __fastcall RemoveControlled(TRaveBand* Value);
	virtual void __fastcall SaveState(void);
	virtual void __fastcall RestoreState(void);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	void __fastcall ResetControlled(void);
	virtual void __fastcall Preprint(void);
	virtual void __fastcall SetBandTop(void);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveIterateBand(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveIterateBand(void);
	virtual void __fastcall AddListener(System::UnicodeString Conversation, Rvclass::TRaveListenEvent ListenMethod);
	virtual void __fastcall RemoveListener(System::UnicodeString Conversation, Rvclass::TRaveListenEvent ListenMethod);
	virtual bool __fastcall Habla(System::UnicodeString Conversation);
	__property TBandPrintLoc LocOnRestart = {read=FLocOnRestart, write=FLocOnRestart, nodefault};
	__property int CurrentColumn = {read=FCurrentColumn, nodefault};
	__property Rvdefine::TRaveUnits ColumnStart = {read=GetColumnStart};
	__property Rvdefine::TRaveUnits ColumnWidth = {read=GetColumnWidth};
	
__published:
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property Rvdefine::TRaveUnits ColumnSpacing = {read=FColumnSpacing, write=SetColumnSpacing};
	__property Rvdefine::TRaveFieldName DetailKey = {read=FDetailKey, write=FDetailKey};
	__property bool KeepBodyTogether = {read=FKeepBodyTogether, write=FKeepBodyTogether, default=0};
	__property bool KeepRowTogether = {read=FKeepRowTogether, write=FKeepRowTogether, default=0};
	__property int MaxRows = {read=FMaxRows, write=FMaxRows, default=0};
	__property bool InitToFirst = {read=FInitToFirst, write=FInitToFirst, default=1};
	__property int OrphanRows = {read=FOrphanRows, write=FOrphanRows, default=0};
	__property int WidowRows = {read=FWidowRows, write=FWidowRows, default=0};
};


class PASCALIMPLEMENTATION TRaveDataBand : public TRaveIterateBand
{
	typedef TRaveIterateBand inherited;
	
protected:
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdata::TRaveBaseDataView* FMasterDataView;
	Rvdefine::TRaveFieldName FMasterKey;
	Rvdefine::TRaveFieldName FSortKey;
	virtual bool __fastcall GetSaving(void);
	virtual void __fastcall SaveState(void);
	virtual void __fastcall RestoreState(void);
	virtual void __fastcall First(void);
	virtual void __fastcall Next(void);
	virtual void __fastcall GetCurrent(void);
	virtual bool __fastcall Eof(void);
	virtual bool __fastcall CheckRowsLeft(int ReqRows);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
__published:
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property Rvdata::TRaveBaseDataView* MasterDataView = {read=FMasterDataView, write=FMasterDataView, default=0};
	__property Rvdefine::TRaveFieldName MasterKey = {read=FMasterKey, write=FMasterKey};
	__property Rvdefine::TRaveFieldName SortKey = {read=FSortKey, write=FSortKey};
public:
	/* TRaveIterateBand.Create */ inline __fastcall virtual TRaveDataBand(System::Classes::TComponent* AOwner) : TRaveIterateBand(AOwner) { }
	/* TRaveIterateBand.Destroy */ inline __fastcall virtual ~TRaveDataBand(void) { }
	
};


class PASCALIMPLEMENTATION TRaveDataCycle : public Rvclass::TRaveComponent
{
	typedef Rvclass::TRaveComponent inherited;
	
protected:
	Rvdata::TRaveBaseDataView* FDataView;
	Rvdefine::TRaveFieldName FDetailKey;
	bool FInitToFirst;
	Rvdata::TRaveBaseDataView* FMasterDataView;
	Rvdefine::TRaveFieldName FMasterKey;
	int FMaxRows;
	Rvdefine::TRaveFieldName FSortKey;
	int RowCount;
	bool Active;
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall BeforeReport(void);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRaveDataCycle(System::Classes::TComponent* AOwner);
	
__published:
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property Rvdefine::TRaveFieldName DetailKey = {read=FDetailKey, write=FDetailKey};
	__property bool InitToFirst = {read=FInitToFirst, write=FInitToFirst, default=1};
	__property Rvdata::TRaveBaseDataView* MasterDataView = {read=FMasterDataView, write=FMasterDataView, default=0};
	__property Rvdefine::TRaveFieldName MasterKey = {read=FMasterKey, write=FMasterKey};
	__property int MaxRows = {read=FMaxRows, write=FMaxRows, default=0};
	__property Rvdefine::TRaveFieldName SortKey = {read=FSortKey, write=FSortKey};
public:
	/* TRaveComponent.Destroy */ inline __fastcall virtual ~TRaveDataCycle(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Int8 BandColors = System::Int8(0x14);
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 20> BandColor;
extern DELPHI_PACKAGE System::Classes::TList* __fastcall CreateBandList(TRaveRegion* Region);
extern DELPHI_PACKAGE void __fastcall FreeBandList(System::Classes::TList* BandList);
}	/* namespace Rvcsrpt */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCSRPT)
using namespace Rvcsrpt;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcsrptHPP
