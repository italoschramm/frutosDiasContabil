// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Rpreview.pas' rev: 29.00 (Windows)

#ifndef RpreviewHPP
#define RpreviewHPP

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
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpBase.hpp>
#include <RpCanvas.hpp>
#include <RpFPrint.hpp>
#include <RpDefine.hpp>
#include <RpDevice.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpreview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TFilePreview;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TFilePreview : public Rpfprint::TFilePrinter
{
	typedef Rpfprint::TFilePrinter inherited;
	
protected:
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
	virtual void __fastcall PageChangeEvent(void);
	virtual void __fastcall ZoomChangeEvent(void);
	virtual Rpdefine::TDestination __fastcall Destination(void);
	void __fastcall AbsorbIntProp(System::Classes::TReader* Reader);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	double __fastcall GetZoomFactor(void);
	void __fastcall SetZoomFactor(double Value);
	void __fastcall SetZoomInc(int Value);
	double __fastcall GetZoomPageWidthFactor(void);
	double __fastcall GetZoomPageFactor(void);
	void __fastcall SetMonochrome(bool Value);
	void __fastcall SetShadowDepth(int Value);
	void __fastcall SetGridPen(Vcl::Graphics::TPen* Value);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetScrollBox(Vcl::Forms::TScrollBox* Value);
	
public:
	__fastcall virtual TFilePreview(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TFilePreview(void);
	virtual void __fastcall PrintPage(System::Word PageNum);
	void __fastcall PrevPage(void);
	void __fastcall NextPage(void);
	void __fastcall ZoomIn(void);
	void __fastcall ZoomOut(void);
	void __fastcall RedrawPage(void);
	void __fastcall Clear(void);
	virtual void __fastcall Start(void);
	virtual void __fastcall Finish(void);
	virtual void __fastcall Execute(void);
	__property CurrentPage;
	__property double ZoomPageWidthFactor = {read=GetZoomPageWidthFactor};
	__property double ZoomPageFactor = {read=GetZoomPageFactor};
	__property Vcl::Extctrls::TImage* Image = {read=FImage};
	
__published:
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
}	/* namespace Rpreview */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPREVIEW)
using namespace Rpreview;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpreviewHPP
