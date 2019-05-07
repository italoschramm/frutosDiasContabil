// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpDefine.pas' rev: 29.00 (Windows)

#ifndef RpdefineHPP
#define RpdefineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Graphics.hpp>
#include <System.Math.hpp>
#include <Data.DB.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------
#define BoldOn "\x01\x42\x31\x04"
#define BoldOff "\x01\x42\x30\x04"
#define ItalicOn "\x01\x49\x31\x04"
#define ItalicOff "\x01\x49\x30\x04"
#define UnderlineOn "\x01\x55\x31\x04"
#define UnderlineOff "\x01\x55\x30\x04"
#define StrikeoutOn "\x01\x4B\x31\x04"
#define StrikeoutOff "\x01\x4B\x30\x04"
#define SuperscriptOn "\x01\x50\x31\x04"
#define SuperscriptOff "\x01\x50\x30\x04"
#define SubscriptOn "\x01\x53\x31\x04"
#define SubscriptOff "\x01\x53\x30\x04"
#define JustifyLeft "\x01\x4A\x4C\x04"
#define JustifyCenter "\x01\x4A\x43\x04"
#define JustifyRight "\x01\x4A\x52\x04"
#define JustifyBlock "\x01\x4A\x42\x04"
#undef ResetPrinter

namespace Rpdefine
{
//-- forward type declarations -----------------------------------------------
struct TPaperSizeName;
class DELPHICLASS EReportPrinter;
class DELPHICLASS TPosition;
class DELPHICLASS TTab;
struct TSaveBrush;
class DELPHICLASS TSaveFont;
struct TSavePen;
struct TFormatPara;
struct TFormatStyle;
class DELPHICLASS TFormatState;
class DELPHICLASS TLineList;
class DELPHICLASS TRpComponent;
class DELPHICLASS TRPStringObject;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<System::UnicodeString, 32> Rpdefine__1;

typedef int TRavePaperSize;

struct DECLSPEC_DRECORD TPaperSizeName
{
public:
	System::UnicodeString Name;
	TRavePaperSize PaperSize;
	double PaperWidth;
	double PaperHeight;
};


typedef System::StaticArray<TPaperSizeName, 43> Rpdefine__2;

#pragma pack(push,4)
class PASCALIMPLEMENTATION EReportPrinter : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall EReportPrinter(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall EReportPrinter(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EReportPrinter(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EReportPrinter(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EReportPrinter(NativeUInt Ident, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EReportPrinter(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EReportPrinter(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EReportPrinter(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EReportPrinter(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EReportPrinter(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EReportPrinter(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EReportPrinter(NativeUInt Ident, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EReportPrinter(void) { }
	
};

#pragma pack(pop)

typedef bool __fastcall (__closure *TPrintPageEvent)(System::TObject* Sender, int &PageNum);

typedef void __fastcall (__closure *TDecodeImageEvent)(System::TObject* Sender, System::Classes::TStream* ImageStream, System::UnicodeString ImageType, Vcl::Graphics::TBitmap* Bitmap);

typedef System::UnicodeString TVersion;

typedef System::UnicodeString TTitleString;

typedef System::UnicodeString TFormatString;

enum DECLSPEC_DENUM TDeviceState : unsigned char { dsNone, dsIC, dsDC };

enum DECLSPEC_DENUM TAccuracyMethod : unsigned char { amPositioning, amAppearance };

enum DECLSPEC_DENUM TMarginMethod : unsigned char { mmScaled, mmFixed };

enum DECLSPEC_DENUM TRulerType : unsigned char { rtNone, rtHorizCm, rtVertCm, rtBothCm, rtHorizIn, rtVertIn, rtBothIn };

enum DECLSPEC_DENUM TPrintJustify : unsigned char { pjCenter, pjLeft, pjRight, pjBlock };

enum DECLSPEC_DENUM TTabJustify : unsigned char { tjCenter, tjLeft, tjRight, tjBlock, tjNone };

enum DECLSPEC_DENUM TPrintJustifyVert : unsigned char { pjTop, pjMiddle, pjBottom };

enum DECLSPEC_DENUM TPrintUnits : unsigned char { unInch, unMM, unCM, unPoint, unUser };

enum DECLSPEC_DENUM TLineHeightMethod : unsigned char { lhmLinesPerInch, lhmFont, lhmUser };

enum DECLSPEC_DENUM TBKMode : unsigned char { bkTransparent, bkOpaque };

enum DECLSPEC_DENUM TDestination : unsigned char { destPrinter, destPreview, destFile, destNone, destCustomFile };

enum DECLSPEC_DENUM TStreamMode : unsigned char { smMemory, smFile, smUser, smTempFile };

enum DECLSPEC_DENUM TOrientation : unsigned char { poPortrait, poLandScape, poDefault };

enum DECLSPEC_DENUM TDuplex : unsigned char { dupSimplex, dupVertical, dupHorizontal };

enum DECLSPEC_DENUM TReportEventType : unsigned char { reBeginPage, reEndPage };

enum DECLSPEC_DENUM TFontAlign : unsigned char { faBaseline, faTop, faBottom };

enum DECLSPEC_DENUM TReportDest : unsigned char { rdPreview, rdPrinter, rdFile };

enum DECLSPEC_DENUM TSystemSetup : unsigned char { ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup };

enum DECLSPEC_DENUM TSystemOption : unsigned char { soUseFiler, soWaitForOK, soShowStatus, soAllowPrintFromPreview, soAllowSaveFromPreview, soPreviewModal, soNoGenerate };

enum DECLSPEC_DENUM TBoxLines : unsigned char { blNone, blLeft, blRight, blLeftRight, blTop, blLeftTop, blRightTop, blNoBottom, blBottom, blLeftBottom, blRightBottom, blNoTop, blTopBottom, blNoRight, blNoLeft, blAll };

enum DECLSPEC_DENUM TMacroID : unsigned char { midCurrDateShort, midCurrDateLong, midCurrDateUS, midCurrDateInter, midCurrTimeShort, midCurrTimeLong, midCurrTimeAMPM, midCurrTime24, midFirstPage, midLastPage, midTotalPages, midCurrentPage, midRelativePage, midPrinterName, midDriverName, midPortName, midUser01, midUser02, midUser03, midUser04, midUser05, midUser06, midUser07, midUser08, midUser09, midUser10, midUser11, midUser12, midUser13, midUser14, midUser15, midUser16, midUser17, midUser18, midUser19, midUser20 };

enum DECLSPEC_DENUM TRTFTokenType : unsigned char { ttControlWord, ttControlSymbol, ttGroupBegin, ttGroupEnd, ttText };

typedef System::Set<TRTFTokenType, TRTFTokenType::ttControlWord, TRTFTokenType::ttText> TRTFTokenTypeSet;

typedef System::StaticArray<System::WideChar, 100000001> TCharArray;

typedef TCharArray *PCharArray;

enum DECLSPEC_DENUM TFrameMode : unsigned char { fmInside, fmSplit, fmOutside };

typedef System::Set<TSystemSetup, TSystemSetup::ssAllowSetup, TSystemSetup::ssAllowPreviewSetup> TSystemSetups;

typedef System::Set<TSystemOption, TSystemOption::soUseFiler, TSystemOption::soNoGenerate> TSystemOptions;

class PASCALIMPLEMENTATION TPosition : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	double X;
	double Y;
public:
	/* TObject.Create */ inline __fastcall TPosition(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TPosition(void) { }
	
};


class PASCALIMPLEMENTATION TTab : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	double Pos;
	TPrintJustify Justify;
	double Width;
	double Margin;
	bool Left;
	bool Right;
	bool Top;
	bool Bottom;
	System::Byte Shade;
	System::Word RefCount;
	void __fastcall Assign(TTab* Value);
public:
	/* TObject.Create */ inline __fastcall TTab(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTab(void) { }
	
};


struct DECLSPEC_DRECORD TSaveBrush
{
public:
	System::Uitypes::TColor Color;
	Vcl::Graphics::TBrushStyle Style;
	bool Bitmap;
};


class PASCALIMPLEMENTATION TSaveFont : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString Name;
	System::Uitypes::TColor Color;
	System::Uitypes::TFontPitch Pitch;
	double Size;
	double Height;
	double Width;
	double Ascent;
	double Descent;
	double InternalLeading;
	bool Bold;
	bool Underline;
	bool Italic;
	bool Strikeout;
	bool Subscript;
	bool Superscript;
	short Rotation;
	TFontAlign Align;
	System::Word Index;
	HFONT Handle;
	int CharSet;
	void __fastcall Assign(TSaveFont* AValue);
public:
	/* TObject.Create */ inline __fastcall TSaveFont(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSaveFont(void) { }
	
};


struct DECLSPEC_DRECORD TSavePen
{
public:
	System::Uitypes::TColor Color;
	Vcl::Graphics::TPenMode Mode;
	Vcl::Graphics::TPenStyle Style;
	double Width;
};


struct DECLSPEC_DRECORD TFormatPara
{
public:
	TPrintJustify Justify;
	double FirstIndent;
	double LeftIndent;
	double RightIndent;
};


struct DECLSPEC_DRECORD TFormatStyle
{
public:
	bool Bold;
	bool Italic;
	bool Underline;
	bool Strikeout;
	bool Subscript;
	bool Superscript;
	System::Uitypes::TFontPitch Pitch;
	System::Uitypes::TColor Color;
};


class PASCALIMPLEMENTATION TFormatState : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString Name;
	double Size;
	TFormatStyle Style;
	TFormatPara Para;
	TFormatState* Prev;
	void __fastcall Assign(TFormatState* Value);
public:
	/* TObject.Create */ inline __fastcall TFormatState(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TFormatState(void) { }
	
};


class PASCALIMPLEMENTATION TLineList : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	double P1;
	double P2;
	double C1;
	System::Uitypes::TColor Color;
	Vcl::Graphics::TPenMode Mode;
	Vcl::Graphics::TPenStyle Style;
	int Width;
public:
	/* TObject.Create */ inline __fastcall TLineList(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TLineList(void) { }
	
};


class PASCALIMPLEMENTATION TRpComponent : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
protected:
	System::UnicodeString FVersion;
	void __fastcall SetVersion(System::UnicodeString Value);
	
public:
	__fastcall virtual TRpComponent(System::Classes::TComponent* AOwner);
	
__published:
	__property System::UnicodeString Version = {read=FVersion, write=SetVersion, stored=false};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TRpComponent(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPStringObject : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString FValue;
	__fastcall TRPStringObject(System::UnicodeString InitValue);
	__property System::UnicodeString Value = {read=FValue, write=FValue};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPStringObject(void) { }
	
};

#pragma pack(pop)

typedef Winapi::Windows::PDeviceModeW PRPDevMode;

enum DECLSPEC_DENUM TRPDataType : unsigned char { dtString, dtInteger, dtBoolean, dtFloat, dtCurrency, dtBCD, dtDate, dtTime, dtDateTime, dtBlob, dtMemo, dtGraphic, dtInt64 };

typedef System::Set<TRPDataType, TRPDataType::dtString, TRPDataType::dtInt64> TRPDataTypeSet;

enum DECLSPEC_DENUM TRaveConnectionError : unsigned char { ceAbort, ceInform, cePrompt };

//-- var, const, procedure ---------------------------------------------------
#define RunMode L""
#define CompVer L"XE8"
#define LibType L"VCL"
#define RvMajorVersion L"11"
static const System::WideChar RvMinorVersion = (System::WideChar)(0x30);
#define RvSubVersion L"11"
#define RvSpecialVersion L""
#define RPVersion L"11.0.11 (VCLXE8)"
static const short NA = short(-32768);
static const System::Int8 BOXLINENONE = System::Int8(0x0);
static const System::Int8 BOXLINELEFT = System::Int8(0x1);
static const System::Int8 BOXLINERIGHT = System::Int8(0x2);
static const System::Int8 BOXLINELEFTRIGHT = System::Int8(0x3);
static const System::Int8 BOXLINETOP = System::Int8(0x4);
static const System::Int8 BOXLINELEFTTOP = System::Int8(0x5);
static const System::Int8 BOXLINERIGHTTOP = System::Int8(0x6);
static const System::Int8 BOXLINENOBOTTOM = System::Int8(0x7);
static const System::Int8 BOXLINEBOTTOM = System::Int8(0x8);
static const System::Int8 BOXLINELEFTBOTTOM = System::Int8(0x9);
static const System::Int8 BOXLINERIGHTBOTTOM = System::Int8(0xa);
static const System::Int8 BOXLINENOTOP = System::Int8(0xb);
static const System::Int8 BOXLINETOPBOTTOM = System::Int8(0xc);
static const System::Int8 BOXLINENORIGHT = System::Int8(0xd);
static const System::Int8 BOXLINENOLEFT = System::Int8(0xe);
static const System::Int8 BOXLINEALL = System::Int8(0xf);
static const System::Int8 BOXLINEHORIZ = System::Int8(0xc);
static const System::Int8 BOXLINEVERT = System::Int8(0x3);
static const System::Int8 MAXSAVEFONT = System::Int8(0xa);
static const System::Int8 MAXSAVETABS = System::Int8(0xa);
static const System::Int8 MAXSAVEPOS = System::Int8(0xa);
static const System::Word MAXWORDLEN = System::Word(0xfff0);
static const int MAXBUFSIZE = int(0x77359400);
#define MINPREVIEWZOOM  (1.000000E+01)
#define MAXPREVIEWZOOM  (2.000000E+02)
static const System::Int8 rpcArc = System::Int8(0x1);
static const System::Int8 rpcBrushCopy = System::Int8(0x2);
static const System::Int8 rpcChord = System::Int8(0x3);
static const System::Int8 rpcCopyRect = System::Int8(0x4);
static const System::Int8 rpcDraw = System::Int8(0x5);
static const System::Int8 rpcDrawFocusRect = System::Int8(0x6);
static const System::Int8 rpcEllipse = System::Int8(0x7);
static const System::Int8 rpcFillRect = System::Int8(0x8);
static const System::Int8 rpcFloodFill = System::Int8(0x9);
static const System::Int8 rpcFrameRect = System::Int8(0xa);
static const System::Int8 rpcLineTo = System::Int8(0xb);
static const System::Int8 rpcMoveTo = System::Int8(0xc);
static const System::Int8 rpcPie = System::Int8(0xd);
static const System::Int8 rpcPolygon = System::Int8(0xe);
static const System::Int8 rpcPolyline = System::Int8(0xf);
static const System::Int8 rpcPrintBitmap = System::Int8(0x10);
static const System::Int8 rpcPrintBitmapRect = System::Int8(0x11);
static const System::Int8 rpcRectangle = System::Int8(0x12);
static const System::Int8 rpcTabRectangle = System::Int8(0x13);
static const System::Int8 rpcRoundRect = System::Int8(0x14);
static const System::Int8 rpcStretchDraw = System::Int8(0x15);
static const System::Int8 rpcTextRect = System::Int8(0x16);
static const System::Int8 rpcCenterText = System::Int8(0x17);
static const System::Int8 rpcLeftText = System::Int8(0x18);
static const System::Int8 rpcRightText = System::Int8(0x19);
static const System::Int8 rpcSetTextBKMode = System::Int8(0x1a);
static const System::Int8 rpcSetBKColor = System::Int8(0x1b);
static const System::Int8 rpcSetScaleX = System::Int8(0x1c);
static const System::Int8 rpcSetScaleY = System::Int8(0x1d);
static const System::Int8 rpcPrintData = System::Int8(0x1e);
static const System::Int8 rpcPrintDataStream = System::Int8(0x1f);
static const System::Int8 rpcPrintSpaces = System::Int8(0x20);
static const System::Int8 rpcBlockText = System::Int8(0x21);
static const System::Int8 rpcTransBitmap = System::Int8(0x22);
static const System::Int8 rpcSetFrameMode = System::Int8(0x23);
static const System::Int8 rpcPrintImageRect = System::Int8(0x24);
static const System::Int8 rpcVariableData = System::Int8(0x25);
static const System::Int8 rpcSetHyperlink = System::Int8(0x26);
static const System::Int8 rpcSetBrush = System::Int8(0x28);
static const System::Int8 rpcSetBrushColor = System::Int8(0x29);
static const System::Int8 rpcSetBrushStyle = System::Int8(0x2a);
static const System::Int8 rpcSetBrushBitmap = System::Int8(0x2b);
static const System::Int8 rpcSetFont = System::Int8(0x32);
static const System::Int8 rpcSetFontName = System::Int8(0x33);
static const System::Int8 rpcSetFontColor = System::Int8(0x34);
static const System::Int8 rpcSetFontPitch = System::Int8(0x35);
static const System::Int8 rpcSetFontHeight = System::Int8(0x36);
static const System::Int8 rpcSetFontBold = System::Int8(0x37);
static const System::Int8 rpcSetFontUnderline = System::Int8(0x38);
static const System::Int8 rpcSetFontItalic = System::Int8(0x39);
static const System::Int8 rpcSetFontStrikeout = System::Int8(0x3a);
static const System::Int8 rpcSetFontSuperscript = System::Int8(0x3b);
static const System::Int8 rpcSetFontSubscript = System::Int8(0x3c);
static const System::Int8 rpcSetFontRotation = System::Int8(0x3d);
static const System::Int8 rpcSetFontAlign = System::Int8(0x3e);
static const System::Int8 rpcSetFontCharset = System::Int8(0x3f);
static const System::Int8 rpcSetPen = System::Int8(0x46);
static const System::Int8 rpcSetPenColor = System::Int8(0x47);
static const System::Int8 rpcSetPenMode = System::Int8(0x48);
static const System::Int8 rpcSetPenStyle = System::Int8(0x49);
static const System::Int8 rpcSetPenWidth = System::Int8(0x4a);
static const System::Int8 rpcNewPage = System::Int8(0x50);
static const System::Int8 rpcJobHeader11 = System::Int8(0x51);
static const System::Int8 rpcEndPage = System::Int8(0x52);
static const System::Int8 rpcResetLineHeight = System::Int8(0x53);
static const System::Int8 rpcAllowPreviewOnly = System::Int8(0x54);
static const System::Int8 rpcAllowPrinterOnly = System::Int8(0x55);
static const System::Int8 rpcAllowAll = System::Int8(0x56);
static const System::Int8 rpcSetOrientation = System::Int8(0x57);
static const System::Int8 rpcSetBin = System::Int8(0x58);
static const System::Int8 rpcJobHeader20i = System::Int8(0x59);
static const System::Int8 rpcJobHeader = System::Int8(0x5a);
static const System::Byte rpcUser = System::Byte(0xc8);
extern DELPHI_PACKAGE Rpdefine__1 RTFIgnoreDest;
static const System::WideChar RPTFPrefix = (System::WideChar)(0x1);
static const System::WideChar RPTFInfix = (System::WideChar)(0x2);
static const System::WideChar RPTFSeparator = (System::WideChar)(0x3);
static const System::WideChar RPTFSuffix = (System::WideChar)(0x4);
static const System::WideChar RPTFOff = (System::WideChar)(0x30);
static const System::WideChar RPTFOn = (System::WideChar)(0x31);
static const System::WideChar RPTFLeft = (System::WideChar)(0x4c);
static const System::WideChar RPTFCenter = (System::WideChar)(0x43);
static const System::WideChar RPTFRight = (System::WideChar)(0x52);
static const System::WideChar RPTFBlock = (System::WideChar)(0x42);
static const System::WideChar RPTFIgnore = (System::WideChar)(0x20);
static const System::WideChar RPTFBold = (System::WideChar)(0x42);
static const System::WideChar RPTFItalic = (System::WideChar)(0x49);
static const System::WideChar RPTFUnderline = (System::WideChar)(0x55);
static const System::WideChar RPTFStrikeout = (System::WideChar)(0x4b);
static const System::WideChar RPTFSuperscript = (System::WideChar)(0x50);
static const System::WideChar RPTFSubscript = (System::WideChar)(0x53);
static const System::WideChar RPTFName = (System::WideChar)(0x4e);
static const System::WideChar RPTFSize = (System::WideChar)(0x5a);
static const System::WideChar RPTFColor = (System::WideChar)(0x43);
static const System::WideChar RPTFPitch = (System::WideChar)(0x48);
static const System::WideChar RPTFResetParagraph = (System::WideChar)(0x52);
static const System::WideChar RPTFResetStyle = (System::WideChar)(0x72);
static const System::WideChar RPTFJustify = (System::WideChar)(0x4a);
static const System::WideChar RPTFFirstIndent = (System::WideChar)(0x46);
static const System::WideChar RPTFLeftIndent = (System::WideChar)(0x4c);
static const System::WideChar RPTFRightIndent = (System::WideChar)(0x47);
static const System::WideChar RPTFHyperlink = (System::WideChar)(0x41);
static const System::Int8 PaperSizeNameCnt = System::Int8(0x2b);
extern DELPHI_PACKAGE Rpdefine__2 PaperSizeName;
extern DELPHI_PACKAGE System::StaticArray<TRPDataType, 52> TRPDataSetType;
static const int FileMapSize = int(0x10000);
#define FileMapName L"RAVEBUFFER"
#define AltFileMapName L"RAVEBUFFERALT"
static const System::Int8 EVENTPREPARED = System::Int8(0x0);
static const System::Int8 DATAFIRST = System::Int8(0x1);
static const System::Int8 DATANEXT = System::Int8(0x2);
static const System::Int8 DATAEOF = System::Int8(0x3);
static const System::Int8 DATAGETCOLS = System::Int8(0x4);
static const System::Int8 DATAGETROW = System::Int8(0x5);
static const System::Int8 DATASETFILTER = System::Int8(0x6);
static const System::Int8 DATAGETSORTS = System::Int8(0x7);
static const System::Int8 DATASETSORT = System::Int8(0x8);
static const System::Int8 DATAOPEN = System::Int8(0x9);
static const System::Int8 DATARESTORE = System::Int8(0xa);
static const System::Int8 DATAACKNOWLEDGE = System::Int8(0xb);
static const System::Int8 DATAFREEALTBUF = System::Int8(0xc);
extern DELPHI_PACKAGE System::UnicodeString DataID;
extern DELPHI_PACKAGE bool MBCSNdr;
#define ControllerMutexName L"RAVECONTROLER"
#define CompletedEventName L"RAVECOMPLETED"
#define AcknowledgeRTEventName L"RAVERTACK_"
#define AcknowledgeDTEventName L"RAVEDTACK_"
#define ConnectEventName L"RAVECONNECT"
#define ErrorEventName L"RAVEERROR"
#define DisconnectEventName L"RAVEDISCONNECT"
#define DataRTEventName L"RAVERTDATA_"
#define DataDTEventName L"RAVEDTDATA_"
extern DELPHI_PACKAGE System::UnicodeString __fastcall (*Trans)(const System::UnicodeString Value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall DefaultTrans(const System::UnicodeString Value);
extern DELPHI_PACKAGE void __fastcall CloseEvent(NativeUInt AEvent, bool Force = false);
extern DELPHI_PACKAGE void __fastcall CloseMutex(NativeUInt AMutex, bool Force = false);
extern DELPHI_PACKAGE void __fastcall CloseFileMap(NativeUInt AFileMap, void * AFileBuf);
extern DELPHI_PACKAGE NativeUInt __fastcall InitEvent(System::UnicodeString EventName);
extern DELPHI_PACKAGE NativeUInt __fastcall InitManualEvent(System::UnicodeString EventName);
extern DELPHI_PACKAGE NativeUInt __fastcall InitMutex(System::UnicodeString MutexName);
extern DELPHI_PACKAGE NativeUInt __fastcall InitFileMap(System::UnicodeString MapName, int MapSize);
extern DELPHI_PACKAGE void * __fastcall InitFileBuf(NativeUInt FileMap);
extern DELPHI_PACKAGE void __fastcall RaiseError(System::UnicodeString ErrorMessage);
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall ShadeToColor(System::Uitypes::TColor ShadeColor, System::Byte ShadePercent);
extern DELPHI_PACKAGE System::UnicodeString __fastcall MoneyToLongName(System::Extended Value);
extern DELPHI_PACKAGE System::Byte __fastcall ConvertCharset(System::Byte Charset);
extern DELPHI_PACKAGE System::UnicodeString __fastcall RaveUpperCase(const System::UnicodeString S);
extern DELPHI_PACKAGE int __fastcall RaveCompareText(const System::UnicodeString S1, const System::UnicodeString S2);
extern DELPHI_PACKAGE int __fastcall RavePos(const System::UnicodeString Substr, const System::UnicodeString S);
extern DELPHI_PACKAGE void __fastcall StreamWriteBuffer(System::Classes::TStream* Stream, System::UnicodeString Value);
extern DELPHI_PACKAGE int __fastcall ExtractTotalPages(System::Classes::TStream* NDRStream);
}	/* namespace Rpdefine */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPDEFINE)
using namespace Rpdefine;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpdefineHPP
