// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderPrinter.pas' rev: 29.00 (Windows)

#ifndef RprenderprinterHPP
#define RprenderprinterHPP

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
#include <RpRenderCanvas.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderprinter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderPrinter;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderPrinter : public Rprendercanvas::TRvRenderCanvas
{
	typedef Rprendercanvas::TRvRenderCanvas inherited;
	
protected:
	int FCopies;
	bool FCollate;
	Rpdefine::TDuplex FDuplex;
	bool FIgnoreFileSettings;
	int FPages;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	int __fastcall GetPages(void);
	int __fastcall GetMaxCopies(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual void __fastcall SelectBin(System::UnicodeString ABin)/* overload */;
	virtual void __fastcall SelectBin(int ABin)/* overload */;
	virtual void __fastcall PrintData(System::UnicodeString Value);
	virtual void __fastcall PrintDataStream(System::Classes::TStream* Stream, int BufSize);
	
public:
	__fastcall virtual TRvRenderPrinter(System::Classes::TComponent* AOwner);
	__property int Pages = {read=GetPages, write=FPages, nodefault};
	__property int Copies = {read=FCopies, write=FCopies, nodefault};
	__property bool Collate = {read=FCollate, write=FCollate, nodefault};
	__property Rpdefine::TDuplex Duplex = {read=FDuplex, write=FDuplex, nodefault};
	__property bool IgnoreFileSettings = {read=FIgnoreFileSettings, write=FIgnoreFileSettings, nodefault};
	__property int MaxCopies = {read=GetMaxCopies, nodefault};
	virtual int __fastcall XI2D(double Pos);
	virtual int __fastcall YI2D(double Pos);
	
__published:
	__property Active = {default=0};
	__property OutputFileName = {default=0};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderPrinter(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderprinter */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERPRINTER)
using namespace Rprenderprinter;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderprinterHPP
