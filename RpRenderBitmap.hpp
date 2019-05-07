// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderBitmap.pas' rev: 29.00 (Windows)

#ifndef RprenderbitmapHPP
#define RprenderbitmapHPP

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
#include <RpRenderCanvas.hpp>
#include <RpDefine.hpp>
#include <RpRender.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderbitmap
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderBitmap;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderBitmap : public Rprendercanvas::TRvRenderCanvas
{
	typedef Rprendercanvas::TRvRenderCanvas inherited;
	
protected:
	Vcl::Graphics::TBitmap* FBitmap;
	int FImageDPI;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	
public:
	__fastcall virtual TRvRenderBitmap(System::Classes::TComponent* AOwner);
	
__published:
	__property int ImageDPI = {read=FImageDPI, write=FImageDPI, nodefault};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderBitmap(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderbitmap */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERBITMAP)
using namespace Rprenderbitmap;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderbitmapHPP
