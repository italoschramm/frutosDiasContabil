// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderCanvas.pas' rev: 29.00 (Windows)

#ifndef RprendercanvasHPP
#define RprendercanvasHPP

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
#include <RpRender.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprendercanvas
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderCanvas;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderCanvas : public Rprender::TRPRenderStream
{
	typedef Rprender::TRPRenderStream inherited;
	
protected:
	HFONT CurrFont;
	virtual void __fastcall SetBKColor(System::Uitypes::TColor Value);
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void) = 0 ;
	void __fastcall PrintAlign(System::UnicodeString Text, double X1, double Y1, int Flags);
	virtual void __fastcall PrintRightWidth(double &X1, double &Y1, System::UnicodeString Text, double Width);
	virtual double __fastcall CanvasTextWidth(const System::UnicodeString Text);
	virtual void __fastcall FrameRect(const System::Types::TRect &Rect);
	virtual void __fastcall FloodFill(double X, double Y, System::Uitypes::TColor Color, Vcl::Graphics::TFillStyle FillStyle);
	HFONT __fastcall CreateFont(void);
	virtual void __fastcall Arc(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall BrushChanged(System::TObject* Sender);
	virtual void __fastcall Chord(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall CenterText(const System::UnicodeString Text, const double X1, const double Y1);
	virtual void __fastcall Ellipse(const double X1, const double Y1, const double X2, const double Y2);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall LeftText(const System::UnicodeString Text, const double X1, const double Y1);
	virtual void __fastcall LineTo(const double X1, const double Y1);
	virtual void __fastcall MoveTo(const double X1, const double Y1);
	virtual void __fastcall Pie(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3, const double X4, const double Y4);
	virtual void __fastcall PolyLine(Rprender::TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	virtual void __fastcall Polygon(Rprender::TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	virtual void __fastcall RightText(const System::UnicodeString Text, const double X1, const double Y1);
	virtual void __fastcall PenChanged(System::TObject* Sender);
	virtual void __fastcall PrintBitmapRect(const double X1, const double Y1, const double X2, const double Y2, Vcl::Graphics::TBitmap* Graphic);
	virtual void __fastcall PrintBitmap(const double X1, const double Y1, const double ScaleX, const double ScaleY, Vcl::Graphics::TBitmap* Graphic);
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall Draw(const double X1, const double Y1, Vcl::Graphics::TGraphic* Graphic);
	virtual void __fastcall PrintSpaces(const System::UnicodeString Text, const double X1, const double Y1, const double AWidth);
	virtual void __fastcall Rectangle(const double X1, const double Y1, const double X2, const double Y2);
	virtual void __fastcall FillRect(const System::Types::TRect &Rect);
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X1, double Y1, System::UnicodeString S1);
	virtual void __fastcall RoundRect(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3);
	virtual void __fastcall BrushCopy(const System::Types::TRect &Dest, Vcl::Graphics::TBitmap* Bitmap, const System::Types::TRect &Source, System::Uitypes::TColor Color);
	virtual void __fastcall CopyRect(const System::Types::TRect &Dest, Vcl::Graphics::TCanvas* Canvas, const System::Types::TRect &Source);
	virtual void __fastcall DrawFocusRect(const System::Types::TRect &Rect);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	
public:
	__fastcall virtual TRvRenderCanvas(System::Classes::TComponent* AOwner);
	__property Vcl::Graphics::TCanvas* Canvas = {read=GetCanvas};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderCanvas(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprendercanvas */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERCANVAS)
using namespace Rprendercanvas;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprendercanvasHPP
