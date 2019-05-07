// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRenderText.pas' rev: 29.00 (Windows)

#ifndef RprendertextHPP
#define RprendertextHPP

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
#include <RpRender.hpp>
#include <RpDefine.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprendertext
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTextItem;
class DELPHICLASS TRvRenderText;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTextItem : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	int Col;
	int Line;
	System::UnicodeString Data;
public:
	/* TObject.Create */ inline __fastcall TTextItem(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTextItem(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRvRenderText : public Rprender::TRPRenderStream
{
	typedef Rprender::TRPRenderStream inherited;
	
protected:
	double FCPI;
	double FLPI;
	System::Classes::TList* PageList;
	double FLeftBorder;
	double FTopBorder;
	bool FFormFeed;
	System::UnicodeString FFormFeedStr;
	double __fastcall TextWidth(System::UnicodeString Text);
	int __fastcall ColAt(double Pos);
	int __fastcall LineAt(double Pos);
	System::UnicodeString __fastcall MakeSpaces(System::Byte Count);
	void __fastcall ClearPageList(void);
	void __fastcall AddTextItem(TTextItem* &TextItem, int Line);
	void __fastcall WriteStr(System::UnicodeString Value);
	virtual void __fastcall PageEnd(void);
	virtual void __fastcall LeftText(const System::UnicodeString AText, const double AX, const double AY);
	virtual void __fastcall CenterText(const System::UnicodeString AText, const double AX, const double AY);
	virtual void __fastcall RightText(const System::UnicodeString AText, const double AX, const double AY);
	virtual void __fastcall PrintSpaces(const System::UnicodeString AText, const double AX, const double AY, const double AWidth);
	virtual void __fastcall PrintRightWidth(double &AX, double &AY, System::UnicodeString AText, double Width);
	virtual void __fastcall DocBegin(void);
	virtual void __fastcall DocEnd(void);
	
public:
	__fastcall virtual TRvRenderText(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvRenderText(void);
	System::Types::TSize __fastcall GetTextExtent(System::UnicodeString Value);
	virtual void __fastcall PrintRender(System::Classes::TStream* NDRStream, System::Sysutils::TFileName OutputFileName);
	__property System::UnicodeString FormFeedStr = {read=FFormFeedStr, write=FFormFeedStr};
	
__published:
	__property double TopBorder = {read=FTopBorder, write=FTopBorder};
	__property double LeftBorder = {read=FLeftBorder, write=FLeftBorder};
	__property double CPI = {read=FCPI, write=FCPI};
	__property double LPI = {read=FLPI, write=FLPI};
	__property bool FormFeed = {read=FFormFeed, write=FFormFeed, default=1};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprendertext */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRENDERTEXT)
using namespace Rprendertext;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprendertextHPP
