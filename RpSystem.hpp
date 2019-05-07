// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpSystem.pas' rev: 29.00 (Windows)

#ifndef RpsystemHPP
#define RpsystemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpFiler.hpp>
#include <RpDevice.hpp>
#include <RpRender.hpp>
#include <RpRenderPrinter.hpp>
#include <RpRenderPreview.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpsystem
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSystemPrinter;
class DELPHICLASS TSystemPreview;
class DELPHICLASS TSystemFiler;
class DELPHICLASS TRvSystem;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TOverrideMode : unsigned char { omCreate, omShow, omWait, omFree };

typedef void __fastcall (__closure *TRvSystemEvent)(TRvSystem* ReportSystem, TOverrideMode OverrideMode, Vcl::Forms::TForm* &OverrideForm);

class PASCALIMPLEMENTATION TSystemPrinter : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	int FCopies;
	int FFirstPage;
	int FLastPage;
	Rpdefine::TLineHeightMethod FLineHeightMethod;
	int FLinesPerInch;
	double FMarginBottom;
	double FMarginLeft;
	double FMarginRight;
	double FMarginTop;
	Rpdefine::TOrientation FOrientation;
	double FScaleX;
	double FScaleY;
	System::UnicodeString FStatusFormat;
	System::Classes::TStrings* FStatusText;
	int FTabShade;
	Rpdefine::TBKMode FTextBKMode;
	System::UnicodeString FTitle;
	Rpdefine::TPrintUnits FUnits;
	double FUnitsFactor;
	bool FCollate;
	Rpdefine::TDuplex FDuplex;
	void __fastcall SetStatusText(System::Classes::TStrings* Value);
	void __fastcall SetTabShade(int Value);
	void __fastcall SetUnits(Rpdefine::TPrintUnits Value);
	void __fastcall SetUnitsFactor(double Value);
	
public:
	__fastcall TSystemPrinter(void);
	__fastcall virtual ~TSystemPrinter(void);
	void __fastcall InitPrinter(Rpbase::TBaseReport* BaseReport);
	
__published:
	__property int Copies = {read=FCopies, write=FCopies, default=1};
	__property bool Collate = {read=FCollate, write=FCollate, default=0};
	__property Rpdefine::TDuplex Duplex = {read=FDuplex, write=FDuplex, default=0};
	__property int FirstPage = {read=FFirstPage, write=FFirstPage, default=1};
	__property int LastPage = {read=FLastPage, write=FLastPage, default=9999};
	__property Rpdefine::TLineHeightMethod LineHeightMethod = {read=FLineHeightMethod, write=FLineHeightMethod, default=1};
	__property int LinesPerInch = {read=FLinesPerInch, write=FLinesPerInch, default=6};
	__property double MarginBottom = {read=FMarginBottom, write=FMarginBottom};
	__property double MarginLeft = {read=FMarginLeft, write=FMarginLeft};
	__property double MarginRight = {read=FMarginRight, write=FMarginRight};
	__property double MarginTop = {read=FMarginTop, write=FMarginTop};
	__property Rpdefine::TOrientation Orientation = {read=FOrientation, write=FOrientation, default=0};
	__property double ScaleX = {read=FScaleX, write=FScaleX};
	__property double ScaleY = {read=FScaleY, write=FScaleY};
	__property System::UnicodeString StatusFormat = {read=FStatusFormat, write=FStatusFormat};
	__property System::Classes::TStrings* StatusText = {read=FStatusText, write=SetStatusText};
	__property int TabShade = {read=FTabShade, write=SetTabShade, default=0};
	__property Rpdefine::TBKMode TextBKMode = {read=FTextBKMode, write=FTextBKMode, default=0};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property Rpdefine::TPrintUnits Units = {read=FUnits, write=SetUnits, default=0};
	__property double UnitsFactor = {read=FUnitsFactor, write=SetUnitsFactor};
};


class PASCALIMPLEMENTATION TSystemPreview : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	double FGridHoriz;
	Vcl::Graphics::TPen* FGridPen;
	double FGridVert;
	Rpdefine::TMarginMethod FMarginMethod;
	double FMarginPercent;
	bool FMonochrome;
	int FPagesWide;
	int FPagesHigh;
	int FPageInc;
	Rpdefine::TRulerType FRulerType;
	int FShadowDepth;
	double FZoomFactor;
	int FZoomInc;
	int FFormWidth;
	int FFormHeight;
	System::Uitypes::TWindowState FFormState;
	void __fastcall SetMonochrome(bool Value);
	void __fastcall SetShadowDepth(int Value);
	void __fastcall SetZoomFactor(double Value);
	
public:
	__fastcall TSystemPreview(void);
	__fastcall virtual ~TSystemPreview(void);
	void __fastcall InitPreview(Rprenderpreview::TRvRenderPreview* RenderPreview);
	
__published:
	__property int FormWidth = {read=FFormWidth, write=FFormWidth, default=615};
	__property int FormHeight = {read=FFormHeight, write=FFormHeight, default=450};
	__property System::Uitypes::TWindowState FormState = {read=FFormState, write=FFormState, default=0};
	__property double GridHoriz = {read=FGridHoriz, write=FGridHoriz};
	__property Vcl::Graphics::TPen* GridPen = {read=FGridPen, write=FGridPen};
	__property double GridVert = {read=FGridVert, write=FGridVert};
	__property Rpdefine::TMarginMethod MarginMethod = {read=FMarginMethod, write=FMarginMethod, default=1};
	__property double MarginPercent = {read=FMarginPercent, write=FMarginPercent};
	__property bool Monochrome = {read=FMonochrome, write=SetMonochrome, default=0};
	__property int PagesWide = {read=FPagesWide, write=FPagesWide, default=1};
	__property int PagesHigh = {read=FPagesHigh, write=FPagesHigh, default=1};
	__property int PageInc = {read=FPageInc, write=FPageInc, default=1};
	__property Rpdefine::TRulerType RulerType = {read=FRulerType, write=FRulerType, default=0};
	__property int ShadowDepth = {read=FShadowDepth, write=SetShadowDepth, default=0};
	__property double ZoomFactor = {read=FZoomFactor, write=SetZoomFactor};
	__property int ZoomInc = {read=FZoomInc, write=FZoomInc, default=10};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TSystemFiler : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	Rpdefine::TAccuracyMethod FAccuracyMethod;
	System::Sysutils::TFileName FFileName;
	System::UnicodeString FStatusFormat;
	System::Classes::TStrings* FStatusText;
	Rpdefine::TStreamMode FStreamMode;
	System::Classes::TStream* FStream;
	bool FIgnoreRPTF;
	void __fastcall SetStatusText(System::Classes::TStrings* Value);
	
public:
	__fastcall TSystemFiler(void);
	__fastcall virtual ~TSystemFiler(void);
	void __fastcall InitFiler(Rpbase::TBaseReport* BaseReport);
	__property System::Classes::TStream* Stream = {read=FStream, write=FStream};
	__property bool IgnoreRPTF = {read=FIgnoreRPTF, write=FIgnoreRPTF, nodefault};
	
__published:
	__property Rpdefine::TAccuracyMethod AccuracyMethod = {read=FAccuracyMethod, write=FAccuracyMethod, default=0};
	__property System::Sysutils::TFileName FileName = {read=FFileName, write=FFileName};
	__property System::UnicodeString StatusFormat = {read=FStatusFormat, write=FStatusFormat};
	__property System::Classes::TStrings* StatusText = {read=FStatusText, write=SetStatusText};
	__property Rpdefine::TStreamMode StreamMode = {read=FStreamMode, write=FStreamMode, default=0};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRvSystem : public Rpbase::TRPBaseComponent
{
	typedef Rpbase::TRPBaseComponent inherited;
	
protected:
	bool FDoNativeOutput;
	bool FAborted;
	Rpbase::TBaseReport* FBaseReport;
	Vcl::Stdctrls::TLabel* SaveLabel;
	Rpdefine::TReportDest FDefaultDest;
	Rpdefine::TReportDest FReportDest;
	System::Sysutils::TFileName FOutputFileName;
	bool ForceMultiPrint;
	Rpdefine::TSystemSetups FSystemSetups;
	Rpdefine::TSystemOptions FSystemOptions;
	TSystemFiler* FSystemFiler;
	TSystemPreview* FSystemPreview;
	TSystemPrinter* FSystemPrinter;
	System::UnicodeString FTitleSetup;
	System::UnicodeString FTitleStatus;
	System::UnicodeString FTitlePreview;
	System::Classes::TStrings* FStorageMacroData;
	Rprender::TRPRender* FRenderObject;
	System::Classes::TNotifyEvent FOnRenderPage;
	System::Classes::TNotifyEvent FOnRenderData;
	System::Classes::TNotifyEvent FOnPrint;
	Rpdefine::TPrintPageEvent FOnPrintPage;
	System::Classes::TNotifyEvent FOnBeforePrint;
	System::Classes::TNotifyEvent FOnAfterPrint;
	System::Classes::TNotifyEvent FOnAfterPreviewPrint;
	System::Classes::TNotifyEvent FOnNewPage;
	System::Classes::TNotifyEvent FOnNewColumn;
	System::Classes::TNotifyEvent FOnPrintHeader;
	System::Classes::TNotifyEvent FOnPrintFooter;
	System::Classes::TNotifyEvent FOnEndOfSection;
	Rpdefine::TDecodeImageEvent FOnDecodeImage;
	System::Classes::TNotifyEvent FOnPreviewSetup;
	System::Classes::TNotifyEvent FOnPreviewShow;
	TRvSystemEvent FOnOverrideSetup;
	TRvSystemEvent FOnOverrideStatus;
	TRvSystemEvent FOnOverridePreview;
	void __fastcall SetRenderObject(Rprender::TRPRender* const Value);
	void __fastcall InitEvents(Rpbase::TBaseReport* BaseReport);
	System::Classes::TStream* __fastcall GetStream(void);
	void __fastcall SetStream(System::Classes::TStream* Value);
	virtual void __fastcall OverrideSetupProc(TRvSystem* ReportSystem, TOverrideMode OverrideMode, Vcl::Forms::TForm* &OverrideForm);
	virtual void __fastcall OverrideStatusProc(TRvSystem* ReportSystem, TOverrideMode OverrideMode, Vcl::Forms::TForm* &OverrideForm);
	virtual void __fastcall OverridePreviewProc(TRvSystem* ReportSystem, TOverrideMode OverrideMode, Vcl::Forms::TForm* &OverrideForm);
	void __fastcall SetupReport(Vcl::Forms::TForm* &SetupForm);
	void __fastcall GenerateReport(Vcl::Forms::TForm* &StatusForm);
	void __fastcall PrintReport(Vcl::Forms::TForm* &StatusForm);
	void __fastcall PreviewReport(Vcl::Forms::TForm* &PreviewForm);
	void __fastcall SetStorageMacroData(System::Classes::TStrings* Value);
	void __fastcall InitRenderStream(System::Classes::TStream* &RenderStream);
	void __fastcall PrintRender(Vcl::Forms::TForm* &StatusForm);
	
public:
	__fastcall virtual TRvSystem(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvSystem(void);
	void __fastcall Execute(void);
	void __fastcall Generate(void);
	void __fastcall PreviewShowEvent(System::TObject* Sender);
	__property System::Classes::TStream* Stream = {read=GetStream, write=SetStream};
	__property Rpdefine::TReportDest ReportDest = {read=FReportDest, write=FReportDest, nodefault};
	__property System::Sysutils::TFileName OutputFileName = {read=FOutputFileName, write=FOutputFileName};
	__property Rpbase::TBaseReport* BaseReport = {read=FBaseReport, write=FBaseReport};
	__property bool Aborted = {read=FAborted, write=FAborted, nodefault};
	__property System::Classes::TStrings* StorageMacroData = {read=FStorageMacroData, write=SetStorageMacroData};
	__property Rprender::TRPRender* RenderObject = {read=FRenderObject, write=SetRenderObject};
	__property bool DoNativeOutput = {read=FDoNativeOutput, write=FDoNativeOutput, default=1};
	__property System::Classes::TNotifyEvent OnRenderPage = {read=FOnRenderPage, write=FOnRenderPage};
	__property System::Classes::TNotifyEvent OnRenderData = {read=FOnRenderData, write=FOnRenderData};
	
__published:
	__property System::UnicodeString TitleSetup = {read=FTitleSetup, write=FTitleSetup};
	__property System::UnicodeString TitleStatus = {read=FTitleStatus, write=FTitleStatus};
	__property System::UnicodeString TitlePreview = {read=FTitlePreview, write=FTitlePreview};
	__property Rpdefine::TSystemSetups SystemSetups = {read=FSystemSetups, write=FSystemSetups, default=511};
	__property Rpdefine::TSystemOptions SystemOptions = {read=FSystemOptions, write=FSystemOptions, default=60};
	__property Rpdefine::TReportDest DefaultDest = {read=FDefaultDest, write=FDefaultDest, default=0};
	__property TSystemFiler* SystemFiler = {read=FSystemFiler, write=FSystemFiler};
	__property TSystemPreview* SystemPreview = {read=FSystemPreview, write=FSystemPreview};
	__property TSystemPrinter* SystemPrinter = {read=FSystemPrinter, write=FSystemPrinter};
	__property System::Classes::TNotifyEvent OnPrint = {read=FOnPrint, write=FOnPrint};
	__property Rpdefine::TPrintPageEvent OnPrintPage = {read=FOnPrintPage, write=FOnPrintPage};
	__property System::Classes::TNotifyEvent OnBeforePrint = {read=FOnBeforePrint, write=FOnBeforePrint};
	__property System::Classes::TNotifyEvent OnAfterPrint = {read=FOnAfterPrint, write=FOnAfterPrint};
	__property System::Classes::TNotifyEvent OnAfterPreviewPrint = {read=FOnAfterPreviewPrint, write=FOnAfterPreviewPrint};
	__property System::Classes::TNotifyEvent OnNewPage = {read=FOnNewPage, write=FOnNewPage};
	__property System::Classes::TNotifyEvent OnNewColumn = {read=FOnNewColumn, write=FOnNewColumn};
	__property System::Classes::TNotifyEvent OnPrintHeader = {read=FOnPrintHeader, write=FOnPrintHeader};
	__property System::Classes::TNotifyEvent OnPrintFooter = {read=FOnPrintFooter, write=FOnPrintFooter};
	__property System::Classes::TNotifyEvent OnEndOfSection = {read=FOnEndOfSection, write=FOnEndOfSection};
	__property Rpdefine::TDecodeImageEvent OnDecodeImage = {read=FOnDecodeImage, write=FOnDecodeImage};
	__property System::Classes::TNotifyEvent OnPreviewSetup = {read=FOnPreviewSetup, write=FOnPreviewSetup};
	__property System::Classes::TNotifyEvent OnPreviewShow = {read=FOnPreviewShow, write=FOnPreviewShow};
	__property TRvSystemEvent OverrideSetup = {read=FOnOverrideSetup, write=FOnOverrideSetup};
	__property TRvSystemEvent OverrideStatus = {read=FOnOverrideStatus, write=FOnOverrideStatus};
	__property TRvSystemEvent OverridePreview = {read=FOnOverridePreview, write=FOnOverridePreview};
};


typedef TRvSystem TReportSystem;

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpsystem */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPSYSTEM)
using namespace Rpsystem;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpsystemHPP
