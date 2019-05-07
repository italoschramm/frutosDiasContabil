// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderPreview.pas' rev: 29.00 (Windows)

#ifndef RprenderpreviewHPP
#define RprenderpreviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpRender.hpp>
#include <RpRenderCanvas.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderpreview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderPreview;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderPreview : public Rprendercanvas::TRvRenderCanvas
{
	typedef Rprendercanvas::TRvRenderCanvas inherited;
	
protected:
	int FSaveHorzPos;
	int FSaveVertPos;
	System::Uitypes::TCursor FSaveCursor;
	Vcl::Forms::TScrollBox* FScrollBox;
	Vcl::Extctrls::TImage* FImage;
	Vcl::Graphics::TBitmap* FBitmap;
	int FZoomInc;
	bool FMonochrome;
	Rpdefine::TMarginMethod FMarginMethod;
	double FMarginPercent;
	int FScrollBarWidth;
	int FScrollBarHeight;
	int FHorzAdj;
	int FVertAdj;
	Vcl::Graphics::TPen* FGridPen;
	double FGridHoriz;
	double FGridVert;
	int FShadowDepth;
	Rpdefine::TRulerType FRulerType;
	int RulerWidth;
	int RulerHeight;
	int FPageInc;
	System::Classes::TNotifyEvent FOnPageChange;
	System::Classes::TNotifyEvent FOnZoomChange;
	int FCurrentPage;
	int FPages;
	double FZoom;
	int AddX;
	int AddY;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	double __fastcall GetZoomFactor(void);
	void __fastcall SetGridPen(Vcl::Graphics::TPen* const Value);
	void __fastcall SetMonochrome(const bool Value);
	void __fastcall SetScrollBox(Vcl::Forms::TScrollBox* const Value);
	void __fastcall SetShadowDepth(const int Value);
	void __fastcall SetZoomFactor(const double Value);
	void __fastcall SetZoomInc(const int Value);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall PageChangeEvent(void);
	virtual void __fastcall ZoomChangeEvent(void);
	double __fastcall GetZoomPageFactor(void);
	double __fastcall GetZoomPageWidthFactor(void);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	int __fastcall GetPages(void);
	virtual double __fastcall CanvasTextWidth(const System::UnicodeString AText);
	virtual void __fastcall PrintBitmapRect(const double X1, const double Y1, const double X2, const double Y2, Vcl::Graphics::TBitmap* Graphic);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	
public:
	__fastcall virtual TRvRenderPreview(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvRenderPreview(void);
	void __fastcall ZoomIn(void);
	void __fastcall ZoomOut(void);
	void __fastcall Clear(void);
	void __fastcall RedrawPage(void);
	void __fastcall PrevPage(void);
	void __fastcall NextPage(void);
	virtual void __fastcall RenderPage(int PageNum);
	virtual int __fastcall XI2D(double Pos);
	virtual int __fastcall YI2D(double Pos);
	__property double ZoomPageWidthFactor = {read=GetZoomPageWidthFactor};
	__property double ZoomPageFactor = {read=GetZoomPageFactor};
	__property Vcl::Extctrls::TImage* Image = {read=FImage};
	__property int CurrentPage = {read=FCurrentPage, write=FCurrentPage, nodefault};
	__property int Pages = {read=GetPages, write=FPages, nodefault};
	
__published:
	__property Active = {default=0};
	__property Vcl::Forms::TScrollBox* ScrollBox = {read=FScrollBox, write=SetScrollBox};
	__property int ZoomInc = {read=FZoomInc, write=SetZoomInc, default=10};
	__property double ZoomFactor = {read=GetZoomFactor, write=SetZoomFactor};
	__property bool Monochrome = {read=FMonochrome, write=SetMonochrome, default=0};
	__property Rpdefine::TMarginMethod MarginMethod = {read=FMarginMethod, write=FMarginMethod, default=1};
	__property double MarginPercent = {read=FMarginPercent, write=FMarginPercent};
	__property Rpdefine::TRulerType RulerType = {read=FRulerType, write=FRulerType, default=0};
	__property Vcl::Graphics::TPen* GridPen = {read=FGridPen, write=SetGridPen};
	__property double GridHoriz = {read=FGridHoriz, write=FGridHoriz};
	__property double GridVert = {read=FGridVert, write=FGridVert};
	__property int ShadowDepth = {read=FShadowDepth, write=SetShadowDepth, nodefault};
	__property int PageInc = {read=FPageInc, write=FPageInc, default=1};
	__property System::Classes::TNotifyEvent OnZoomChange = {read=FOnZoomChange, write=FOnZoomChange};
	__property System::Classes::TNotifyEvent OnPageChange = {read=FOnPageChange, write=FOnPageChange};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderpreview */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERPREVIEW)
using namespace Rprenderpreview;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderpreviewHPP
