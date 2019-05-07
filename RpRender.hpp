// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRender.pas' rev: 29.00 (Windows)

#ifndef RprenderHPP
#define RprenderHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Graphics.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpMBCS.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprender
{
//-- forward type declarations -----------------------------------------------
struct TRPReportHeader;
struct TRPPageHeader;
struct TFloatPoint;
class DELPHICLASS TRPConverter;
class DELPHICLASS TRPRender;
class DELPHICLASS TRPRenderStream;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TRPReportHeader
{
public:
	System::Word FileVer;
	System::UnicodeString Title;
	int PageNo;
	int PageCount;
	int FirstPage;
	int LastPage;
	double PaperWidth;
	double PaperHeight;
	double LeftWaste;
	double RightWaste;
	double TopWaste;
	double BottomWaste;
	Rpdefine::TOrientation Orientation;
	short Bin;
	bool Collate;
	Rpdefine::TDuplex Duplex;
	short Copies;
	short DMPaperSize;
	short DMPaperLength;
	short DMPaperWidth;
	System::UnicodeString OutputName;
};


struct DECLSPEC_DRECORD TRPPageHeader
{
public:
	int PrevPagePos;
	int NextPagePos;
	int PageNo;
	double PaperWidth;
	double PaperHeight;
	System::Byte OldOrientation;
};


struct DECLSPEC_DRECORD TFloatPoint
{
public:
	double X;
	double Y;
};


class PASCALIMPLEMENTATION TRPConverter : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Vcl::Graphics::TBitmap* FontBitmap;
	System::TDateTime FReportDateTime;
	int FFirstPage;
	int FLastPage;
	int FPageNo;
	int FPageCount;
	System::UnicodeString FTitle;
	System::Classes::TStream* FStream;
	TRPRender* FRenderer;
	bool FReuseGraphic;
	System::Word FFileVer;
	int FCurrPagePos;
	int FPrevPagePos;
	int FNextPagePos;
	double FXPos;
	double FYPos;
	System::Classes::TStringList* VarList;
	bool FAnsiStrings;
	void __fastcall GetNextRPTFCommand(System::UnicodeString RPTFStr, int &Pos, System::WideChar &Command, System::UnicodeString &Param);
	System::UnicodeString __fastcall NextPiece(System::UnicodeString InStr, int &Pos);
	void __fastcall ParseRPTF(System::UnicodeString InStr, int &Pos, System::UnicodeString &TextStr, System::UnicodeString &RPTFStr);
	void __fastcall ProcessRPTF(System::UnicodeString RPTFStr);
	virtual void __fastcall CreateGraphic(Vcl::Graphics::TGraphic* &Value);
	virtual void __fastcall LoadGraphic(Vcl::Graphics::TGraphic* Value);
	void __fastcall MatchCode(System::Byte pyValue);
	void __fastcall ProcessPage(void);
	System::Byte __fastcall ReadByte(void);
	int __fastcall ReadLongint(void);
	System::Types::TPoint __fastcall ReadPoint(void);
	void __fastcall ReadPageHeader(void);
	void __fastcall ReadReportHeader(void);
	System::Types::TRect __fastcall ReadRect(void);
	short __fastcall ReadSmallInt(void);
	float __fastcall ReadSingle(void);
	System::UnicodeString __fastcall ReadString(void);
	__property System::TDateTime ReportDateTime = {read=FReportDateTime, write=FReportDateTime};
	virtual System::UnicodeString __fastcall GetDeviceName(void);
	virtual System::UnicodeString __fastcall GetDriverName(void);
	virtual System::UnicodeString __fastcall GetPort(void);
	System::UnicodeString __fastcall ConvertMacro(Rpdefine::TMacroID MacroID);
	void __fastcall ReadBuf(void *Buf, int Len);
	System::UnicodeString __fastcall ReadPIVar(System::UnicodeString VarName);
	System::UnicodeString __fastcall GetPIVar(System::UnicodeString VarName);
	void __fastcall SetPIVar(System::UnicodeString VarName, System::UnicodeString VarValue);
	void __fastcall ClearVarList(void);
	void __fastcall ProcessString(System::UnicodeString &Text);
	__property System::UnicodeString DeviceName = {read=GetDeviceName};
	__property System::UnicodeString DriverName = {read=GetDriverName};
	__property System::UnicodeString Port = {read=GetPort};
	void __fastcall PrintRPTF(double AX, double AY, System::UnicodeString AText, System::WideChar AJustify);
	void __fastcall PrintRPTFBlock(double AX, double AY, System::UnicodeString AText, double AWidth);
	void __fastcall ReadGraphic(Vcl::Graphics::TGraphic* Value);
	__property bool AnsiStrings = {read=FAnsiStrings, write=FAnsiStrings, nodefault};
	
public:
	TRPReportHeader ReportHeader;
	TRPPageHeader PageHeader;
	float CurrX;
	float CurrY;
	Vcl::Graphics::TFont* Font;
	Rpdefine::TSaveFont* FontData;
	float LineHeight;
	Vcl::Graphics::TBrush* Brush;
	Vcl::Graphics::TPen* Pen;
	System::UnicodeString Hyperlink;
	double __fastcall RPTFTextWidth(System::UnicodeString Value);
	void __fastcall SetBrushColor(void);
	void __fastcall SetFontColor(void);
	void __fastcall SetFontName(void);
	void __fastcall SetFontHeight(void);
	void __fastcall SetFontBold(void);
	void __fastcall SetFontUnderline(void);
	void __fastcall SetFontItalic(void);
	void __fastcall SetFontStrikeout(void);
	void __fastcall SetFontSuperscript(void);
	void __fastcall SetFontSubscript(void);
	void __fastcall SetFontPitch(void);
	void __fastcall SetFontAlign(void);
	void __fastcall SetFontRotation(void);
	void __fastcall SetFontCharset(void);
	void __fastcall DoLeftText(void);
	void __fastcall DoCenterText(void);
	void __fastcall DoRightText(void);
	void __fastcall DoPrintSpaces(void);
	void __fastcall DoRectangle(void);
	void __fastcall DoArc(void);
	void __fastcall DoChord(void);
	void __fastcall DoEllipse(void);
	void __fastcall DoMoveTo(void);
	void __fastcall DoLineTo(void);
	void __fastcall SetPenColor(void);
	void __fastcall DoBrushCopy(void);
	void __fastcall DoCopyRect(void);
	void __fastcall DoDraw(void);
	void __fastcall DoDrawFocusRect(void);
	void __fastcall DoFillRect(void);
	void __fastcall DoFloodFill(void);
	void __fastcall DoFrameRect(void);
	void __fastcall DoPie(void);
	void __fastcall DoPolygon(void);
	void __fastcall DoPolyline(void);
	void __fastcall DoPrintBitmap(void);
	void __fastcall DoPrintBitmapRect(void);
	void __fastcall DoRoundRect(void);
	void __fastcall DoStretchDraw(void);
	void __fastcall DoTextRect(void);
	void __fastcall SetFont(void);
	void __fastcall SetTextBkMode(void);
	void __fastcall SetBkColor(void);
	void __fastcall SetScaleX(void);
	void __fastcall SetScaleY(void);
	void __fastcall DoPrintData(void);
	void __fastcall DoPrintDataStream(void);
	void __fastcall DoTransBitmap(void);
	void __fastcall DoSetFrameMode(void);
	void __fastcall DoPrintImageRect(void);
	void __fastcall DoVariableData(void);
	void __fastcall SetBrush(void);
	void __fastcall SetBrushStyle(void);
	void __fastcall SetBrushBitmap(void);
	void __fastcall SetPen(void);
	void __fastcall SetPenMode(void);
	void __fastcall SetPenStyle(void);
	void __fastcall SetPenWidth(void);
	void __fastcall DoResetLineHeight(void);
	void __fastcall DoAllowPreviewOnly(void);
	void __fastcall DoAllowPrinterOnly(void);
	void __fastcall DoAllowAll(void);
	void __fastcall DoSetHyperlink(void);
	void __fastcall SetOrientation(void);
	void __fastcall SetBin(void);
	__fastcall virtual TRPConverter(System::Classes::TStream* AStream, TRPRender* ARenderer);
	__fastcall virtual ~TRPConverter(void);
	virtual void __fastcall Generate(const int APageNo = 0x0, int APageCount = 0x0);
	bool __fastcall PageInRange(int PageNum);
	void __fastcall GotoPage(const int APageNum);
	__property System::Word FileVer = {read=FFileVer, nodefault};
	__property TRPRender* Renderer = {read=FRenderer};
	__property int PageNo = {read=FPageNo, nodefault};
	__property int PageCount = {read=FPageCount, nodefault};
	__property System::UnicodeString Title = {read=FTitle};
	__property bool ReuseGraphic = {read=FReuseGraphic, nodefault};
};


class PASCALIMPLEMENTATION TRPRender : public Rpdefine::TRpComponent
{
	typedef Rpdefine::TRpComponent inherited;
	
protected:
	System::Set<Rpdefine::TDestination, Rpdefine::TDestination::destPrinter, Rpdefine::TDestination::destCustomFile> ValidDestination;
	double snPaperWidth;
	double snPaperHeight;
	double snPenWidth;
	Rpdefine::TFrameMode snFrameMode;
	bool FActive;
	System::UnicodeString FDisplayName;
	System::UnicodeString FFileExtension;
	System::Classes::TStringList* FMacroData;
	System::Sysutils::TFileName FOutputFileName;
	System::Sysutils::TFileName FInputFileName;
	bool FRendering;
	System::Classes::TStream* FNDRStream;
	bool FIsInternalNDRStream;
	System::UnicodeString FSelection;
	int FFirstPage;
	int FLastPage;
	Rpdefine::TDecodeImageEvent FOnDecodeImage;
	bool FForceAnsi;
	TRPConverter* Converter;
	Rpdefine::TBKMode FTextBKMode;
	System::Uitypes::TColor FBKColor;
	bool FTransparentBitmaps;
	void __fastcall SetDisplayName(const System::UnicodeString Value);
	System::UnicodeString __fastcall StripRPTF(System::UnicodeString AValue);
	virtual void __fastcall SetBKColor(System::Uitypes::TColor Value);
	virtual void __fastcall AllowPreviewOnly(void);
	virtual void __fastcall AllowPrinterOnly(void);
	virtual void __fastcall AllowAll(void);
	bool __fastcall GetOutputInvalid(void);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	virtual void __fastcall SetHyperlink(System::UnicodeString Value);
	virtual void __fastcall Arc(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall BrushChanged(System::TObject* Sender);
	virtual void __fastcall Chord(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall CenterText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall Ellipse(const double X1, const double Y1, const double X2, const double Y2);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall LeftText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall LineTo(const double X1, const double Y1);
	virtual void __fastcall MoveTo(const double X1, const double Y1);
	virtual void __fastcall Pie(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall PolyLine(TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	virtual void __fastcall Polygon(TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	virtual void __fastcall RightText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall PenChanged(System::TObject* Sender);
	virtual void __fastcall PrintImageRect(double X1, double Y1, double X2, double Y2, System::Classes::TStream* ImageStream, System::UnicodeString ImageType);
	virtual void __fastcall PrintBitmapRect(const double X1, const double Y1, const double X2, const double Y2, Vcl::Graphics::TBitmap* AGraphic);
	virtual void __fastcall PrintBitmap(const double X1, const double Y1, const double ScaleX, const double ScaleY, Vcl::Graphics::TBitmap* AGraphic);
	virtual void __fastcall StretchDraw(const System::Types::TRect &ARect, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall Draw(const double X1, const double Y1, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall PrintSpaces(const System::UnicodeString AText, const double X1, const double Y1, const double AWidth);
	virtual void __fastcall Rectangle(const double X1, const double Y1, const double X2, const double Y2);
	virtual void __fastcall FillRect(const System::Types::TRect &ARect);
	virtual void __fastcall TextRect(const System::Types::TRect &ARect, double X1, double Y1, System::UnicodeString S1);
	virtual void __fastcall RoundRect(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3);
	virtual int __fastcall CountSpaces(System::UnicodeString Text);
	virtual System::UnicodeString __fastcall GetFirstWord(System::UnicodeString &Line);
	virtual System::UnicodeString __fastcall GetSpaces(System::UnicodeString &Line);
	virtual void __fastcall AdjustXY(double &X1, double &Y1, double Width);
	virtual void __fastcall PrintRightWidth(double &X1, double &Y1, System::UnicodeString Text, double Width);
	virtual void __fastcall SelectBin(System::UnicodeString ABin)/* overload */;
	virtual void __fastcall SelectBin(int ABin)/* overload */;
	virtual void __fastcall PrintData(System::UnicodeString Value);
	virtual void __fastcall PrintDataStream(System::Classes::TStream* Stream, int BufSize);
	virtual void __fastcall FrameRect(const System::Types::TRect &Rect);
	virtual void __fastcall FloodFill(double X, double Y, System::Uitypes::TColor Color, Vcl::Graphics::TFillStyle FillStyle);
	virtual void __fastcall BrushCopy(const System::Types::TRect &Dest, Vcl::Graphics::TBitmap* Bitmap, const System::Types::TRect &Source, System::Uitypes::TColor Color);
	virtual void __fastcall CopyRect(const System::Types::TRect &Dest, Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Source);
	virtual void __fastcall DrawFocusRect(const System::Types::TRect &Rect);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual System::UnicodeString __fastcall GetFileExtension(void);
	__property bool IsInternalNDRStream = {read=FIsInternalNDRStream, write=FIsInternalNDRStream, nodefault};
	__property bool TransparentBitmaps = {read=FTransparentBitmaps, write=FTransparentBitmaps, nodefault};
	__property Rpdefine::TBKMode TextBKMode = {read=FTextBKMode, write=FTextBKMode, nodefault};
	__property System::Uitypes::TColor BKColor = {write=SetBKColor, nodefault};
	__property bool OutputInvalid = {read=GetOutputInvalid, nodefault};
	
public:
	__fastcall virtual TRPRender(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRPRender(void);
	virtual void __fastcall Render(System::Classes::TStream* ANDRStream = (System::Classes::TStream*)(0x0))/* overload */;
	void __fastcall Render(System::Sysutils::TFileName AInputFileName)/* overload */;
	virtual void __fastcall RenderPage(int PageNum);
	virtual void __fastcall PrintRender _DEPRECATED_ATTRIBUTE0 (System::Classes::TStream* ANDRStream, System::Sysutils::TFileName AOutputFileName);
	virtual int __fastcall XI2D(double Pos);
	virtual int __fastcall YI2D(double Pos);
	__property System::UnicodeString Selection = {read=FSelection, write=FSelection};
	__property int FirstPage = {read=FFirstPage, write=FFirstPage, nodefault};
	__property int LastPage = {read=FLastPage, write=FLastPage, nodefault};
	__property Rpdefine::TFrameMode FrameMode = {read=snFrameMode, write=snFrameMode, nodefault};
	__property double PenWidth = {read=snPenWidth, write=snPenWidth};
	__property double PaperWidth = {read=snPaperWidth, write=snPaperWidth};
	__property double PaperHeight = {read=snPaperHeight, write=snPaperHeight};
	__property System::Classes::TStringList* MacroData = {read=FMacroData, write=FMacroData};
	__property int XDPI = {read=GetXDPI, nodefault};
	__property int YDPI = {read=GetYDPI, nodefault};
	__property System::Sysutils::TFileName InputFileName = {read=FInputFileName, write=FInputFileName};
	__property System::Sysutils::TFileName OutputFileName = {read=FOutputFileName, write=FOutputFileName};
	__property bool Rendering = {read=FRendering, nodefault};
	__property System::Classes::TStream* NDRStream = {read=FNDRStream, write=FNDRStream};
	__property Rpdefine::TDecodeImageEvent OnDecodeImage = {read=FOnDecodeImage, write=FOnDecodeImage};
	__property bool ForceAnsi = {read=FForceAnsi, write=FForceAnsi, nodefault};
	
__published:
	__property bool Active = {read=FActive, write=FActive, default=1};
	__property System::UnicodeString DisplayName = {read=FDisplayName, write=SetDisplayName};
	__property System::UnicodeString FileExtension = {read=GetFileExtension, write=FFileExtension};
};


typedef System::TMetaClass* TRPRenderClass;

class PASCALIMPLEMENTATION TRPRenderStream : public TRPRender
{
	typedef TRPRender inherited;
	
protected:
	System::Classes::TStream* FActiveStream;
	System::Classes::TStream* FOutputStream;
	System::Classes::TStream* FOwnedStream;
	__property System::Classes::TStream* ActiveStream = {read=FActiveStream, write=FActiveStream};
	void __fastcall SetOutputStream(System::Classes::TStream* AStream);
	virtual void __fastcall Print(const System::UnicodeString AData);
	virtual void __fastcall PrintF(const System::UnicodeString AData, System::TVarRec const *AArgs, const int AArgs_High);
	virtual void __fastcall PrintLn(const System::UnicodeString AData = System::UnicodeString());
	virtual void __fastcall PrintLnF(const System::UnicodeString AData, System::TVarRec const *AArgs, const int AArgs_High);
	virtual void __fastcall FreeFileStream(void);
	
public:
	__fastcall virtual ~TRPRenderStream(void);
	void __fastcall InitFileStream(const System::UnicodeString AFileName);
	__property System::Classes::TStream* OutputStream = {read=FOutputStream, write=SetOutputStream};
	__property System::Classes::TStream* OwnedStream = {read=FOwnedStream};
public:
	/* TRPRender.Create */ inline __fastcall virtual TRPRenderStream(System::Classes::TComponent* AOwner) : TRPRender(AOwner) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Word FontDPI = System::Word(0x4e0);
extern DELPHI_PACKAGE System::Classes::TStringList* RenderList;
extern DELPHI_PACKAGE void __fastcall RaveRegisterRender(const System::UnicodeString DisplayName, TRPRender* const RenderObject);
extern DELPHI_PACKAGE void __fastcall RaveUnRegisterRender(const System::UnicodeString DisplayName, TRPRender* const RenderObject);
extern DELPHI_PACKAGE void __fastcall GetRenderList(System::Classes::TStrings* const AList);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetRenderFilter(void);
}	/* namespace Rprender */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDER)
using namespace Rprender;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderHPP
