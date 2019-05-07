// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderMetafile.pas' rev: 29.00 (Windows)

#ifndef RprendermetafileHPP
#define RprendermetafileHPP

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
#include <RpRender.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprendermetafile
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderMetafile;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderMetafile : public Rprendercanvas::TRvRenderCanvas
{
	typedef Rprendercanvas::TRvRenderCanvas inherited;
	
protected:
	Vcl::Graphics::TMetafile* FMetafile;
	Vcl::Graphics::TMetafileCanvas* FMetafileCanvas;
	int FImageDPI;
	bool FEnhanced;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual System::UnicodeString __fastcall GetFileExtension(void);
	void __fastcall SetEnhanced(bool Value);
	
public:
	__fastcall virtual TRvRenderMetafile(System::Classes::TComponent* AOwner);
	
__published:
	__property int ImageDPI = {read=FImageDPI, write=FImageDPI, nodefault};
	__property bool Enhanced = {read=FEnhanced, write=SetEnhanced, nodefault};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderMetafile(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprendermetafile */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERMETAFILE)
using namespace Rprendermetafile;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprendermetafileHPP
