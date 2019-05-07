// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpSect.pas' rev: 29.00 (Windows)

#ifndef RpsectHPP
#define RpsectHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.Classes.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpsect
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TReportSection;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TDistMethod : unsigned char { dmPage, dmMargin, dmSpecial };

enum DECLSPEC_DENUM THeightMethod : unsigned char { hmUnits, hmLines };

class PASCALIMPLEMENTATION TReportSection : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	double FLeft;
	double FRight;
	double FTop;
	double FBottom;
	double FMinHeight;
	TDistMethod FLeftMethod;
	TDistMethod FRightMethod;
	TDistMethod FTopMethod;
	TDistMethod FBottomMethod;
	THeightMethod FHeightMethod;
	bool FEnabled;
	int FTabIndex;
	int FFontIndex;
	bool FNoNewPage;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	void __fastcall SetLeft(double Value);
	void __fastcall SetRight(double Value);
	void __fastcall SetTop(double Value);
	void __fastcall SetBottom(double Value);
	void __fastcall SetMinHeight(double Value);
	void __fastcall SetLeftMethod(TDistMethod Value);
	void __fastcall SetRightMethod(TDistMethod Value);
	void __fastcall SetTopMethod(TDistMethod Value);
	void __fastcall SetBottomMethod(TDistMethod Value);
	void __fastcall SetTabIndex(int Value);
	void __fastcall SetFontIndex(int Value);
	void __fastcall SetSections(Rpbase::TBaseReport* BaseReport);
	
public:
	bool __fastcall SetupSection(Rpbase::TBaseReport* BaseReport);
	__fastcall TReportSection(void);
	__fastcall virtual ~TReportSection(void);
	__property bool NoNewPage = {read=FNoNewPage, write=FNoNewPage, nodefault};
	
__published:
	__property double Left = {read=FLeft, write=SetLeft};
	__property double Right = {read=FRight, write=SetRight};
	__property double Top = {read=FTop, write=SetTop};
	__property double Bottom = {read=FBottom, write=SetBottom};
	__property double MinHeight = {read=FMinHeight, write=SetMinHeight};
	__property TDistMethod LeftMethod = {read=FLeftMethod, write=SetLeftMethod, default=1};
	__property TDistMethod RightMethod = {read=FRightMethod, write=SetRightMethod, default=1};
	__property TDistMethod TopMethod = {read=FTopMethod, write=SetTopMethod, default=2};
	__property TDistMethod BottomMethod = {read=FBottomMethod, write=SetBottomMethod, default=1};
	__property THeightMethod HeightMethod = {read=FHeightMethod, write=FHeightMethod, default=1};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=1};
	__property int TabIndex = {read=FTabIndex, write=SetTabIndex, default=0};
	__property int FontIndex = {read=FFontIndex, write=SetFontIndex, default=0};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpsect */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPSECT)
using namespace Rpsect;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpsectHPP
