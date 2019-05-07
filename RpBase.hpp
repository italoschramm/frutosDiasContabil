// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpBase.pas' rev: 29.00 (Windows)

#ifndef RpbaseHPP
#define RpbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpDevice.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------
#undef CreateFont
#undef ResetPrinter

namespace Rpbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRPBaseComponent;
class DELPHICLASS TTabList;
class DELPHICLASS TBaseReport;
class DELPHICLASS TBaseMemoBuf;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRPBaseComponent : public Rpdefine::TRpComponent
{
	typedef Rpdefine::TRpComponent inherited;
	
public:
	/* TRpComponent.Create */ inline __fastcall virtual TRPBaseComponent(System::Classes::TComponent* AOwner) : Rpdefine::TRpComponent(AOwner) { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TRPBaseComponent(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTabList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	HIDESBASE void __fastcall Assign(System::Classes::TList* AValue);
public:
	/* TList.Destroy */ inline __fastcall virtual ~TTabList(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TTabList(void) : System::Classes::TList() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TBaseReport : public TRPBaseComponent
{
	typedef TRPBaseComponent inherited;
	
protected:
	TTabList* CurrentTabList;
	System::StaticArray<Rpdefine::TPosition*, 10> SavePosArr;
	System::StaticArray<TTabList*, 10> SaveTabsArr;
	System::StaticArray<Rpdefine::TSaveFont*, 10> SaveFontArr;
	System::Classes::TList* PosStack;
	System::Classes::TList* FontStack;
	System::Classes::TList* TabsStack;
	bool BlockTextOp;
	Rpdefine::TSaveFont* BaseFont;
	System::Classes::TList* FontList;
	System::Classes::TNotifyEvent FontSaveOnChange;
	HFONT SaveFontHandle;
	bool BaseFontChanged;
	bool DisableFontChange;
	HFONT SaveCanvasFont;
	System::Set<Rpdefine::TDestination, Rpdefine::TDestination::destPrinter, Rpdefine::TDestination::destCustomFile> ValidDestination;
	int FJobPages;
	System::Classes::TStrings* FMacroData;
	Rpdefine::TTabJustify FParaJustify;
	double FFixedTabWidth;
	Rpdefine::TFrameMode FFrameMode;
	Rpdefine::TTab* CurrentTab;
	bool OnTab;
	bool BeforeTabs;
	int AddX;
	int AddY;
	System::Classes::TList* BeginPageList;
	System::Classes::TList* EndPageList;
	System::Classes::TList* VLineList;
	System::Classes::TList* HLineList;
	double LastLineX;
	double LastLineY;
	bool FNoBufferLine;
	bool FNoNTColorFix;
	bool FUseDrawText;
	double FLeftWaste;
	double FRightWaste;
	double FTopWaste;
	double FBottomWaste;
	tagTEXTMETRICW Metrics;
	double FAscentHeight;
	double FDescentHeight;
	double FLineHeight;
	System::UnicodeString FOutputName;
	int FPrinterIndex;
	double FLeftMargin;
	double FRightMargin;
	double FTopMargin;
	double FBottomMargin;
	double FLeftSection;
	double FRightSection;
	double FTopSection;
	double FBottomSection;
	double FCursorXPos;
	double FCursorYPos;
	double FColumnWidth;
	double FColumnBetween;
	bool FThreaded;
	System::TDateTime FReportDateTime;
	Rpdefine::TTabJustify FTabJustify;
	int FCurrentPage;
	bool FPageInvalid;
	int FXDPI;
	int FYDPI;
	int FLineNum;
	int FColumnNum;
	int FColumns;
	System::WideChar *FDevice;
	System::WideChar *FDriver;
	System::WideChar *FPort;
	bool FAborted;
	bool FPrinting;
	double FOriginX;
	double FOriginY;
	int FFirstPage;
	int FLastPage;
	System::UnicodeString FSelection;
	Vcl::Stdctrls::TLabel* FStatusLabel;
	System::UnicodeString FStatusFormat;
	System::Classes::TStrings* FStatusText;
	Rpdefine::TLineHeightMethod FLineHeightMethod;
	int FLinesPerInch;
	Rpdefine::TPrintUnits FUnits;
	double FUnitsFactor;
	double FLeftMarginWidth;
	double FRightMarginWidth;
	double FTopMarginWidth;
	double FBottomMarginWidth;
	int FTabShade;
	System::Uitypes::TColor FTabColor;
	System::Uitypes::TColor FBoxLineColor;
	System::UnicodeString FTitle;
	Rpdefine::TBKMode FTextBKMode;
	Rpdefine::TOrientation FOrientation;
	Rpdefine::TOrientation FNewOrientation;
	int FCopies;
	double FScaleX;
	double FScaleY;
	double FZoom;
	double FNoPrinterPageHeight;
	double FNoPrinterPageWidth;
	bool FTransparentBitmaps;
	bool FIgnoreRPTF;
	int FCurrentPass;
	int FTotalPasses;
	double FTextFieldWidth;
	int FPageNumOffset;
	Rpdevice::TRPBaseDevice* FLocalDevice;
	System::UnicodeString FHyperLink;
	System::Classes::TNotifyEvent FOnPrint;
	Rpdefine::TPrintPageEvent FOnPrintPage;
	System::Classes::TNotifyEvent FOnBeforePrint;
	System::Classes::TNotifyEvent FOnAfterPrint;
	System::Classes::TNotifyEvent FOnNewPage;
	System::Classes::TNotifyEvent FOnNewColumn;
	System::Classes::TNotifyEvent FOnPrintHeader;
	System::Classes::TNotifyEvent FOnPrintFooter;
	System::Classes::TNotifyEvent FOnEndOfSection;
	Rpdefine::TDecodeImageEvent FOnDecodeImage;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetStatusLabel(Vcl::Stdctrls::TLabel* Value);
	virtual void __fastcall PrintEvent(void);
	virtual bool __fastcall PrintPageEvent(void);
	virtual void __fastcall BeforePrintEvent(void);
	virtual void __fastcall AfterPrintEvent(void);
	virtual void __fastcall NewPageEvent(void);
	virtual void __fastcall NewColumnEvent(void);
	virtual void __fastcall PrintHeaderEvent(void);
	virtual void __fastcall PrintFooterEvent(void);
	virtual void __fastcall EndOfSectionEvent(void);
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	void __fastcall ExecuteReportEvent(System::Classes::TList* ReportEventList);
	virtual void __fastcall FontOnChange(System::TObject* Sender);
	virtual void __fastcall WriteHyperlink(void);
	virtual void __fastcall GrabFontOnChange(void);
	virtual void __fastcall ReleaseFontOnChange(void);
	void __fastcall AdjustXY(double Width);
	void __fastcall ReleaseTabs(TTabList* &TabList);
	void __fastcall UpdateFont(void);
	void __fastcall InitPrinter(void);
	void __fastcall CreateLineLists(void);
	void __fastcall ClearLineLists(void);
	void __fastcall ClearLineList(System::Classes::TList* &List);
	bool __fastcall BufferLine(double X1, double Y1);
	void __fastcall DrawLineLists(System::TObject* Sender);
	int __fastcall GetCursorXPos(void);
	int __fastcall GetCursorYPos(void);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	void __fastcall PrintPiece(System::UnicodeString Text);
	virtual void __fastcall PrintCenterInch(System::UnicodeString Text, double Pos) = 0 ;
	virtual void __fastcall PrintLeftInch(System::UnicodeString Text, double Pos) = 0 ;
	virtual void __fastcall PrintRightInch(System::UnicodeString Text, double Pos) = 0 ;
	virtual void __fastcall PrintBlockInch(System::UnicodeString Text, double Pos, double Width) = 0 ;
	void __fastcall DrawTabLine(bool DrawLine, int LineWidth, double X1, double Y1, double XAdd, double YAdd, Vcl::Graphics::TPen* SavePen);
	System::UnicodeString __fastcall ConvertMacro(Rpdefine::TMacroID MacroID);
	void __fastcall ProcessString(System::UnicodeString &Text);
	void __fastcall CheckPrinting(void);
	void __fastcall CheckNotPrinting(void);
	bool __fastcall PageInRange(int PageNum);
	void __fastcall ClearPosArrList(void);
	void __fastcall ClearFontList(void);
	void __fastcall ClearFontArrList(void);
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	void __fastcall SetLine(int Value);
	void __fastcall SetColumn(int Value);
	double __fastcall GetLeftWaste(void);
	double __fastcall GetRightWaste(void);
	double __fastcall GetTopWaste(void);
	double __fastcall GetBottomWaste(void);
	double __fastcall GetXPos(void);
	void __fastcall SetXPos(double Value);
	double __fastcall GetYPos(void);
	void __fastcall SetYPos(double Value);
	double __fastcall GetPageHeight(void);
	double __fastcall GetPageWidth(void);
	bool __fastcall GetBold(void);
	void __fastcall SetBold(bool Value);
	bool __fastcall GetUnderline(void);
	void __fastcall SetUnderline(bool Value);
	bool __fastcall GetItalic(void);
	void __fastcall SetItalic(bool Value);
	bool __fastcall GetStrikeout(void);
	void __fastcall SetStrikeout(bool Value);
	int __fastcall GetFontRotation(void);
	void __fastcall SetFontRotation(int Value);
	System::Uitypes::TColor __fastcall GetFontColor(void);
	void __fastcall SetFontColor(System::Uitypes::TColor Value);
	System::UnicodeString __fastcall GetFontName(void);
	void __fastcall SetFontName(System::UnicodeString Value);
	double __fastcall GetFontSize(void);
	void __fastcall SetFontSize(double Value);
	HFONT __fastcall GetFontHandle(void);
	System::Uitypes::TFontPitch __fastcall GetFontPitch(void);
	void __fastcall SetFontPitch(System::Uitypes::TFontPitch Value);
	System::Byte __fastcall GetFontCharset(void);
	void __fastcall SetFontCharset(System::Byte Value);
	Rpdefine::TFontAlign __fastcall GetFontAlign(void);
	void __fastcall SetFontAlign(Rpdefine::TFontAlign Value);
	bool __fastcall GetSuperscript(void);
	void __fastcall SetSuperscript(bool Value);
	bool __fastcall GetSubscript(void);
	void __fastcall SetSubscript(bool Value);
	double __fastcall GetFontTop(void);
	void __fastcall SetFontTop(double Value);
	double __fastcall GetFontBaseline(void);
	void __fastcall SetFontBaseline(double Value);
	double __fastcall GetFontBottom(void);
	void __fastcall SetFontBottom(double Value);
	double __fastcall GetLineTop(void);
	void __fastcall SetLineTop(double Value);
	double __fastcall GetLineMiddle(void);
	void __fastcall SetLineMiddle(double Value);
	double __fastcall GetLineBottom(void);
	void __fastcall SetLineBottom(double Value);
	double __fastcall GetLineHeight(void);
	void __fastcall SetLineHeight(double Value);
	double __fastcall GetAscentHeight(void);
	double __fastcall GetDescentHeight(void);
	double __fastcall GetFontHeight(void);
	void __fastcall SetFontHeight(double Value);
	double __fastcall GetFontWidth(void);
	void __fastcall SetFontWidth(double Value);
	bool __fastcall GetOutputInvalid(void);
	virtual void __fastcall SetFrameMode(Rpdefine::TFrameMode Value);
	Winapi::Windows::PDeviceModeW __fastcall GetDevMode(void);
	int __fastcall GetPrinterIndex(void);
	void __fastcall SetPrinterIndex(int Value);
	System::UnicodeString __fastcall GetDeviceName(void);
	System::UnicodeString __fastcall GetDriverName(void);
	System::UnicodeString __fastcall GetPort(void);
	double __fastcall GetOriginX(void);
	void __fastcall SetOriginX(double Value);
	double __fastcall GetOriginY(void);
	void __fastcall SetOriginY(double Value);
	System::Uitypes::TColor __fastcall GetBKColor(void);
	virtual void __fastcall SetBKColor(System::Uitypes::TColor Value);
	virtual void __fastcall SetScaleX(double Value);
	virtual void __fastcall SetScaleY(double Value);
	virtual void __fastcall SetTextBKMode(Rpdefine::TBKMode Value);
	double __fastcall GetLeftSection(void);
	void __fastcall SetLeftSection(double Value);
	double __fastcall GetRightSection(void);
	void __fastcall SetRightSection(double Value);
	double __fastcall GetTopSection(void);
	void __fastcall SetTopSection(double Value);
	double __fastcall GetBottomSection(void);
	void __fastcall SetBottomSection(double Value);
	void __fastcall SetStatusText(System::Classes::TStrings* Value);
	void __fastcall SetMacroData(System::Classes::TStrings* Value);
	void __fastcall SetLinesPerInch(int Value);
	void __fastcall SetUnits(Rpdefine::TPrintUnits Value);
	void __fastcall SetUnitsFactor(double Value);
	double __fastcall GetLeftMargin(void);
	void __fastcall SetLeftMargin(double Value);
	double __fastcall GetRightMargin(void);
	void __fastcall SetRightMargin(double Value);
	double __fastcall GetTopMargin(void);
	void __fastcall SetTopMargin(double Value);
	double __fastcall GetBottomMargin(void);
	void __fastcall SetBottomMargin(double Value);
	void __fastcall SetTabShade(int Value);
	void __fastcall SetCopies(int Value);
	virtual void __fastcall SetOrientation(Rpdefine::TOrientation Value);
	void __fastcall SetOrientationActive(void);
	double __fastcall GetColumnStart(void);
	double __fastcall GetColumnEnd(void);
	double __fastcall GetColumnWidth(void);
	void __fastcall SetOutputName(System::UnicodeString Value);
	System::Classes::TStrings* __fastcall GetBins(void);
	System::Classes::TStrings* __fastcall GetPapers(void);
	System::Classes::TStrings* __fastcall GetFonts(void);
	System::Classes::TStrings* __fastcall GetPrinters(void);
	int __fastcall GetMaxCopies(void);
	Rpdefine::TDuplex __fastcall GetDuplex(void);
	void __fastcall SetDuplex(Rpdefine::TDuplex Value);
	bool __fastcall GetCollate(void);
	void __fastcall SetCollate(bool Value);
	int __fastcall GetRelativePage(void);
	Rpdevice::TRPBaseDevice* __fastcall GetLocalDevice(void);
	void __fastcall ProcessMessages(void);
	void __fastcall SetHyperlink(System::UnicodeString Value);
	__property System::UnicodeString Hyperlink = {read=FHyperLink, write=SetHyperlink};
	
public:
	Rpdefine::TSaveFont* __fastcall GetBaseFont(void);
	void __fastcall SetBaseFont(Rpdefine::TSaveFont* &Font);
	void __fastcall SelectRPFont(void);
	void __fastcall SelectCanvasFont(void);
	double __fastcall LineStartPos(void);
	void __fastcall AddReportEvent(Rpdefine::TReportEventType ReportEventType, System::Classes::TNotifyEvent ReportEvent);
	void __fastcall RemoveReportEvent(Rpdefine::TReportEventType ReportEventType, System::Classes::TNotifyEvent ReportEvent);
	virtual void __fastcall TabRectangle(double X1, double Y1, double X2, double Y2) = 0 ;
	virtual System::Types::TSize __fastcall GetTextExtent(System::UnicodeString Value);
	virtual void __fastcall BrushCopy _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TBitmap* Bitmap, const System::Types::TRect &Source, System::Uitypes::TColor Color) = 0 ;
	virtual void __fastcall FloodFill _DEPRECATED_ATTRIBUTE0 (double X, double Y, System::Uitypes::TColor Color, Vcl::Graphics::TFillStyle FillStyle) = 0 ;
	virtual void __fastcall FrameRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall CopyRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Source) = 0 ;
	virtual void __fastcall FillRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall DrawFocusRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall Arc(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4) = 0 ;
	virtual void __fastcall Chord(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4) = 0 ;
	virtual void __fastcall Draw(double X, double Y, Vcl::Graphics::TGraphic* Graphic) = 0 ;
	virtual void __fastcall Ellipse(double X1, double Y1, double X2, double Y2) = 0 ;
	virtual void __fastcall LineTo(double X, double Y) = 0 ;
	virtual void __fastcall MoveTo(double X, double Y) = 0 ;
	virtual void __fastcall Pie(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4) = 0 ;
	virtual void __fastcall Polygon(System::Types::TPoint const *Points, const int Points_High) = 0 ;
	virtual void __fastcall Polyline(System::Types::TPoint const *Points, const int Points_High) = 0 ;
	virtual void __fastcall PrintBitmap(double X, double Y, double ScaleX, double ScaleY, Vcl::Graphics::TBitmap* Bitmap) = 0 ;
	virtual void __fastcall PrintBitmapRect(double X1, double Y1, double X2, double Y2, Vcl::Graphics::TBitmap* Bitmap) = 0 ;
	virtual void __fastcall PrintImageRect(double X1, double Y1, double X2, double Y2, System::Classes::TStream* ImageStream, System::UnicodeString ImageType) = 0 ;
	double __fastcall CalcGraphicWidth(double Height, Vcl::Graphics::TGraphic* Graphic);
	double __fastcall CalcGraphicHeight(double Width, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall Rectangle(double X1, double Y1, double X2, double Y2) = 0 ;
	virtual void __fastcall RoundRect(double X1, double Y1, double X2, double Y2, double X3, double Y3) = 0 ;
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* Graphic) = 0 ;
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X, double Y, const System::UnicodeString Text) = 0 ;
	virtual void __fastcall PrintData(System::UnicodeString Value) = 0 ;
	virtual void __fastcall PrintDataStream(System::Classes::TStream* Stream, int BufSize) = 0 ;
	bool __fastcall NoPrinters(void);
	virtual void __fastcall AllowPreviewOnly(void);
	virtual void __fastcall AllowPrinterOnly(void);
	virtual void __fastcall AllowAll(void);
	void __fastcall AssignFont(Vcl::Graphics::TFont* Font);
	virtual void __fastcall UnregisterGraphic(int Index);
	virtual void __fastcall RegisterGraphic(int Index);
	virtual void __fastcall ReuseGraphic(int Index);
	int __fastcall XI2D(double Pos);
	int __fastcall YI2D(double Pos);
	int __fastcall XU2D(double Pos);
	int __fastcall YU2D(double Pos);
	double __fastcall XD2I(int Pos);
	double __fastcall YD2I(int Pos);
	double __fastcall XD2U(int Pos);
	double __fastcall YD2U(int Pos);
	double __fastcall XI2U(double Pos);
	double __fastcall YI2U(double Pos);
	double __fastcall XU2I(double Pos);
	double __fastcall YU2I(double Pos);
	__fastcall virtual TBaseReport(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TBaseReport(void);
	virtual void __fastcall Start(void) = 0 ;
	virtual void __fastcall Finish(void) = 0 ;
	virtual void __fastcall Execute(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall NewPara(void);
	virtual void __fastcall AbortPage(void);
	bool __fastcall ShowPrintDialog(void);
	bool __fastcall ShowPrinterSetupDialog(void);
	void __fastcall Abort(void);
	void __fastcall UpdateStatus(void);
	void __fastcall Reset(void);
	void __fastcall ResetSection(void);
	void __fastcall ResetPrinter(void);
	bool __fastcall SetPaperSize(int Size, double Width, double Height);
	void __fastcall ReleasePrinter(void);
	void __fastcall RecoverPrinter(void);
	virtual bool __fastcall SelectBin(System::UnicodeString BinName);
	bool __fastcall SelectPaper(System::UnicodeString PaperName);
	bool __fastcall SelectPrinter(System::UnicodeString PrinterName);
	bool __fastcall SupportBin(int BinNum);
	bool __fastcall SupportPaper(int PaperNum);
	bool __fastcall SupportOrientation(void);
	bool __fastcall SupportDuplex(void);
	bool __fastcall SupportCollate(void);
	__property System::Classes::TStrings* Bins = {read=GetBins};
	__property System::Classes::TStrings* Papers = {read=GetPapers};
	__property System::Classes::TStrings* Fonts = {read=GetFonts};
	__property System::Classes::TStrings* Printers = {read=GetPrinters};
	__property int MaxCopies = {read=GetMaxCopies, nodefault};
	__property Rpdefine::TDuplex Duplex = {read=GetDuplex, write=SetDuplex, nodefault};
	__property bool Collate = {read=GetCollate, write=SetCollate, nodefault};
	__property System::TDateTime ReportDateTime = {read=FReportDateTime, write=FReportDateTime};
	__property Rpdefine::TFrameMode FrameMode = {read=FFrameMode, write=SetFrameMode, default=0};
	__property Rpdevice::TRPBaseDevice* LocalDevice = {read=GetLocalDevice, write=FLocalDevice};
	__property int JobPages = {read=FJobPages, nodefault};
	void __fastcall Cr(void);
	void __fastcall Lf(void);
	virtual void __fastcall ResetLineHeight(void);
	void __fastcall AdjustLine(void);
	void __fastcall CrLf(void);
	void __fastcall NewLine(void);
	void __fastcall SoftLine(void);
	void __fastcall NewColumn(void);
	void __fastcall GotoHeader(void);
	void __fastcall GotoFooter(void);
	void __fastcall GotoXY(double NewXPos, double NewYPos);
	void __fastcall Home(void);
	void __fastcall SetTopOfPage(void);
	int __fastcall LinesLeft(void);
	int __fastcall ColumnLinesLeft(void);
	bool __fastcall PopPos(void);
	bool __fastcall PushPos(void);
	bool __fastcall RestorePos(int Index);
	bool __fastcall SavePos(int Index);
	bool __fastcall PopTabs(void);
	bool __fastcall PushTabs(void);
	bool __fastcall RestoreTabs(int Index);
	bool __fastcall SaveTabs(int Index);
	bool __fastcall PopFont(void);
	bool __fastcall PushFont(void);
	bool __fastcall RestoreFont(int Index);
	bool __fastcall SaveFont(int Index);
	void __fastcall SetColumns(int NewColumns, double Between);
	void __fastcall SetColumnWidth(double Width, double Between);
	void __fastcall ClearColumns(void);
	void __fastcall SetTab(double NewPos, Rpdefine::TPrintJustify NewJustify, double NewWidth, double NewMargin, System::Byte NewLines, System::Byte NewShade);
	void __fastcall ClearTabs(void);
	void __fastcall ClearAllTabs(void);
	void __fastcall ResetTabs(void);
	virtual void __fastcall Tab(int LeftWidth, int RightWidth, int TopWidth, int BottomWidth, int ShadeOverride);
	Rpdefine::TTab* __fastcall GetTab(int Index);
	double __fastcall TabStart(int Index);
	double __fastcall TabEnd(int Index);
	double __fastcall TabWidth(int Index);
	void __fastcall FinishTabBox(int Width);
	System::Types::TPoint __fastcall CreatePoint(double X, double Y);
	System::Types::TRect __fastcall CreateRect(double X1, double Y1, double X2, double Y2);
	virtual double __fastcall TextWidth(System::UnicodeString Text);
	int __fastcall MemoLines(TBaseMemoBuf* MemoBuf);
	System::UnicodeString __fastcall GetMemoLine(TBaseMemoBuf* MemoBuf, bool &Eol);
	virtual void __fastcall PrintMemo(TBaseMemoBuf* MemoBuf, int Lines, bool PrintTabs);
	void __fastcall PrintJustify(System::UnicodeString Text, double xPos, Rpdefine::TPrintJustify Justify, double Margin, double Width);
	void __fastcall Print(System::UnicodeString Text);
	void __fastcall PrintCenter(System::UnicodeString Text, double Pos);
	void __fastcall PrintHeader(System::UnicodeString Text, Rpdefine::TPrintJustify Justify);
	void __fastcall PrintFooter(System::UnicodeString Text, Rpdefine::TPrintJustify Justify);
	void __fastcall PrintLeft(System::UnicodeString Text, double Pos);
	void __fastcall PrintBlock(System::UnicodeString Text, double Pos, double Width);
	void __fastcall Println(System::UnicodeString Text);
	void __fastcall PrintRight(System::UnicodeString Text, double Pos);
	void __fastcall PrintXY(double X, double Y, System::UnicodeString Text);
	void __fastcall PrintCharJustify(System::UnicodeString Text, System::WideChar Ch, double xPos);
	virtual void __fastcall PrintTab(System::UnicodeString Text);
	System::UnicodeString __fastcall TruncateText(System::UnicodeString Value, double Width);
	System::UnicodeString __fastcall Macro(Rpdefine::TMacroID MacroID);
	virtual System::UnicodeString __fastcall PIVar(System::UnicodeString VarName);
	virtual void __fastcall SetPIVar(System::UnicodeString VarName, System::UnicodeString VarValue);
	virtual System::UnicodeString __fastcall GetPIVar(System::UnicodeString VarName);
	Vcl::Graphics::TBrush* __fastcall CreateBrush(System::Uitypes::TColor NewColor, Vcl::Graphics::TBrushStyle NewStyle, Vcl::Graphics::TBitmap* NewBitmap);
	Vcl::Graphics::TFont* __fastcall CreateFont(System::UnicodeString NewName, int NewSize);
	Vcl::Graphics::TPen* __fastcall CreatePen(System::Uitypes::TColor NewColor, Vcl::Graphics::TPenStyle NewStyle, int NewWidth, Vcl::Graphics::TPenMode NewMode);
	virtual void __fastcall SetBrush(System::Uitypes::TColor NewColor, Vcl::Graphics::TBrushStyle NewStyle, Vcl::Graphics::TBitmap* NewBitmap);
	virtual void __fastcall SetFont(System::UnicodeString NewName, double NewSize);
	virtual void __fastcall SetPen(System::Uitypes::TColor NewColor, Vcl::Graphics::TPenStyle NewStyle, int NewWidth, Vcl::Graphics::TPenMode NewMode);
	void __fastcall StartLink(System::UnicodeString AHyperlink);
	void __fastcall EndLink(void);
	System::UnicodeString __fastcall MakeLink(System::UnicodeString ADisplayText, System::UnicodeString AHyperlink);
	__property double TextFieldWidth = {read=FTextFieldWidth, write=FTextFieldWidth};
	__property bool Threaded = {read=FThreaded, write=FThreaded, nodefault};
	__property bool IgnoreRPTF = {read=FIgnoreRPTF, write=FIgnoreRPTF, nodefault};
	__property int CursorXPos = {read=GetCursorXPos, nodefault};
	__property int CursorYPos = {read=GetCursorYPos, nodefault};
	__property double XPos = {read=GetXPos, write=SetXPos};
	__property double YPos = {read=GetYPos, write=SetYPos};
	__property Vcl::Graphics::TCanvas* Canvas = {read=GetCanvas};
	__property int CurrentPage = {read=FCurrentPage, nodefault};
	__property int RelativePage = {read=GetRelativePage, nodefault};
	__property int PageNumOffset = {read=FPageNumOffset, write=FPageNumOffset, nodefault};
	__property bool PageInvalid = {read=FPageInvalid, nodefault};
	__property bool OutputInvalid = {read=GetOutputInvalid, nodefault};
	__property int XDPI = {read=FXDPI, nodefault};
	__property int YDPI = {read=FYDPI, nodefault};
	__property int LineNum = {read=FLineNum, write=SetLine, nodefault};
	__property int ColumnNum = {read=FColumnNum, write=SetColumn, nodefault};
	__property int Columns = {read=FColumns, nodefault};
	__property double ColumnStart = {read=GetColumnStart};
	__property double ColumnEnd = {read=GetColumnEnd};
	__property double ColumnWidth = {read=GetColumnWidth};
	__property double LeftWaste = {read=GetLeftWaste};
	__property double RightWaste = {read=GetRightWaste};
	__property double TopWaste = {read=GetTopWaste};
	__property double BottomWaste = {read=GetBottomWaste};
	__property double SectionLeft = {read=GetLeftSection, write=SetLeftSection};
	__property double SectionRight = {read=GetRightSection, write=SetRightSection};
	__property double SectionTop = {read=GetTopSection, write=SetTopSection};
	__property double SectionBottom = {read=GetBottomSection, write=SetBottomSection};
	__property double PageHeight = {read=GetPageHeight};
	__property double PageWidth = {read=GetPageWidth};
	__property bool Bold = {read=GetBold, write=SetBold, nodefault};
	__property bool Underline = {read=GetUnderline, write=SetUnderline, nodefault};
	__property bool Italic = {read=GetItalic, write=SetItalic, nodefault};
	__property bool Strikeout = {read=GetStrikeout, write=SetStrikeout, nodefault};
	__property bool Superscript = {read=GetSuperscript, write=SetSuperscript, nodefault};
	__property bool Subscript = {read=GetSubscript, write=SetSubscript, nodefault};
	__property int FontRotation = {read=GetFontRotation, write=SetFontRotation, nodefault};
	__property System::Uitypes::TColor FontColor = {read=GetFontColor, write=SetFontColor, nodefault};
	__property System::UnicodeString FontName = {read=GetFontName, write=SetFontName};
	__property double FontSize = {read=GetFontSize, write=SetFontSize};
	__property HFONT FontHandle = {read=GetFontHandle, nodefault};
	__property System::Uitypes::TFontPitch FontPitch = {read=GetFontPitch, write=SetFontPitch, nodefault};
	__property System::Byte FontCharset = {read=GetFontCharset, write=SetFontCharset, nodefault};
	__property Rpdefine::TFontAlign FontAlign = {read=GetFontAlign, write=SetFontAlign, nodefault};
	__property double LineTop = {read=GetLineTop, write=SetLineTop};
	__property double LineMiddle = {read=GetLineMiddle, write=SetLineMiddle};
	__property double LineBottom = {read=GetLineBottom, write=SetLineBottom};
	__property double FontTop = {read=GetFontTop, write=SetFontTop};
	__property double FontBaseline = {read=GetFontBaseline, write=SetFontBaseline};
	__property double FontBottom = {read=GetFontBottom, write=SetFontBottom};
	__property Rpdefine::TTabJustify TabJustify = {read=FTabJustify, write=FTabJustify, nodefault};
	__property bool TransparentBitmaps = {read=FTransparentBitmaps, write=FTransparentBitmaps, nodefault};
	__property Rpdefine::TTabJustify ParaJustify = {read=FParaJustify, write=FParaJustify, default=4};
	__property bool NoBufferLine = {read=FNoBufferLine, write=FNoBufferLine, nodefault};
	__property bool NoNTColorFix = {read=FNoNTColorFix, write=FNoNTColorFix, nodefault};
	__property bool UseDrawText = {read=FUseDrawText, write=FUseDrawText, nodefault};
	__property int CurrentPass = {read=FCurrentPass, write=FCurrentPass, nodefault};
	__property int TotalPasses = {read=FTotalPasses, write=FTotalPasses, nodefault};
	__property double FixedTabWidth = {read=FFixedTabWidth, write=FFixedTabWidth};
	__property int PrinterIndex = {read=GetPrinterIndex, write=SetPrinterIndex, nodefault};
	__property System::UnicodeString DeviceName = {read=GetDeviceName};
	__property System::UnicodeString DriverName = {read=GetDriverName};
	__property System::UnicodeString Port = {read=GetPort};
	__property bool Aborted = {read=FAborted, nodefault};
	__property bool Printing = {read=FPrinting, nodefault};
	__property double OriginX = {read=GetOriginX, write=SetOriginX};
	__property double OriginY = {read=GetOriginY, write=SetOriginY};
	__property Winapi::Windows::PDeviceModeW DevMode = {read=GetDevMode};
	__property System::Uitypes::TColor BKColor = {read=GetBKColor, write=SetBKColor, nodefault};
	__property double LineHeight = {read=GetLineHeight, write=SetLineHeight};
	__property double AscentHeight = {read=GetAscentHeight};
	__property double DescentHeight = {read=GetDescentHeight};
	__property double FontHeight = {read=GetFontHeight, write=SetFontHeight};
	__property double FontWidth = {read=GetFontWidth, write=SetFontWidth};
	__property System::UnicodeString OutputName = {read=FOutputName, write=SetOutputName};
	__property double NoPrinterPageHeight = {read=FNoPrinterPageHeight, write=FNoPrinterPageHeight};
	__property double NoPrinterPageWidth = {read=FNoPrinterPageWidth, write=FNoPrinterPageWidth};
	__property System::Classes::TStrings* MacroData = {read=FMacroData, write=SetMacroData};
	__property int FirstPage = {read=FFirstPage, write=FFirstPage, default=1};
	__property int LastPage = {read=FLastPage, write=FLastPage, default=9999};
	__property System::UnicodeString Selection = {read=FSelection, write=FSelection};
	__property Vcl::Stdctrls::TLabel* StatusLabel = {read=FStatusLabel, write=SetStatusLabel};
	__property System::UnicodeString StatusFormat = {read=FStatusFormat, write=FStatusFormat};
	__property System::Classes::TStrings* StatusText = {read=FStatusText, write=SetStatusText};
	__property Rpdefine::TLineHeightMethod LineHeightMethod = {read=FLineHeightMethod, write=FLineHeightMethod, default=1};
	__property int LinesPerInch = {read=FLinesPerInch, write=SetLinesPerInch, default=6};
	__property Rpdefine::TPrintUnits Units = {read=FUnits, write=SetUnits, default=0};
	__property double UnitsFactor = {read=FUnitsFactor, write=SetUnitsFactor};
	__property double MarginLeft = {read=GetLeftMargin, write=SetLeftMargin};
	__property double MarginRight = {read=GetRightMargin, write=SetRightMargin};
	__property double MarginTop = {read=GetTopMargin, write=SetTopMargin};
	__property double MarginBottom = {read=GetBottomMargin, write=SetBottomMargin};
	__property int TabShade = {read=FTabShade, write=SetTabShade, default=0};
	__property System::Uitypes::TColor TabColor = {read=FTabColor, write=FTabColor, default=0};
	__property System::Uitypes::TColor BoxLineColor = {read=FBoxLineColor, write=FBoxLineColor, default=0};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property Rpdefine::TBKMode TextBKMode = {read=FTextBKMode, write=SetTextBKMode, default=0};
	__property int Copies = {read=FCopies, write=SetCopies, default=1};
	__property Rpdefine::TOrientation Orientation = {read=FOrientation, write=SetOrientation, nodefault};
	__property double ScaleX = {read=FScaleX, write=SetScaleX};
	__property double ScaleY = {read=FScaleY, write=SetScaleY};
	__property System::Classes::TNotifyEvent OnPrint = {read=FOnPrint, write=FOnPrint};
	__property Rpdefine::TPrintPageEvent OnPrintPage = {read=FOnPrintPage, write=FOnPrintPage};
	__property System::Classes::TNotifyEvent OnBeforePrint = {read=FOnBeforePrint, write=FOnBeforePrint};
	__property System::Classes::TNotifyEvent OnAfterPrint = {read=FOnAfterPrint, write=FOnAfterPrint};
	__property System::Classes::TNotifyEvent OnNewPage = {read=FOnNewPage, write=FOnNewPage};
	__property System::Classes::TNotifyEvent OnNewColumn = {read=FOnNewColumn, write=FOnNewColumn};
	__property System::Classes::TNotifyEvent OnPrintHeader = {read=FOnPrintHeader, write=FOnPrintHeader};
	__property System::Classes::TNotifyEvent OnPrintFooter = {read=FOnPrintFooter, write=FOnPrintFooter};
	__property System::Classes::TNotifyEvent OnEndOfSection = {read=FOnEndOfSection, write=FOnEndOfSection};
	__property Rpdefine::TDecodeImageEvent OnDecodeImage = {read=FOnDecodeImage, write=FOnDecodeImage};
};


class PASCALIMPLEMENTATION TBaseMemoBuf : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TBaseReport* FBaseReport;
	bool FHardLines;
	Rpdefine::TPrintJustify FJustify;
	bool FKeepSpaces;
	double FPrintStart;
	double FPrintEnd;
	System::Byte FRTFMode;
	
public:
	virtual System::UnicodeString __fastcall GetNextLine(bool &Eol) = 0 ;
	virtual int __fastcall MemoLinesLeft(void) = 0 ;
	virtual double __fastcall PrintLines(int Lines, bool PrintTabs) = 0 ;
	__property TBaseReport* BaseReport = {read=FBaseReport, write=FBaseReport};
	__property bool HardLines = {read=FHardLines, write=FHardLines, nodefault};
	__property Rpdefine::TPrintJustify Justify = {read=FJustify, write=FJustify, nodefault};
	__property bool KeepSpaces = {read=FKeepSpaces, write=FKeepSpaces, nodefault};
	__property double PrintStart = {read=FPrintStart, write=FPrintStart};
	__property double PrintEnd = {read=FPrintEnd, write=FPrintEnd};
	__property System::Byte RTFMode = {read=FRTFMode, write=FRTFMode, nodefault};
public:
	/* TObject.Create */ inline __fastcall TBaseMemoBuf(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TBaseMemoBuf(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpbase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPBASE)
using namespace Rpbase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpbaseHPP
