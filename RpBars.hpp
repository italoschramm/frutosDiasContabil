// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpBars.pas' rev: 29.00 (Windows)

#ifndef RpbarsHPP
#define RpbarsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Vcl.Graphics.hpp>
#include <RpBase.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpbars
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRPBarsBase;
class DELPHICLASS TRPBarsPostNet;
class DELPHICLASS TRPBars2of5;
class DELPHICLASS TRPBarsCode39;
class DELPHICLASS TRPBarsCode128;
class DELPHICLASS TRPBarsUPC;
class DELPHICLASS TRPBarsEAN;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TCodePage128 : unsigned char { cpCodeA, cpCodeB, cpCodeC };

enum DECLSPEC_DENUM TBarCodeRotation : unsigned char { Rot0, Rot90, Rot180, Rot270 };

typedef void __fastcall (__closure *TOverrideBar)(double X1, double Y1, double X2, double Y2);

typedef void __fastcall (__closure *TOverrideText)(System::UnicodeString Text);

class PASCALIMPLEMENTATION TRPBarsBase : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	double FWideFactor;
	double FBarWidth;
	double FBarHeight;
	double FPosition;
	double FTop;
	Rpbase::TBaseReport* FBaseReport;
	System::UnicodeString FText;
	double CurrX;
	double CurrY;
	Vcl::Graphics::TBrush* SaveBrush;
	Vcl::Graphics::TPen* SavePen;
	bool FUseChecksum;
	int FModulas;
	bool FPrintReadable;
	bool FPrintChecksum;
	bool FPrintTop;
	Rpdefine::TPrintJustify FTextJustify;
	Rpdefine::TPrintJustify FBarCodeJustify;
	TBarCodeRotation FBarCodeRotation;
	TOverrideBar FOverrideBar;
	TOverrideText FOverrideText;
	bool FIsOverride;
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual void __fastcall PrintReadableText(void);
	__property int Modulas = {read=FModulas, write=FModulas, nodefault};
	virtual double __fastcall GetWidth(void);
	double __fastcall GetHeight(void);
	double __fastcall GetLeft(void);
	void __fastcall SetLeft(double Value);
	double __fastcall GetBottom(void);
	void __fastcall SetBottom(double Value);
	double __fastcall GetRight(void);
	void __fastcall SetRight(double Value);
	double __fastcall GetCenter(void);
	void __fastcall SetCenter(double Value);
	double __fastcall GetBarTop(void);
	void __fastcall SetBarTop(double Value);
	double __fastcall GetBarBottom(void);
	void __fastcall SetBarBottom(double Value);
	double __fastcall GetReadableHeight(void);
	virtual void __fastcall SetUseChecksum(bool Value);
	void __fastcall SetBarCodeJustify(Rpdefine::TPrintJustify Value);
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar ch) = 0 ;
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top) = 0 ;
	void __fastcall PrintBarPattern(System::UnicodeString BarMask, bool BarFirst, bool AddSpace);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	virtual void __fastcall SetPrintReadable(bool Value);
	void __fastcall DrawRect(double X1, double Y1, double X2, double Y2);
	bool __fastcall IsOverride(bool Refresh);
	void __fastcall SetupCanvas(void);
	void __fastcall RestoreCanvas(void);
	void __fastcall CheckForValidCanvas(void);
	
public:
	__fastcall virtual TRPBarsBase(Rpbase::TBaseReport* BaseRpt);
	virtual void __fastcall Print(void) = 0 ;
	void __fastcall PrintXY(double X, double Y);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	__property Rpbase::TBaseReport* BaseReport = {read=FBaseReport, write=FBaseReport};
	__property Rpdefine::TPrintJustify BarCodeJustify = {read=FBarCodeJustify, write=SetBarCodeJustify, nodefault};
	__property double BarWidth = {read=FBarWidth, write=FBarWidth};
	__property double BarHeight = {read=FBarHeight, write=FBarHeight};
	__property double BarTop = {read=GetBarTop, write=SetBarTop};
	__property double BarBottom = {read=GetBarBottom, write=SetBarBottom};
	__property double Center = {read=GetCenter, write=SetCenter};
	__property System::UnicodeString Checksum = {read=GetChecksum};
	__property double Left = {read=GetLeft, write=SetLeft};
	__property double Height = {read=GetHeight};
	__property double Position = {read=FPosition, write=FPosition};
	__property double Right = {read=GetRight, write=SetRight};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Rpdefine::TPrintJustify TextJustify = {read=FTextJustify, write=FTextJustify, nodefault};
	__property double Top = {read=FTop, write=FTop};
	__property double Bottom = {read=GetBottom, write=SetBottom};
	__property bool UseChecksum = {read=FUseChecksum, write=SetUseChecksum, nodefault};
	__property double WideFactor = {read=FWideFactor, write=FWideFactor};
	__property double Width = {read=GetWidth};
	__property bool PrintReadable = {read=FPrintReadable, write=FPrintReadable, nodefault};
	__property bool PrintChecksum = {read=FPrintChecksum, write=FPrintChecksum, nodefault};
	__property bool PrintTop = {read=FPrintTop, write=FPrintTop, nodefault};
	__property TBarCodeRotation BarCodeRotation = {read=FBarCodeRotation, write=FBarCodeRotation, nodefault};
	__property double ReadableHeight = {read=GetReadableHeight};
	__property TOverrideBar OverrideBar = {read=FOverrideBar, write=FOverrideBar};
	__property TOverrideText OverrideText = {read=FOverrideText, write=FOverrideText};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsBase(void) { }
	
};


class PASCALIMPLEMENTATION TRPBarsPostNet : public TRPBarsBase
{
	typedef TRPBarsBase inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar ch);
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top);
	virtual double __fastcall GetWidth(void);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	virtual void __fastcall SetText(System::UnicodeString Value);
	
public:
	__fastcall virtual TRPBarsPostNet(Rpbase::TBaseReport* BaseRpt);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	virtual void __fastcall Print(void);
	void __fastcall PrintFimA(double x, double y);
	void __fastcall PrintFimB(double x, double y);
	void __fastcall PrintFimC(double x, double y);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsPostNet(void) { }
	
};


class PASCALIMPLEMENTATION TRPBars2of5 : public TRPBarsBase
{
	typedef TRPBarsBase inherited;
	
protected:
	virtual void __fastcall PrintReadableText(void);
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar ch);
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top);
	virtual double __fastcall GetWidth(void);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	
public:
	__fastcall virtual TRPBars2of5(Rpbase::TBaseReport* BaseRpt);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	virtual void __fastcall Print(void);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBars2of5(void) { }
	
};


class PASCALIMPLEMENTATION TRPBarsCode39 : public TRPBarsBase
{
	typedef TRPBarsBase inherited;
	
protected:
	bool FExtended;
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar ch);
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top);
	virtual double __fastcall GetWidth(void);
	System::UnicodeString __fastcall GetExtendedText(void);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	
public:
	__fastcall virtual TRPBarsCode39(Rpbase::TBaseReport* BaseRpt);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	virtual void __fastcall Print(void);
	__property bool Extended = {read=FExtended, write=FExtended, nodefault};
	__property System::UnicodeString ExtendedText = {read=GetExtendedText};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsCode39(void) { }
	
};


class PASCALIMPLEMENTATION TRPBarsCode128 : public TRPBarsBase
{
	typedef TRPBarsBase inherited;
	
protected:
	TCodePage128 FCodePage;
	TCodePage128 FCodePageUsed;
	TCodePage128 FUseCodePage;
	bool FOptimize;
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar Ch);
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top);
	virtual double __fastcall GetWidth(void);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	System::UnicodeString __fastcall CalcOutputStr(System::Byte MaxLen);
	System::UnicodeString __fastcall GetOutputStr(void);
	System::WideChar __fastcall CalcChecksum(System::UnicodeString OutputStr);
	__property TCodePage128 UseCodePage = {read=FUseCodePage, write=FUseCodePage, nodefault};
	
public:
	__fastcall virtual TRPBarsCode128(Rpbase::TBaseReport* BaseRpt);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	virtual void __fastcall Print(void);
	__property TCodePage128 CodePage = {read=FCodePage, write=FCodePage, nodefault};
	__property bool Optimize = {read=FOptimize, write=FOptimize, nodefault};
	__property TCodePage128 CodePageUsed = {read=FCodePageUsed, write=FCodePageUsed, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsCode128(void) { }
	
};


class PASCALIMPLEMENTATION TRPBarsUPC : public TRPBarsBase
{
	typedef TRPBarsBase inherited;
	
protected:
	bool FPrintingGuard;
	int ValidLen;
	virtual System::UnicodeString __fastcall GetBarMask(System::WideChar ch);
	virtual System::UnicodeString __fastcall GetChecksum(void);
	virtual void __fastcall ModifyBar(System::WideChar BarCh, double &Width, double &Height, double &Top);
	virtual double __fastcall GetWidth(void);
	virtual System::UnicodeString __fastcall GetBarcodeText(void);
	virtual void __fastcall PrintReadableText(void);
	virtual double __fastcall GetFontSize(void);
	HIDESBASE double __fastcall GetBottom(void);
	HIDESBASE void __fastcall SetBottom(double Value);
	HIDESBASE double __fastcall GetReadableHeight(void);
	virtual void __fastcall SetUseChecksum(bool Value);
	virtual void __fastcall SetText(System::UnicodeString Value);
	
public:
	__fastcall virtual TRPBarsUPC(Rpbase::TBaseReport* BaseRpt);
	virtual bool __fastcall IsValidChar(System::WideChar Ch);
	virtual void __fastcall Print(void);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsUPC(void) { }
	
};


class PASCALIMPLEMENTATION TRPBarsEAN : public TRPBarsUPC
{
	typedef TRPBarsUPC inherited;
	
protected:
	virtual void __fastcall PrintReadableText(void);
	virtual double __fastcall GetFontSize(void);
	
public:
	__fastcall virtual TRPBarsEAN(Rpbase::TBaseReport* BaseRpt);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBarsEAN(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpbars */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPBARS)
using namespace Rpbars;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpbarsHPP
