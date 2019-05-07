// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRTFilr.pas' rev: 29.00 (Windows)

#ifndef RprtfilrHPP
#define RprtfilrHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.Classes.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpDevice.hpp>
#include <RpRPTF.hpp>
#include <System.AnsiStrings.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprtfilr
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRTFFiler;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRTFFiler : public Rpbase::TBaseReport
{
	typedef Rpbase::TBaseReport inherited;
	
protected:
	System::Classes::TStream* FStream;
	Rpdefine::TStreamMode FStreamMode;
	bool UseFinal;
	int WorkFile;
	System::UnicodeString WorkFileName;
	System::Classes::TStream* FinalStream;
	bool OnNewPara;
	bool OnNewDoc;
	System::Sysutils::TFileName FOutputFileName;
	System::Classes::TStringList* FontTable;
	double LastGraphicX;
	double LastGraphicY;
	void __fastcall PrintText(System::UnicodeString Text);
	virtual void __fastcall PrintCenterInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintLeftInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintRightInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintBlockInch(System::UnicodeString Text, double Pos, double Width);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	void __fastcall WriteStr(System::UnicodeString Value);
	void __fastcall WriteLine(System::UnicodeString Value);
	void __fastcall WriteXTwips(System::UnicodeString Command, double Value);
	void __fastcall WriteYTwips(System::UnicodeString Command, double Value);
	void __fastcall WritePara(Rpdefine::TTabJustify Justify);
	int __fastcall GetFontIndex(void);
	void __fastcall WriteFont(void);
	void __fastcall WriteBinary(void *Buffer, int Size);
	void __fastcall WriteText(System::UnicodeString Text);
	void __fastcall WriteGraphicPen(void);
	void __fastcall WriteGraphicBrush(void);
	void __fastcall WriteGraphicRect(double X1, double Y1, double X2, double Y2);
	void __fastcall WriteGraphicHeader(void);
	
public:
	__property System::Classes::TStream* Stream = {read=FStream, write=FStream};
	__fastcall virtual TRTFFiler(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRTFFiler(void);
	virtual void __fastcall Start(void);
	virtual void __fastcall Finish(void);
	virtual void __fastcall NewPara(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall PrintMemo(Rpbase::TBaseMemoBuf* MemoBuf, int Lines, bool PrintTabs);
	virtual void __fastcall Tab(int LeftWidth, int RightWidth, int TopWidth, int BottomWidth, int ShadeOverride);
	virtual void __fastcall TabRectangle(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall Ellipse(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall LineTo(double X, double Y);
	virtual void __fastcall MoveTo(double X, double Y);
	virtual void __fastcall Rectangle(double X1, double Y1, double X2, double Y2);
	virtual void __fastcall RoundRect(double X1, double Y1, double X2, double Y2, double X3, double Y3);
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X, double Y, const System::UnicodeString Text);
	virtual void __fastcall PrintData(System::UnicodeString Value);
	virtual void __fastcall BrushCopy _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TBitmap* Bitmap, const System::Types::TRect &Source, System::Uitypes::TColor Color);
	virtual void __fastcall FloodFill _DEPRECATED_ATTRIBUTE0 (double X, double Y, System::Uitypes::TColor Color, Vcl::Graphics::TFillStyle FillStyle);
	virtual void __fastcall FrameRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall CopyRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Dest, Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Source);
	virtual void __fastcall DrawFocusRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall FillRect _DEPRECATED_ATTRIBUTE0 (const System::Types::TRect &Rect);
	virtual void __fastcall Arc(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Chord(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Draw(double X, double Y, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall Pie(double X1, double Y1, double X2, double Y2, double X3, double Y3, double X4, double Y4);
	virtual void __fastcall Polygon(System::Types::TPoint const *Points, const int Points_High);
	virtual void __fastcall Polyline(System::Types::TPoint const *Points, const int Points_High);
	virtual void __fastcall PrintBitmap(double X, double Y, double ScaleX, double ScaleY, Vcl::Graphics::TBitmap* Bitmap);
	virtual void __fastcall PrintBitmapRect(double X1, double Y1, double X2, double Y2, Vcl::Graphics::TBitmap* Bitmap);
	virtual void __fastcall PrintImageRect(double X1, double Y1, double X2, double Y2, System::Classes::TStream* ImageStream, System::UnicodeString ImageType);
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall PrintDataStream(System::Classes::TStream* Stream, int BufSize);
	
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
	__property Orientation;
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


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprtfilr */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRTFILR)
using namespace Rprtfilr;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprtfilrHPP
