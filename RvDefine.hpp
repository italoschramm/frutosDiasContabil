// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDefine.pas' rev: 29.00 (Windows)

#ifndef RvdefineHPP
#define RvdefineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Graphics.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpBase.hpp>
#include <RpDefine.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdefine
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS ERaveClass;
class DELPHICLASS ERaveException;
struct TRavePoint;
struct TRaveRect;
struct TRaveBinName;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION ERaveClass : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall ERaveClass(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ERaveClass(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ERaveClass(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ERaveClass(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveClass(NativeUInt Ident, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveClass(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ERaveClass(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ERaveClass(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveClass(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveClass(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveClass(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveClass(NativeUInt Ident, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ERaveClass(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION ERaveException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall ERaveException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ERaveException(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ERaveException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ERaveException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveException(NativeUInt Ident, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveException(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ERaveException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ERaveException(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveException(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveException(NativeUInt Ident, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ERaveException(void) { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TUserLevel : unsigned char { ulBeginner, ulIntermediate, ulAdvanced };

enum DECLSPEC_DENUM TLineWidthType : unsigned char { wtPoints, wtPixels };

enum DECLSPEC_DENUM TFontAttribute : unsigned char { faAll, faName, faSize, faBold, faItalic, faUnderline };

enum DECLSPEC_DENUM TDisplayOn : unsigned char { doParent, doAll, doPreviewOnly, doPrinterOnly };

enum DECLSPEC_DENUM TGotoMode : unsigned char { gmGotoDone, gmGotoNotDone, gmCallEach };

typedef System::Byte TRaveAnchor;

enum DECLSPEC_DENUM TRaveVAnchor : unsigned char { anvTop, anvBottom, anvCenter, anvStretch, anvResize, anvSpread };

enum DECLSPEC_DENUM TRaveHAnchor : unsigned char { anhLeft, anhRight, anhCenter, anhStretch, anhResize, anhSpread };

enum DECLSPEC_DENUM TRaveFillStyle : unsigned char { fsSolid, fsClear, fsHorizontal, fsVertical, fsFDiagonal, fsBDiagonal, fsCross, fsDiagCross, fsNone };

enum DECLSPEC_DENUM TRaveCalcType : unsigned char { ctCount, ctSum, ctMin, ctMax, ctAverage };

typedef double TRaveFloat;

typedef double TRaveUnits;

typedef System::UnicodeString TRaveFieldName;

typedef System::UnicodeString TRaveMemoString;

typedef TRavePoint *PRavePoint;

struct DECLSPEC_DRECORD TRavePoint
{
public:
	TRaveUnits X;
	TRaveUnits Y;
};


typedef TRaveRect *PRaveRect;

struct DECLSPEC_DRECORD TRaveRect
{
	union
	{
		struct 
		{
			TRavePoint TopLeft;
			TRavePoint BottomRight;
		};
		struct 
		{
			TRaveUnits Left;
			TRaveUnits Top;
			TRaveUnits Right;
			TRaveUnits Bottom;
		};
		
	};
};


typedef int TRaveBin;

struct DECLSPEC_DRECORD TRaveBinName
{
public:
	System::UnicodeString Name;
	TRaveBin RaveBin;
};


enum DECLSPEC_DENUM TRavePrinterDuplex : unsigned char { pdSimplex, pdHorizontal, pdVertical, pdDefault };

enum DECLSPEC_DENUM TRavePrinterCollate : unsigned char { pcFalse, pcTrue, pcDefault };

enum DECLSPEC_DENUM TRavePrinterResolution : unsigned char { prDraft, prLow, prMedium, prHigh, prDefault };

typedef void __stdcall (*TRaveSaveCallbackProc)(void * Buf, int Size, void * Data);

typedef System::StaticArray<TRaveBinName, 14> Rvdefine__3;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool InDesigner;
static const int RaveVersion = int(0x1adb0);
#define RegRoot L"\\Software\\Nevrona Designs\\Rave110\\"
static const System::Word RaveMajorVersion = System::Word(0x302);
static const System::Int8 RaveMinorVersion = System::Int8(0x2);
extern DELPHI_PACKAGE double RaveDelta;
#define HexDigits L"0123456789ABCDEF"
static const System::Word UnicodeMarker = System::Word(0x3fed);
static const System::Int8 SourceSheet = System::Int8(0x1);
static const System::Int8 DesignerSheet = System::Int8(0x2);
static const System::Int8 BandedSheet = System::Int8(0x3);
static const System::Int8 WizardSheet = System::Int8(0x4);
static const System::Int8 RaveAlignLeft = System::Int8(0x1);
static const System::Int8 RaveAlignHCenter = System::Int8(0x2);
static const System::Int8 RaveAlignRight = System::Int8(0x3);
static const System::Int8 RaveAlignHCenterInParent = System::Int8(0x4);
static const System::Int8 RaveAlignHSpace = System::Int8(0x5);
static const System::Int8 RaveAlignEquateWidths = System::Int8(0x6);
static const System::Int8 RaveAlignTop = System::Int8(0x7);
static const System::Int8 RaveAlignVCenter = System::Int8(0x8);
static const System::Int8 RaveAlignBottom = System::Int8(0x9);
static const System::Int8 RaveAlignVCenterInParent = System::Int8(0xa);
static const System::Int8 RaveAlignVSpace = System::Int8(0xb);
static const System::Int8 RaveAlignEquateHeights = System::Int8(0xc);
static const System::Int8 RaveAlignMoveForward = System::Int8(0xd);
static const System::Int8 RaveAlignMoveBehind = System::Int8(0xe);
static const System::Int8 RaveAlignBringToFront = System::Int8(0xf);
static const System::Int8 RaveAlignSendToBack = System::Int8(0x10);
static const System::Int8 RaveAlignTapLeft = System::Int8(0x11);
static const System::Int8 RaveAlignTapRight = System::Int8(0x12);
static const System::Int8 RaveAlignTapUp = System::Int8(0x13);
static const System::Int8 RaveAlignTapDown = System::Int8(0x14);
static const System::Int8 RaveAlignTapHSizeDown = System::Int8(0x15);
static const System::Int8 RaveAlignTapHSizeUp = System::Int8(0x16);
static const System::Int8 RaveAlignTapVSizeDown = System::Int8(0x17);
static const System::Int8 RaveAlignTapVSizeUp = System::Int8(0x18);
extern DELPHI_PACKAGE System::StaticArray<unsigned, 5> RavePrinterResolution;
static const System::Int8 RaveBinNameCnt = System::Int8(0xe);
extern DELPHI_PACKAGE Rvdefine__3 RaveBinName;
extern DELPHI_PACKAGE System::StaticArray<double, 12> LineWidths;
extern DELPHI_PACKAGE System::UnicodeString RaveTitle;
extern DELPHI_PACKAGE bool DeveloperLevel;
extern DELPHI_PACKAGE TUserLevel UserLevel;
extern DELPHI_PACKAGE int FloatPropPrecision;
extern DELPHI_PACKAGE Rpbase::TBaseReport* GBaseReport;
extern DELPHI_PACKAGE System::StaticArray<System::Word, 14> EventDelays;
extern DELPHI_PACKAGE System::StaticArray<System::Word, 14> LargeTimeouts;
extern DELPHI_PACKAGE bool AlwaysShowHeaders;
extern DELPHI_PACKAGE bool AdminMode;
extern DELPHI_PACKAGE bool SaveEnvOnly;
extern DELPHI_PACKAGE Rpdefine::TReportDest PrintDestination;
extern DELPHI_PACKAGE bool AllowSetup;
extern DELPHI_PACKAGE int PreviewShadowDepth;
extern DELPHI_PACKAGE System::Uitypes::TWindowState PreviewWindowState;
extern DELPHI_PACKAGE double PreviewGridHoriz;
extern DELPHI_PACKAGE double PreviewGridVert;
extern DELPHI_PACKAGE double PreviewZoomFactor;
extern DELPHI_PACKAGE int PreviewZoomInc;
extern DELPHI_PACKAGE bool PreviewMonochrome;
extern DELPHI_PACKAGE System::Uitypes::TColor PreviewGridColor;
extern DELPHI_PACKAGE Vcl::Graphics::TPenStyle PreviewGridPenStyle;
extern DELPHI_PACKAGE Rpdefine::TRulerType PreviewRulerType;
extern DELPHI_PACKAGE double ProjectUnitsFactor;
extern DELPHI_PACKAGE Rpdefine::TRavePaperSize PaperSize;
extern DELPHI_PACKAGE TRaveUnits PaperWidth;
extern DELPHI_PACKAGE TRaveUnits PaperHeight;
extern DELPHI_PACKAGE double GridSpacing;
extern DELPHI_PACKAGE int GridLines;
extern DELPHI_PACKAGE bool RaveInitialized;
extern DELPHI_PACKAGE bool DeveloperRave;
extern DELPHI_PACKAGE Vcl::Graphics::TBitmap* TrueTypeFontImage;
extern DELPHI_PACKAGE Vcl::Graphics::TBitmap* DeviceFontImage;
extern DELPHI_PACKAGE TRaveUnits TapDist;
extern DELPHI_PACKAGE bool ShowTapButtons;
extern DELPHI_PACKAGE bool ShowOrderButtons;
extern DELPHI_PACKAGE bool HoldAddDeleteComponents;
extern DELPHI_PACKAGE void __fastcall RaveError(System::UnicodeString ErrorMessage);
}	/* namespace Rvdefine */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDEFINE)
using namespace Rvdefine;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdefineHPP
