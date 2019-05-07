// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderJPEG.pas' rev: 29.00 (Windows)

#ifndef RprenderjpegHPP
#define RprenderjpegHPP

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
#include <RpRenderCanvas.hpp>
#include <Vcl.Imaging.jpeg.hpp>
#include <RpRender.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderjpeg
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderJpeg;
//-- type declarations -------------------------------------------------------
typedef System::Int8 TCompressionQualityRange;

class PASCALIMPLEMENTATION TRvRenderJpeg : public Rprendercanvas::TRvRenderCanvas
{
	typedef Rprendercanvas::TRvRenderCanvas inherited;
	
protected:
	Vcl::Graphics::TBitmap* FBitmap;
	Vcl::Imaging::Jpeg::TJPEGImage* FJPEG;
	int FImageDPI;
	TCompressionQualityRange FCompressionQuality;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	
public:
	__fastcall virtual TRvRenderJpeg(System::Classes::TComponent* AOwner);
	
__published:
	__property int ImageDPI = {read=FImageDPI, write=FImageDPI, nodefault};
	__property TCompressionQualityRange CompressionQuality = {read=FCompressionQuality, write=FCompressionQuality, nodefault};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderJpeg(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderjpeg */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERJPEG)
using namespace Rprenderjpeg;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderjpegHPP
