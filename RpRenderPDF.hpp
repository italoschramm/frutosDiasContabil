// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderPDF.pas' rev: 29.00 (Windows)

#ifndef RprenderpdfHPP
#define RprenderpdfHPP

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
#include <Vcl.Imaging.jpeg.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpRender.hpp>
#include <RpDefine.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprenderpdf
{
//-- forward type declarations -----------------------------------------------
struct TEllipsePts;
struct TSmallArcRecord;
class DELPHICLASS TRPPDFDocInfo;
class DELPHICLASS TRPPDFObject;
class DELPHICLASS TRPPDFCatalog;
class DELPHICLASS TRPPDFPages;
class DELPHICLASS TRPPDFPageContent;
class DELPHICLASS TRPPDFPage;
class DELPHICLASS TRPPDFOutlines;
class DELPHICLASS TRPPDFProcSet;
class DELPHICLASS TRPPDFPatternResource;
class DELPHICLASS TPDFLink;
class DELPHICLASS TRPPDFPattern;
class DELPHICLASS TRPPDFFontFile;
class DELPHICLASS TRPPDFFont;
class DELPHICLASS TRPPDFFontDescriptor;
class DELPHICLASS TRPPDFFontDescendant;
class DELPHICLASS TRPPDFFontDescriptorComposite;
class DELPHICLASS TRPPDFFontTrueType;
class DELPHICLASS TRPPDFFontComposite;
class DELPHICLASS TRpPdfUnicode;
class DELPHICLASS TRPPDFXObject;
class DELPHICLASS TRvRenderPDF;
//-- type declarations -------------------------------------------------------
typedef System::DynamicArray<System::Byte> TBytes;

typedef System::StaticArray<short, 256> TFontWidthTable;

enum DECLSPEC_DENUM TPDFFontStyles : unsigned char { psNormal, psBold, psItalic, psBoldItalic };

enum DECLSPEC_DENUM TPDFFontEncoding : unsigned char { feMacRomanEncoding, feMacExpertEncoding, feWinAnsiEncoding, fePDFDocEncoding, feStandardEncoding };

struct DECLSPEC_DRECORD TEllipsePts
{
public:
	double XA;
	double XB;
	double XC;
	double XD;
	double XE;
	double YA;
	double YB;
	double YC;
	double YD;
	double YE;
};


struct DECLSPEC_DRECORD TSmallArcRecord
{
public:
	double X1;
	double X2;
	double X3;
	double X4;
	double Y1;
	double Y2;
	double Y3;
	double Y4;
};


typedef System::StaticArray<TSmallArcRecord, 4> TSmallArcBuffer;

typedef System::StaticArray<System::UnicodeString, 14> Rprenderpdf__1;

typedef System::StaticArray<System::UnicodeString, 5> Rprenderpdf__2;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFDocInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString FTitle;
	System::UnicodeString FAuthor;
	System::UnicodeString FSubject;
	System::UnicodeString FKeyWords;
	System::UnicodeString FCreator;
	System::UnicodeString FProducer;
	
public:
	__fastcall virtual TRPPDFDocInfo(void);
	
__published:
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property System::UnicodeString Author = {read=FAuthor, write=FAuthor};
	__property System::UnicodeString Subject = {read=FSubject, write=FSubject};
	__property System::UnicodeString KeyWords = {read=FKeyWords, write=FKeyWords};
	__property System::UnicodeString Creator = {read=FCreator, write=FCreator};
	__property System::UnicodeString Producer = {read=FProducer, write=FProducer};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRPPDFDocInfo(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFObject : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TRvRenderPDF* FRvRenderPDF;
	int FID;
	System::Classes::TMemoryStream* FDataStream;
	void __fastcall SetID(int AValue);
	int __fastcall GetID(void);
	virtual void __fastcall InitData(void) = 0 ;
	
public:
	__fastcall virtual TRPPDFObject(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFObject(void);
	__property System::Classes::TMemoryStream* DataStream = {read=FDataStream};
	__property TRvRenderPDF* RvRenderPDF = {read=FRvRenderPDF, write=FRvRenderPDF};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFCatalog : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	bool FShowOutlines;
	virtual void __fastcall InitData(void);
	
public:
	__property bool ShowOutlines = {read=FShowOutlines, write=FShowOutlines, nodefault};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFCatalog(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFCatalog(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFPages : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	int FOpenPage;
	virtual void __fastcall InitData(void);
	
public:
	System::UnicodeString __fastcall GetPageReferences(void);
	__property int OpenPage = {read=FOpenPage, write=FOpenPage, nodefault};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFPages(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFPages(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFPageContent : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::Classes::TMemoryStream* FPageStream;
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFPageContent(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFPageContent(void);
	__property System::Classes::TMemoryStream* PageStream = {read=FPageStream};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRPPDFPage : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	TRPPDFPageContent* FPageContent;
	double FPageWidth;
	double FPageHeight;
	System::Uitypes::TColor FTextColor;
	System::Uitypes::TColor FLastTextColor;
	bool FLastTextColorDefined;
	System::Uitypes::TColor FPenColor;
	System::Uitypes::TColor FLastPenColor;
	bool FLastPenColorDefined;
	double FLastPenWidth;
	bool FLastPenWidthDefined;
	Vcl::Graphics::TPenStyle FLastPenStyle;
	bool FLastPenStyleDefined;
	System::Uitypes::TColor FBrushColor;
	System::Uitypes::TColor FLastBrushColor;
	bool FLastBrushColorDefined;
	Vcl::Graphics::TBrushStyle FLastBrushStyle;
	bool FLastBrushStyleDefined;
	unsigned FFileOffset;
	System::Classes::TList* FLinks;
	__property System::Classes::TList* Links = {read=FLinks, write=FLinks};
	__property unsigned FileOffset = {read=FFileOffset, write=FFileOffset, nodefault};
	__property bool LastTextColorDefined = {read=FLastTextColorDefined, write=FLastTextColorDefined, nodefault};
	__property bool LastPenColorDefined = {read=FLastPenColorDefined, write=FLastPenColorDefined, nodefault};
	__property bool LastPenWidthDefined = {read=FLastPenWidthDefined, write=FLastPenWidthDefined, nodefault};
	__property bool LastPenStyleDefined = {read=FLastPenStyleDefined, write=FLastPenStyleDefined, nodefault};
	__property bool LastBrushStyleDefined = {read=FLastBrushStyleDefined, write=FLastBrushStyleDefined, nodefault};
	__property bool LastBrushColorDefined = {read=FLastBrushColorDefined, write=FLastBrushColorDefined, nodefault};
	double __fastcall InchesToUnitsX(const double AValue);
	double __fastcall InchesToUnitsY(const double AValue);
	System::UnicodeString __fastcall FormatPdfText(const System::UnicodeString AValue);
	void __fastcall ClosePath(void);
	void __fastcall RotateXYCoordinate(double AX1, double AY1, double AAngle, double &xRot, double &yRot);
	double __fastcall DegreesToRadians(double ADegrees);
	void __fastcall SmallArc(double AX1, double AY1, double AR1, double MidTheta, double HalfAngle, double ccwcw, int AIndex);
	void __fastcall RadiusArc(const double AX1, const double AY1, const double AR1, const double sAngle, const double eAngle);
	void __fastcall AdjustRotationOffset(const double ATextWidth, double &AX, double &AY);
	void __fastcall AddLink(double ax1, double ay1, double ax2, double ay2, System::UnicodeString uri);
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFPage(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFPage(void);
	System::UnicodeString __fastcall GetRPPDFColor(System::Uitypes::TColor Color, bool bAExpanded);
	TEllipsePts __fastcall GetEllipsePts(const double AX1, const double AY1, const double AX2, const double AY2);
	void __fastcall PrintCharSpacing(void);
	void __fastcall PrintWordSpacing(void);
	void __fastcall PrintTextColor(void);
	void __fastcall PrintPenColor(void);
	void __fastcall PrintBrushColor(void);
	void __fastcall PrintLeft(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall PrintCenter(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall PrintRight(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall TextRect(const System::Types::TRect &Rect, double X1, double Y1, System::UnicodeString S1);
	void __fastcall SetPenAndBrush(void);
	void __fastcall MoveTo(const double AX, const double AY);
	void __fastcall LineTo(const double AX, const double AY, bool DoClosePath);
	void __fastcall Arc(const double pfX1, const double pfY1, const double pfX2, const double pfY2, const double pfX3, const double pfY3, const double pfX4, const double pfY4, bool DoClosePath, bool AllowFill);
	void __fastcall Rectangle(const double AX1, const double AY1, const double AX2, const double AY2, const bool IsClipping);
	void __fastcall RoundRect(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3);
	void __fastcall CurveTo(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3);
	void __fastcall Ellipse(const double AX1, const double AY1, const double AX2, const double AY2);
	void __fastcall PrintJPG(const double AX1, const double AY1, const double AX2, const double AY2, System::UnicodeString AName);
	void __fastcall Pie(const double pfX1, const double pfY1, const double pfX2, const double pfY2, const double pfX3, const double pfY3, const double pfX4, const double pfY4);
	void __fastcall PolyLine(Rprender::TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	void __fastcall Polygon(Rprender::TFloatPoint const *PointArr, const int PointArr_High);
	__property TRPPDFPageContent* PageContent = {read=FPageContent};
	__property double PageWidth = {read=FPageWidth, write=FPageWidth};
	__property double PageHeight = {read=FPageHeight, write=FPageHeight};
	__property System::Uitypes::TColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	__property System::Uitypes::TColor LastTextColor = {read=FLastTextColor, write=FLastTextColor, nodefault};
	__property System::Uitypes::TColor PenColor = {read=FPenColor, write=FPenColor, nodefault};
	__property System::Uitypes::TColor LastPenColor = {read=FLastPenColor, write=FLastPenColor, nodefault};
	__property double LastPenWidth = {read=FLastPenWidth, write=FLastPenWidth};
	__property Vcl::Graphics::TPenStyle LastPenStyle = {read=FLastPenStyle, write=FLastPenStyle, nodefault};
	__property Vcl::Graphics::TBrushStyle LastBrushStyle = {read=FLastBrushStyle, write=FLastBrushStyle, nodefault};
	__property System::Uitypes::TColor BrushColor = {read=FBrushColor, write=FBrushColor, nodefault};
	__property System::Uitypes::TColor LastBrushColor = {read=FLastBrushColor, write=FLastBrushColor, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFOutlines : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	virtual void __fastcall InitData(void);
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFOutlines(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFOutlines(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFProcSet : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	virtual void __fastcall InitData(void);
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFProcSet(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFProcSet(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFPatternResource : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::UnicodeString FResourceStream;
	virtual void __fastcall InitData(void);
	__property System::UnicodeString ResourceStream = {read=FResourceStream, write=FResourceStream};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFPatternResource(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFPatternResource(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TPDFLink : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::UnicodeString FResourceStream;
	System::UnicodeString FURI;
	double FAX1;
	double FAX2;
	double FAY1;
	double FAy2;
	virtual void __fastcall InitData(void);
	__property System::UnicodeString ResourceStream = {read=FResourceStream, write=FResourceStream};
	__property System::UnicodeString URI = {read=FURI, write=FURI};
	__property double AX1 = {read=FAX1, write=FAX1};
	__property double AY1 = {read=FAY1, write=FAY1};
	__property double AX2 = {read=FAX2, write=FAX2};
	__property double AY2 = {read=FAy2, write=FAy2};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TPDFLink(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TPDFLink(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFPattern : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::UnicodeString FObjectName;
	System::UnicodeString FPatternStream;
	TRPPDFPatternResource* FPatternResource;
	__property System::UnicodeString ObjectName = {read=FObjectName, write=FObjectName};
	__property System::UnicodeString PatternStream = {read=FPatternStream, write=FPatternStream};
	__property TRPPDFPatternResource* PatternResource = {read=FPatternResource, write=FPatternResource};
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFPattern(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFPattern(void);
	void __fastcall SetPattern(Vcl::Graphics::TBrushStyle AStyle, System::Uitypes::TColor AFillColor);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontFile : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::Classes::TMemoryStream* FFontStream;
	int FLength1;
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFFontFile(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFFontFile(void);
	void __fastcall LoadFontFile(NativeUInt Handle);
	__property System::Classes::TMemoryStream* FontStream = {read=FFontStream};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFont : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::UnicodeString FFontType;
	System::UnicodeString FObjectName;
	System::UnicodeString FFontName;
	TFontWidthTable FontWidths;
	System::UnicodeString FPDFFontName;
	System::Uitypes::TFontStyles FFontStyles;
	System::Uitypes::TFontCharset FFontCharset;
	int FFirstChar;
	int FLastChar;
	TRPPDFFontFile* FFontFile;
	void __fastcall SetCharSet(System::Uitypes::TFontCharset AFontCharset);
	void __fastcall SetLastChar(int AValue);
	__property System::UnicodeString PDFFontName = {read=FPDFFontName, write=FPDFFontName};
	__property System::Uitypes::TFontStyles FontStyles = {read=FFontStyles, write=FFontStyles, nodefault};
	__property System::UnicodeString FontType = {read=FFontType, write=FFontType};
	__property System::UnicodeString ObjectName = {read=FObjectName, write=FObjectName};
	__property System::UnicodeString FontName = {read=FFontName, write=FFontName};
	__property int FirstChar = {read=FFirstChar, write=FFirstChar, nodefault};
	__property int LastChar = {read=FLastChar, write=SetLastChar, nodefault};
	__property System::Uitypes::TFontCharset FontCharset = {read=FFontCharset, write=SetCharSet, nodefault};
	__property TRPPDFFontFile* FontFile = {read=FFontFile, write=FFontFile};
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFFont(System::TObject* AOwner);
	double __fastcall GetTextWidth(double AFontSize, System::UnicodeString AText);
public:
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFFont(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontDescriptor : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	System::UnicodeString FPDFFontName;
	System::UnicodeString FFontName;
	int FFlags;
	System::Types::TRect FFontBBox;
	int FMissingWidth;
	int FStemV;
	int FStemH;
	int FItalicAngle;
	int FCapHeight;
	int FXHeight;
	int FAscent;
	int FDescent;
	int FLeading;
	int FMaxWidth;
	int FAvgWidth;
	bool FIsEmbeddingAllowed;
	tagPANOSE FPanose;
	int __fastcall SetBit(int AValue, int ABit);
	__property tagPANOSE Panose = {read=FPanose, write=FPanose};
	virtual void __fastcall InitData(void);
	
public:
	virtual void __fastcall SetValues(Winapi::Windows::POutlineTextmetricW OutlineTextMetric, int AMissingWidth);
	__property System::UnicodeString PDFFontName = {read=FPDFFontName, write=FPDFFontName};
	__property System::UnicodeString FontName = {read=FFontName, write=FFontName};
	__property int Flags = {read=FFlags, write=FFlags, nodefault};
	__property System::Types::TRect FontBBox = {read=FFontBBox, write=FFontBBox};
	__property int MissingWidth = {read=FMissingWidth, write=FMissingWidth, nodefault};
	__property int StemV = {read=FStemV, write=FStemV, nodefault};
	__property int StemH = {read=FStemH, write=FStemH, nodefault};
	__property int ItalicAngle = {read=FItalicAngle, write=FItalicAngle, nodefault};
	__property int CapHeight = {read=FCapHeight, write=FCapHeight, nodefault};
	__property int XHeight = {read=FXHeight, write=FXHeight, nodefault};
	__property int Ascent = {read=FAscent, write=FAscent, nodefault};
	__property int Descent = {read=FDescent, write=FDescent, nodefault};
	__property int Leading = {read=FLeading, write=FLeading, nodefault};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, nodefault};
	__property int AvgWidth = {read=FAvgWidth, write=FAvgWidth, nodefault};
	__property bool IsEmbeddingAllowed = {read=FIsEmbeddingAllowed, write=FIsEmbeddingAllowed, nodefault};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFFontDescriptor(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFFontDescriptor(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontDescendant : public TRPPDFFont
{
	typedef TRPPDFFont inherited;
	
protected:
	System::UnicodeString FPDFFontName;
	TRPPDFFontDescriptorComposite* FDescriptor;
	int FMaxCharWidth;
	int FAveCharWidth;
	System::UnicodeString FRegistry;
	System::UnicodeString FOrdering;
	int FSupplement;
	System::Uitypes::TFontCharset FCharset;
	virtual void __fastcall InitData(void);
	
public:
	__property TRPPDFFontDescriptorComposite* Descriptor = {read=FDescriptor, write=FDescriptor};
	__property System::UnicodeString PDFFontName = {read=FPDFFontName, write=FPDFFontName};
	__property System::UnicodeString Registry = {read=FRegistry, write=FRegistry};
	__property System::UnicodeString Ordering = {read=FOrdering, write=FOrdering};
	__property int Supplement = {read=FSupplement, write=FSupplement, nodefault};
	__property int MaxCharWidth = {read=FMaxCharWidth, write=FMaxCharWidth, nodefault};
	__property int AveCharWidth = {read=FAveCharWidth, write=FAveCharWidth, nodefault};
	__property System::Uitypes::TFontCharset Charset = {read=FCharset, write=FCharset, nodefault};
public:
	/* TRPPDFFont.Create */ inline __fastcall virtual TRPPDFFontDescendant(System::TObject* AOwner) : TRPPDFFont(AOwner) { }
	
public:
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFFontDescendant(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontDescriptorComposite : public TRPPDFFontDescriptor
{
	typedef TRPPDFFontDescriptor inherited;
	
protected:
	TRPPDFFontDescendant* FDescendantFont;
	TRPPDFFontDescriptorComposite* FDescriptor;
	System::UnicodeString FStyle;
	virtual void __fastcall InitData(void);
	
public:
	__property TRPPDFFontDescriptorComposite* Descriptor = {read=FDescriptor, write=FDescriptor};
	virtual void __fastcall SetValues(Winapi::Windows::POutlineTextmetricW OutlineTextMetric, int AMissingWidth);
	__property System::UnicodeString Style = {read=FStyle, write=FStyle};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRPPDFFontDescriptorComposite(System::TObject* AOwner) : TRPPDFFontDescriptor(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRPPDFFontDescriptorComposite(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontTrueType : public TRPPDFFont
{
	typedef TRPPDFFont inherited;
	
protected:
	TRPPDFFontDescriptor* FDescriptor;
	bool FIsEmbeddingAllowed;
	void __fastcall SetFontData(void);
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFFontTrueType(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFFontTrueType(void);
	__property TRPPDFFontDescriptor* Descriptor = {read=FDescriptor, write=FDescriptor};
	__property bool IsEmbeddingAllowed = {read=FIsEmbeddingAllowed, write=FIsEmbeddingAllowed, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFFontComposite : public TRPPDFFont
{
	typedef TRPPDFFont inherited;
	
protected:
	TRPPDFFontDescriptorComposite* FDescriptor;
	TRPPDFFontDescendant* FDescendant;
	System::UnicodeString FCompositeFontEncoding;
	TRpPdfUnicode* FUnicode;
	System::StaticArray<System::Byte, 8193> FCharsUsed;
	void __fastcall SetFontData(void);
	void __fastcall SetCharBits(System::UnicodeString AValue);
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFFontComposite(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFFontComposite(void);
	__property TRPPDFFontDescriptorComposite* Descriptor = {read=FDescriptor, write=FDescriptor};
	__property TRPPDFFontDescendant* Descendant = {read=FDescendant, write=FDescendant};
	__property TRpPdfUnicode* Unicode = {read=FUnicode, write=FUnicode};
	__property System::UnicodeString CompositeFontEncoding = {read=FCompositeFontEncoding, write=FCompositeFontEncoding};
	__property int FirstChar = {read=FFirstChar, write=FFirstChar, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRpPdfUnicode : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
protected:
	TRPPDFFontComposite* FCompositeFont;
	virtual void __fastcall InitData(void);
	
public:
	__property TRPPDFFontComposite* CompositeFont = {read=FCompositeFont, write=FCompositeFont};
public:
	/* TRPPDFObject.Create */ inline __fastcall virtual TRpPdfUnicode(System::TObject* AOwner) : TRPPDFObject(AOwner) { }
	/* TRPPDFObject.Destroy */ inline __fastcall virtual ~TRpPdfUnicode(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPPDFXObject : public TRPPDFObject
{
	typedef TRPPDFObject inherited;
	
private:
	int __fastcall GetImageHeight(void);
	int __fastcall GetImageWidth(void);
	
protected:
	System::Classes::TStream* FImageStream;
	System::UnicodeString FObjectName;
	Vcl::Imaging::Jpeg::TJPEGImage* FImage;
	__property System::Classes::TStream* ImageStream = {read=FImageStream};
	virtual void __fastcall InitData(void);
	
public:
	__fastcall virtual TRPPDFXObject(System::TObject* AOwner);
	__fastcall virtual ~TRPPDFXObject(void);
	__property System::UnicodeString ObjectName = {read=FObjectName, write=FObjectName};
	__property int Width = {read=GetImageWidth, nodefault};
	__property int Height = {read=GetImageHeight, nodefault};
	__property Vcl::Imaging::Jpeg::TJPEGImage* Image = {read=FImage, write=FImage};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TCompressEvent)(System::Classes::TStream* InStream, System::Classes::TStream* OutStream, System::UnicodeString &CompressMethod);

typedef System::Int8 TImageQualityRange;

class PASCALIMPLEMENTATION TRvRenderPDF : public Rprender::TRPRenderStream
{
	typedef Rprender::TRPRenderStream inherited;
	
protected:
	bool FBufferDocument;
	int FCurrentID;
	int FXObjectCurrentID;
	System::Classes::TStream* FDataStream;
	System::Classes::TStringList* FOutlineList;
	System::Classes::TStringList* FPageList;
	System::Classes::TStringList* FXObjectList;
	System::Classes::TStringList* FFontList;
	System::Classes::TStringList* FPatternList;
	System::Classes::TStringList* FXRefList;
	bool FDisableHyperlinks;
	TRPPDFCatalog* FCatalogObject;
	TRPPDFPages* FPagesObject;
	TRPPDFOutlines* FOutlinesObject;
	TRPPDFPage* FCurrentPageObject;
	TRPPDFFont* FCurrentFontObject;
	TRPPDFProcSet* FProcSetObject;
	int XRefPos;
	System::UnicodeString FOpenMode;
	TPDFFontEncoding FFontEncoding;
	double FFontSize;
	double FFontRotation;
	bool FUnderlineFont;
	bool FStrikeoutFont;
	Rpdefine::TFrameMode FFrameMode;
	bool FUseCompression;
	bool FEmbedFonts;
	bool FEmbedBaseFonts;
	bool FirstNewPage;
	TSmallArcBuffer SmallArcData;
	TCompressEvent FOnCompress;
	TImageQualityRange FImageQuality;
	int FMetafileDPI;
	TRPPDFDocInfo* FDocInfo;
	Vcl::Graphics::TBitmap* FFontBitmap;
	bool FFontChanged;
	double __fastcall GetPageHeight(void);
	double __fastcall GetPageWidth(void);
	void __fastcall SetPageHeight(const double AValue);
	void __fastcall SetPageWidth(const double AValue);
	System::Uitypes::TColor __fastcall GetPenColor(void);
	void __fastcall SetPenColor(const System::Uitypes::TColor AValue);
	System::Uitypes::TColor __fastcall GetBrushColor(void);
	void __fastcall SetBrushColor(const System::Uitypes::TColor AValue);
	System::Uitypes::TColor __fastcall GetTextColor(void);
	bool __fastcall IsCompositeFont(void);
	System::UnicodeString __fastcall CreatePattern(Vcl::Graphics::TBrushStyle AStyle, System::Uitypes::TColor AFillColor);
	System::UnicodeString __fastcall CreatePDFFont(System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyles, System::Uitypes::TFontCharset AFontCharset);
	System::UnicodeString __fastcall GetPDFFontName(System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyles, System::Uitypes::TFontCharset AFontCharset);
	bool __fastcall IsTrueType(System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyles, System::Uitypes::TFontCharset AFontCharset);
	TRPPDFFont* __fastcall GetFont(System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyles, System::Uitypes::TFontCharset AFontCharset);
	System::UnicodeString __fastcall GetPatternName(Vcl::Graphics::TBrushStyle AStyle, System::Uitypes::TColor AFillColor);
	TRPPDFPattern* __fastcall GetPattern(System::UnicodeString APatternName);
	bool __fastcall GetDoFill(void);
	bool __fastcall GetDoStroke(void);
	void __fastcall UpdateFont(void);
	TRPPDFFont* __fastcall GetCurrentFontObject(void);
	bool __fastcall GetUnderlineFont(void);
	bool __fastcall GetStrikeoutFont(void);
	double __fastcall GetFontSize(void);
	double __fastcall GetFontRotation(void);
	void __fastcall NewPage(void);
	System::UnicodeString __fastcall DateTimeToPDF(const System::TDateTime Value);
	void __fastcall SetTextColor(System::Uitypes::TColor AColor);
	void __fastcall SetGraphicColor(System::Uitypes::TColor AStrokeColor, System::Uitypes::TColor ABrushColor);
	System::UnicodeString __fastcall FormatEx(const System::UnicodeString AData, System::TVarRec const *AArgs, const int AArgs_High);
	virtual void __fastcall PrintF(const System::UnicodeString AData, System::TVarRec const *AArgs, const int AArgs_High);
	virtual void __fastcall PrintLnF(const System::UnicodeString AData, System::TVarRec const *AArgs, const int AArgs_High);
	virtual void __fastcall PrintRightWidth(double &X1, double &Y1, System::UnicodeString Text, double Width);
	System::UnicodeString __fastcall StrToHex(const System::UnicodeString AValue);
	__property int CurrentID = {read=FCurrentID, write=FCurrentID, nodefault};
	__property int XObjectCurrentID = {read=FXObjectCurrentID, write=FXObjectCurrentID, nodefault};
	__property double PageWidth = {read=GetPageWidth, write=SetPageWidth};
	__property double PageHeight = {read=GetPageHeight, write=SetPageHeight};
	__property double FontRotation = {read=GetFontRotation};
	__property System::Uitypes::TColor PenColor = {read=GetPenColor, write=SetPenColor, nodefault};
	__property System::Uitypes::TColor BrushColor = {read=GetBrushColor, write=SetBrushColor, nodefault};
	__property System::Classes::TStream* DataStream = {read=FDataStream};
	__property System::Uitypes::TColor TextColor = {read=GetTextColor, write=SetTextColor, nodefault};
	__property TRPPDFFont* CurrentFont = {read=GetCurrentFontObject, write=FCurrentFontObject};
	__property bool UnderlineFont = {read=GetUnderlineFont, nodefault};
	__property bool StrikeoutFont = {read=GetStrikeoutFont, nodefault};
	__property double FontSize = {read=GetFontSize};
	__property TRPPDFPage* CurrentPage = {read=FCurrentPageObject, write=FCurrentPageObject};
	__property System::Classes::TStringList* PageList = {read=FPageList};
	__property System::Classes::TStringList* XObjectList = {read=FXObjectList};
	__property System::Classes::TStringList* FontList = {read=FFontList};
	__property System::Classes::TStringList* PatternList = {read=FPatternList};
	__property TRPPDFCatalog* CatalogObject = {read=FCatalogObject};
	__property TRPPDFOutlines* OutlinesObject = {read=FOutlinesObject};
	__property TRPPDFPages* PagesObject = {read=FPagesObject};
	__property TRPPDFProcSet* ProcSetObject = {read=FProcSetObject};
	__property System::Classes::TStringList* XRefList = {read=FXRefList};
	__property System::Classes::TStringList* OutlineList = {read=FOutlineList};
	__property Vcl::Graphics::TBitmap* FontBitmap = {read=FFontBitmap, write=FFontBitmap};
	virtual void __fastcall CenterText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall LeftText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall RightText(const System::UnicodeString psText, const double pfX, const double pfY);
	virtual void __fastcall TextRect(const System::Types::TRect &Rect, double X1, double Y1, System::UnicodeString S1);
	virtual void __fastcall PrintSpaces(const System::UnicodeString AText, const double AX, const double AY, const double AWidth);
	virtual void __fastcall Arc(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3, const double AX4, const double AY4);
	void __fastcall PDFArc(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3, const double AX4, const double AY4, bool ADoClosePath, bool AAllowFill);
	virtual void __fastcall Chord(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3, const double AX4, const double AY4);
	virtual void __fastcall Rectangle(const double pfX1, const double pfY1, const double pfX2, const double pfY2);
	void __fastcall PDFRectangle(const double AX1, const double AY1, const double AX2, const double AY2);
	virtual void __fastcall FillRect(const System::Types::TRect &pRect);
	virtual void __fastcall RoundRect(const double pfX1, const double pfY1, const double pfX2, const double pfY2, const double pfX3, const double pfY3);
	void __fastcall PDFRoundRect(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3);
	virtual void __fastcall Ellipse(const double pfX1, const double pfY1, const double pfX2, const double pfY2);
	void __fastcall PDFEllipse(const double AX1, const double AY1, const double AX2, const double AY2);
	virtual void __fastcall MoveTo(const double pfX1, const double pfY1);
	void __fastcall PDFMoveTo(const double AX, const double AY);
	virtual void __fastcall LineTo(const double pfX1, const double pfY1);
	void __fastcall PDFLineTo(const double AX, const double AY, bool ADoClosePath);
	virtual void __fastcall PrintBitmapRect(const double X1, const double Y1, const double X2, const double Y2, Vcl::Graphics::TBitmap* AGraphic);
	virtual void __fastcall PrintBitmap(const double X1, const double Y1, const double ScaleX, const double ScaleY, Vcl::Graphics::TBitmap* AGraphic);
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall Draw(const double pfX1, const double pfY1, Vcl::Graphics::TGraphic* AGraphic);
	virtual void __fastcall Pie(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3, const double AX4, const double AY4);
	void __fastcall PDFPie(const double AX1, const double AY1, const double AX2, const double AY2, const double AX3, const double AY3, const double AX4, const double AY4, bool ADoClosePath, bool AAllowFill);
	virtual void __fastcall PolyLine(Rprender::TFloatPoint const *PolyLineArr, const int PolyLineArr_High);
	virtual void __fastcall Polygon(Rprender::TFloatPoint const *PointArr, const int PointArr_High);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	virtual void __fastcall PageBegin(void);
	virtual void __fastcall PageEnd(void);
	
public:
	__fastcall virtual TRvRenderPDF(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvRenderPDF(void);
	virtual void __fastcall PrintRender(System::Classes::TStream* NDRStream, System::Sysutils::TFileName OutputFileName);
	void __fastcall CreatePDFObjects(void);
	void __fastcall FreePDFObjects(void);
	void __fastcall PrintLeft(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall PrintCenter(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall PrintRight(const double AX, const double AY, System::UnicodeString AText);
	void __fastcall InitData(void);
	void __fastcall FreeData(void);
	void __fastcall ClearXObjects(void);
	void __fastcall SetIDs(void);
	void __fastcall WriteHeader(void);
	void __fastcall WriteDocInfo(void);
	void __fastcall WriteCatalog(void);
	void __fastcall WriteOutlinesObject(void);
	void __fastcall WritePagesObject(void);
	void __fastcall WritePages(void);
	void __fastcall WriteProcSet(void);
	void __fastcall WriteFont(void);
	void __fastcall WriteFonts(void);
	void __fastcall WritePattern(TRPPDFPattern* Pattern);
	void __fastcall WritePatterns(void);
	void __fastcall WriteXObjects(void);
	void __fastcall WriteXRef(void);
	void __fastcall WriteTrailer(void);
	void __fastcall WriteStartXRef(void);
	void __fastcall WriteEof(void);
	void __fastcall RegisterObject(void);
	void __fastcall GenerateBook(void);
	System::UnicodeString __fastcall AddJPG(Vcl::Imaging::Jpeg::TJPEGImage* const AImage, bool AReuseJPG);
	void __fastcall PrintJPG(const double AX1, const double AY1, const double AX2, const double AY2, System::UnicodeString AName);
	__property bool DoStroke = {read=GetDoStroke, nodefault};
	__property bool DoFill = {read=GetDoFill, nodefault};
	__property bool EmbedBaseFonts = {read=FEmbedBaseFonts, write=FEmbedBaseFonts, nodefault};
	
__published:
	__property OnDecodeImage;
	__property bool UseCompression = {read=FUseCompression, write=FUseCompression, default=0};
	__property bool EmbedFonts = {read=FEmbedFonts, write=FEmbedFonts, default=0};
	__property TCompressEvent OnCompress = {read=FOnCompress, write=FOnCompress};
	__property TImageQualityRange ImageQuality = {read=FImageQuality, write=FImageQuality, default=90};
	__property int MetafileDPI = {read=FMetafileDPI, write=FMetafileDPI, default=300};
	__property TPDFFontEncoding FontEncoding = {read=FFontEncoding, write=FFontEncoding, default=2};
	__property TRPPDFDocInfo* DocInfo = {read=FDocInfo, write=FDocInfo};
	__property bool BufferDocument = {read=FBufferDocument, write=FBufferDocument, default=1};
	__property bool DisableHyperlinks = {read=FDisableHyperlinks, write=FDisableHyperlinks, default=0};
};


typedef TRvRenderPDF TRpRenderPDF;

//-- var, const, procedure ---------------------------------------------------
static const System::Word NUM_CHARS = System::Word(0x100);
extern DELPHI_PACKAGE System::UnicodeString PDFVersion;
static const System::Int8 DPI_MULTIPLIER = System::Int8(0x48);
extern DELPHI_PACKAGE Rprenderpdf__1 FontNames;
extern DELPHI_PACKAGE Rprenderpdf__2 FontEncodingNames;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsCourier;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsHelvetica;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsHelveticaBold;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsHelveticaOblique;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsHelveticaBoldOblique;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsTimesRoman;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsTimesBold;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsTimesItalic;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsTimesBoldItalic;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsSymbol;
extern DELPHI_PACKAGE TFontWidthTable FontWidthsZapfDingbats;
}	/* namespace Rprenderpdf */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERPDF)
using namespace Rprenderpdf;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprenderpdfHPP
