// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFont.pas' rev: 29.00 (Windows)

#ifndef RpfontHPP
#define RpfontHPP

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
#include <RpDefine.hpp>
#include <System.SyncObjs.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpfont
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRPBaseFontHandler;
class DELPHICLASS TRPTrueTypeFontHandler;
class DELPHICLASS TRPNonProportionalFontHandler;
class DELPHICLASS TRPFontManager;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPBaseFontHandler : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__fastcall virtual TRPBaseFontHandler(Vcl::Graphics::TFont* Font);
	virtual int __fastcall TextWidth(System::UnicodeString Value, double FontSize, int DPI) = 0 ;
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBaseFontHandler(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPTrueTypeFontHandler : public TRPBaseFontHandler
{
	typedef TRPBaseFontHandler inherited;
	
protected:
	System::StaticArray<int, 256> FFontTable;
	
public:
	__fastcall virtual TRPTrueTypeFontHandler(Vcl::Graphics::TFont* Font);
	virtual int __fastcall TextWidth(System::UnicodeString Value, double FontSize, int DPI);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPTrueTypeFontHandler(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPNonProportionalFontHandler : public TRPBaseFontHandler
{
	typedef TRPBaseFontHandler inherited;
	
protected:
	int FFontWidth;
	
public:
	__fastcall virtual TRPNonProportionalFontHandler(Vcl::Graphics::TFont* Font);
	virtual int __fastcall TextWidth(System::UnicodeString Value, double FontSize, int DPI);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPNonProportionalFontHandler(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPFontManager : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Classes::TStringList* FFontList;
	int FDPI;
	System::UnicodeString __fastcall FontNameOf(Vcl::Graphics::TFont* Font);
	TRPBaseFontHandler* __fastcall GetFontHandler(Vcl::Graphics::TFont* Font);
	
public:
	__fastcall virtual TRPFontManager(void);
	__fastcall virtual ~TRPFontManager(void);
	int __fastcall TextWidth(Vcl::Graphics::TFont* Font, System::UnicodeString Value);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const System::Word BaseSize = System::Word(0x258);
extern DELPHI_PACKAGE TRPFontManager* FontManager;
}	/* namespace Rpfont */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFONT)
using namespace Rpfont;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpfontHPP
