// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpCanvas.pas' rev: 29.00 (Windows)

#ifndef RpcanvasHPP
#define RpcanvasHPP

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
#include <RpRPTF.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpcanvas
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCanvasReport;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TCanvasReport : public Rpbase::TBaseReport
{
	typedef Rpbase::TBaseReport inherited;
	
protected:
	void __fastcall PrintAlign(System::UnicodeString Text, double Pos, int Flags);
	void __fastcall PrintRightWidth(System::UnicodeString Text, double Width);
	virtual void __fastcall PrintCenterInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintLeftInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintRightInch(System::UnicodeString Text, double Pos);
	virtual void __fastcall PrintBlockInch(System::UnicodeString Text, double Pos, double Width);
	
public:
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
	virtual void __fastcall NewPage(void);
public:
	/* TBaseReport.Create */ inline __fastcall virtual TCanvasReport(System::Classes::TComponent* AOwner) : Rpbase::TBaseReport(AOwner) { }
	/* TBaseReport.Destroy */ inline __fastcall virtual ~TCanvasReport(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpcanvas */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPCANVAS)
using namespace Rpcanvas;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpcanvasHPP
