// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFiler.pas' rev: 29.00 (Windows)

#ifndef RpfilerHPP
#define RpfilerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpDevice.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpfiler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvNDRWriter;
class DELPHICLASS TReportRender;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<System::Byte, 16384> TOutBuf;

typedef TOutBuf *POutBuf;

class PASCALIMPLEMENTATION TRvNDRWriter : public Rpbase::TBaseReport
{
	typedef Rpbase::TBaseReport inherited;
	
protected:
	Rpdefine::TSaveBrush SaveBrush;
	Rpdefine::TSaveFont* SaveFont;
	Rpdefine::TSavePen SavePen;
	bool WriteAll;
	TOutBuf *OutBuf;
	int OutPos;
	System::Byte AllowMode;
	System::Classes::TNotifyEvent BrushSaveOnChange;
	System::Classes::TNotifyEvent PenSaveOnChange;
	System::StaticArray<int, 10> GraphicPos;
	int LastGraphicPos;
	int ReuseGraphicPos;
	System::Classes::TStream* OutputStream;
	System::Classes::TStream* FStream;
	System::Sysutils::TFileName FOutputFileName;
	Rpdefine::TStreamMode FStreamMode;
	Rpdefine::TAccuracyMethod FAccuracyMethod;
	bool FHoldOutput;
	int PrevPagePos;
	int NextPagePos;
	int SaveJobPos;
	int AbsolutePage;
	System::Classes::TStringList* VarList;
	bool LocalDeviceOwned;
	System::Classes::TNotifyEvent FOnRenderPage;
	System::Classes::TNotifyEvent FOnRenderData;
	int __fastcall FindVarName(System::UnicodeString VarName);
	void __fastcall CreateVarBuf(System::UnicodeString VarName, System::UnicodeString VarData, bool Defined, int PrevPos);
	void __fastcall WriteJobHeader(void);
	void __fastcall FinishJob(void);
	void __fastcall WritePageHeader(void);
	void __fastcall FinishPage(bool LastPage);
	void __fastcall BrushOnChange(System::TObject* Sender);
	virtual void __fastcall FontOnChange(System::TObject* Sender);
	virtual void __fastcall WriteHyperlink(void);
	void __fastcall PenOnChange(System::TObject* Sender);
	void __fastcall WriteByte(System::Byte Value);
	void __fastcall WriteInteger(short Value);
	void __fastcall WriteLongint(int Value);
	void __fastcall WriteText(System::UnicodeString Value);
	void __fastcall WriteFloat(double Value);
	void __fastcall WriteXY(double X, double Y);
	void __fastcall WriteGraphic(Vcl::Graphics::TGraphic* Value);
	void __fastcall WritePoint(const System::Types::TPoint &Value);
	void __fastcall WriteRect(const System::Types::TRect &Value);
	void __fastcall Flush(void);
	void __fastcall WriteBuf(void *Buf, int Len);
	void __fastcall WriteBrush(void);
	void __fastcall WriteFont(void);
	void __fastcall WritePen(void);
	virtual void __fastcall SetBKColor(System::Uitypes::TColor Value);
	virtual void __fastcall SetScaleX(double Value);
	virtual void __fastcall SetScaleY(double Value);
	virtual void __fastcall SetTextBKMode(Rpdefine::TBKMode Value);
	virtual void __fastcall SetOrientation(Rpdefine::TOrientation Value);
	virtual void __fastcall SetFrameMode(Rpdefine::TFrameMode Value);
	virtual void __fastcall PrintCenterInch(System::UnicodeString Text, double xPos);
	virtual void __fastcall PrintLeftInch(System::UnicodeString Text, double xPos);
	virtual void __fastcall PrintRightInch(System::UnicodeString Text, double xPos);
	virtual void __fastcall PrintBlockInch(System::UnicodeString Text, double xPos, double Width);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	
public:
	__fastcall virtual TRvNDRWriter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvNDRWriter(void);
	virtual void __fastcall Start(void);
	virtual void __fastcall Finish(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall AbortPage(void);
	virtual void __fastcall ResetLineHeight(void);
	virtual bool __fastcall SelectBin(System::UnicodeString BinName);
	virtual void __fastcall BrushCopy _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TBitmap* Bitmap, const System::Types::TRect &Source, System::Uitypes::TColor Color);
	virtual void __fastcall FloodFill _DEPRECATED_ATTRIBUTE0 (double X, double Y, System::Uitypes::TColor Color, Vcl::Graphics::TFillStyle FillStyle);
	virtual void __fastcall FrameRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall CopyRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Source);
	virtual void __fastcall DrawFocusRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall FillRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall Arc(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Chord(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Draw(double X, double Y, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall Ellipse(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall LineTo(double X, double Y);
	virtual void __fastcall MoveTo(double X, double Y);
	virtual void __fastcall Pie(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Polygon(System::Types::TPoint const *Points, const int Points_High);
	virtual void __fastcall Polyline(System::Types::TPoint const *Points, const int Points_High);
	virtual void __fastcall PrintBitmap(double X, double Y, double ScaleX, double ScaleY, Vcl::Graphics::TBitmap* Bitmap);
	virtual void __fastcall PrintBitmapRect(double X1, double Y1, double X2, double Y2, Vcl::Graphics::TBitmap* Bitmap);
	virtual void __fastcall PrintImageRect(double X1, double Y1, double X2, double Y2, System::Classes::TStream* ImageStream, System::UnicodeString ImageType);
	virtual void __fastcall Rectangle(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall RoundRect(double X1, double Y1, double X2, double Y2, double X3, double Y3);
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall TabRectangle(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X, double Y, const System::UnicodeString Text);
	virtual void __fastcall PrintData(System::UnicodeString Value);
	virtual void __fastcall PrintDataStream(System::Classes::TStream* Stream, int BufSize);
	virtual void __fastcall AllowPreviewOnly(void);
	virtual void __fastcall AllowPrinterOnly(void);
	virtual void __fastcall AllowAll(void);
	virtual void __fastcall UnregisterGraphic(int Index);
	virtual void __fastcall RegisterGraphic(int Index);
	virtual void __fastcall ReuseGraphic(int Index);
	virtual System::UnicodeString __fastcall PIVar(System::UnicodeString VarName);
	virtual void __fastcall SetPIVar(System::UnicodeString VarName, System::UnicodeString VarValue);
	__property System::Classes::TStream* Stream = {read=FStream, write=FStream};
	__property bool HoldOutput = {read=FHoldOutput, write=FHoldOutput, nodefault};
	__property int JobPages = {read=FJobPages, write=FJobPages, nodefault};
	__property System::Classes::TNotifyEvent OnRenderPage = {read=FOnRenderPage, write=FOnRenderPage};
	__property System::Classes::TNotifyEvent OnRenderData = {read=FOnRenderData, write=FOnRenderData};
	
__published:
	__property FirstPage = {default=1};
	__property LastPage = {default=9999};
	__property StatusLabel;
	__property StatusFormat = {default=0};
	__property StatusText;
	__property LineHeightMethod = {default=1};
	__property LinesPerInch = {default=6};
	__property Units = {default=0};
	__property UnitsFactor = {default=0};
	__property MarginLeft = {default=0};
	__property MarginRight = {default=0};
	__property MarginTop = {default=0};
	__property MarginBottom = {default=0};
	__property TabShade = {default=0};
	__property Title = {default=0};
	__property Copies = {default=1};
	__property Orientation;
	__property TextBKMode = {default=0};
	__property ScaleX = {default=0};
	__property ScaleY = {default=0};
	__property Rpdefine::TAccuracyMethod AccuracyMethod = {read=FAccuracyMethod, write=FAccuracyMethod, default=1};
	__property System::Sysutils::TFileName FileName = {read=FOutputFileName, write=FOutputFileName};
	__property Rpdefine::TStreamMode StreamMode = {read=FStreamMode, write=FStreamMode, default=0};
	__property OnPrint;
	__property OnPrintPage;
	__property OnBeforePrint;
	__property OnAfterPrint;
	__property OnNewPage;
	__property OnNewColumn;
	__property OnPrintHeader;
	__property OnPrintFooter;
	__property OnEndOfSection;
};


typedef TRvNDRWriter TReportFiler;

class PASCALIMPLEMENTATION TReportRender : public TRvNDRWriter
{
	typedef TRvNDRWriter inherited;
	
public:
	__fastcall virtual TReportRender(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TReportRender(void);
};


//-- var, const, procedure ---------------------------------------------------
static const System::Word OUTBUFSIZE = System::Word(0x4000);
static const System::Int8 MAXGRAPHICINDEX = System::Int8(0xa);
}	/* namespace Rpfiler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFILER)
using namespace Rpfiler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpfilerHPP
