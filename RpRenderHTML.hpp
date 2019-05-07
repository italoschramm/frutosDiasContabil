// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderHTML.pas' rev: 29.00 (Windows)

#ifndef RprenderhtmlHPP
#define RprenderhtmlHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Graphics.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpRender.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderhtml
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderHTML;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvRenderHTML : public Rprender::TRPRenderStream
{
	typedef Rprender::TRPRenderStream inherited;
	
protected:
	System::UnicodeString FCacheDir;
	int FGenerator;
	double ffMaxY;
	int FOffsetX;
	int FOffsetY;
	System::UnicodeString FPageURL;
	System::UnicodeString FTemplateHead;
	System::UnicodeString FTemplatePost;
	System::UnicodeString FTemplatePre;
	bool FServerMode;
	bool FUsingInternalStream;
	int FLastFileNameIndex;
	bool FUseBreakingSpaces;
	System::UnicodeString __fastcall ColorToRGBString(System::Uitypes::TColor AColor);
	void __fastcall DoGifDiv(const float AX, const float AY, const float AWidth, const float AHeight, System::Uitypes::TColor AColor);
	System::UnicodeString __fastcall GetFontStyle(Rpdefine::TSaveFont* AFont);
	System::UnicodeString __fastcall GetTemplate(void);
	System::UnicodeString __fastcall HTMLColor(const System::Uitypes::TColor colr);
	System::UnicodeString __fastcall HTMLText(const System::UnicodeString psText);
	int __fastcall InchesToPixels(const double AInches);
	System::UnicodeString __fastcall NewCacheFile(System::UnicodeString AExtension);
	System::UnicodeString __fastcall ProcessParams(const System::UnicodeString AHTML);
	void __fastcall SetDefaultTemplate(void);
	void __fastcall SetTemplate(const System::UnicodeString AValue);
	void __fastcall ToJPEGFile(Vcl::Graphics::TGraphic* AGraphic, const System::UnicodeString AFileName);
	void __fastcall WriteDiv(const System::UnicodeString AText, const double AX1, const double AY1, const double AWidth = 0.000000E+00, const double AHeight = 0.000000E+00, const Rpdefine::TPrintJustify AJustify = (Rpdefine::TPrintJustify)(0x1));
	System::UnicodeString __fastcall ProcessURL(System::UnicodeString AValue);
	System::UnicodeString __fastcall PadIntToStr(int ANumber);
	__property int LastFileNameIndex = {read=FLastFileNameIndex, write=FLastFileNameIndex, nodefault};
	virtual void __fastcall CenterText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall LeftText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall LineTo(const double pfX1, const double pfY1);
	virtual void __fastcall PrintBitmapRect(const double AX1, const double AY1, const double AX2, const double AY2, Vcl::Graphics::TBitmap* AGraphic);
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall PrintSpaces(const System::UnicodeString psText, const double pfX, const double pfY, const double pfWidth);
	virtual void __fastcall PrintRightWidth(double &AX, double &AY, System::UnicodeString AText, double Width);
	virtual void __fastcall Rectangle(const double pfX1, const double pfY1, const double pfX2, const double pfY2);
	virtual void __fastcall FillRect(const System::Types::TRect &pRect);
	virtual void __fastcall RightText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	
public:
	__fastcall virtual TRvRenderHTML(System::Classes::TComponent* AOwner);
	virtual void __fastcall PrintRender(System::Classes::TStream* NDRStream, System::Sysutils::TFileName OutputFileName);
	__classmethod void __fastcall CreateColorGif(System::Classes::TStream* AStream, System::Uitypes::TColor AColor);
	__property System::UnicodeString PageURL = {read=FPageURL, write=FPageURL};
	__property System::UnicodeString Template = {read=GetTemplate, write=SetTemplate};
	
__published:
	__property OnDecodeImage;
	__property System::UnicodeString CacheDir = {read=FCacheDir, write=FCacheDir};
	__property bool ServerMode = {read=FServerMode, write=FServerMode, nodefault};
	__property bool UseBreakingSpaces = {read=FUseBreakingSpaces, write=FUseBreakingSpaces, nodefault};
public:
	/* TRPRenderStream.Destroy */ inline __fastcall virtual ~TRvRenderHTML(void) { }
	
};


typedef TRvRenderHTML TRpRenderHTML;

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderhtml */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERHTML)
using namespace Rprenderhtml;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderhtmlHPP
