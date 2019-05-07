// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderRTF.pas' rev: 29.00 (Windows)

#ifndef RprenderrtfHPP
#define RprenderrtfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Imaging.jpeg.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpRender.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderrtf
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvRenderRTF;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TImageOutput : unsigned char { ioHigherQuality, ioSmallerSize };

enum DECLSPEC_DENUM TImageEncoding : unsigned char { ieBinary, ieHex };

class PASCALIMPLEMENTATION TRvRenderRTF : public Rprender::TRPRenderStream
{
	typedef Rprender::TRPRenderStream inherited;
	
protected:
	System::Classes::TStringList* FontTable;
	System::Classes::TStringList* ColorTable;
	bool UseFinal;
	System::Classes::TMemoryStream* WorkFile;
	System::UnicodeString WorkFileName;
	double LastGraphicX;
	double LastGraphicY;
	TImageOutput FImageOutput;
	TImageEncoding FImageEncoding;
	bool __fastcall IsCJKFont(void);
	void __fastcall WriteFont(void);
	void __fastcall WriteColor(void);
	void __fastcall WriteStr(System::UnicodeString Value);
	int __fastcall GetFontIndex(void);
	System::UnicodeString __fastcall GetRTFColor(const System::Uitypes::TColor AColor);
	int __fastcall GetColorIndex(const System::Uitypes::TColor AColor);
	bool __fastcall ContainsWideChars(System::UnicodeString AText);
	void __fastcall WriteText(System::UnicodeString Text);
	void __fastcall WriteLine(System::UnicodeString Value);
	void __fastcall WriteGraphicHeader(void);
	void __fastcall WriteGraphicRect(double X1, double Y1, double X2, double Y2);
	void __fastcall WriteXTwips(System::UnicodeString Command, double Value);
	void __fastcall WriteYTwips(System::UnicodeString Command, double Value);
	void __fastcall WriteGraphicPen(void);
	void __fastcall WriteGraphicBrush(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	virtual void __fastcall LeftText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall CenterText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall RightText(const System::UnicodeString AText, const double X1, const double Y1);
	virtual void __fastcall PrintSpaces(const System::UnicodeString AText, const double AX, const double AY, const double AWidth);
	virtual void __fastcall PrintRightWidth(double &AX, double &AY, System::UnicodeString AText, double Width);
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X1, double Y1, System::UnicodeString AText);
	virtual void __fastcall Rectangle(const double X1, const double Y1, const double X2, const double Y2);
	virtual void __fastcall RoundRect(const double X1, const double Y1, const double X2, const double Y2, const double X3, const double Y3);
	virtual void __fastcall MoveTo(const double X1, const double Y1);
	virtual void __fastcall LineTo(const double X1, const double Y1);
	virtual void __fastcall Ellipse(const double X1, const double Y1, const double X2, const double Y2);
	void __fastcall WriteImageHeader(void);
	void __fastcall WriteImageFooter(void);
	virtual void __fastcall PrintBitmapRect(const double X1, const double Y1, const double X2, const double Y2, Vcl::Graphics::TBitmap* AGraphic);
	void __fastcall WritePictType(void);
	void __fastcall WritePictSize(Vcl::Graphics::TMetafile* Metafile);
	void __fastcall WritePictData(double AWidth, double AHeight, Vcl::Graphics::TGraphic* AGraphic);
	void __fastcall MetafileToHex(Vcl::Graphics::TMetafile* AMetafile);
	void __fastcall MetafileToBin(Vcl::Graphics::TMetafile* AMetafile);
	virtual void __fastcall StretchDraw(const System::Types::TRect &ARect, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	
public:
	__fastcall virtual TRvRenderRTF(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvRenderRTF(void);
	virtual void __fastcall PrintRender(System::Classes::TStream* NDRStream, System::Sysutils::TFileName OutputFileName);
	
__published:
	__property OnDecodeImage;
	__property TImageOutput ImageOutput = {read=FImageOutput, write=FImageOutput, default=0};
	__property TImageEncoding ImageEncoding = {read=FImageEncoding, write=FImageEncoding, default=1};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprenderrtf */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERRTF)
using namespace Rprenderrtf;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderrtfHPP
