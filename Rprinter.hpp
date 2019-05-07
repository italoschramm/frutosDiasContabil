// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Rprinter.pas' rev: 29.00 (Windows)

#ifndef RprinterHPP
#define RprinterHPP

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
#include <RpDevice.hpp>
#include <RpCanvas.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprinter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TReportPrinter;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TReportPrinter : public Rpcanvas::TCanvasReport
{
	typedef Rpcanvas::TCanvasReport inherited;
	
public:
	__fastcall virtual TReportPrinter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TReportPrinter(void);
	virtual void __fastcall Start(void);
	virtual void __fastcall Finish(void);
	virtual void __fastcall NewPage(void);
	
__published:
	__property FirstPage = {default=1};
	__property LastPage = {default=9999};
	__property StatusLabel;
	__property StatusFormat = {default=0};
	__property StatusText;
	__property LineHeightMethod = {default=1};
	__property LinesPerInch = {default=6};
	__property Units = {default=0};
	__property UnitsFactor = {default=0};
	__property MarginLeft = {default=0};
	__property MarginRight = {default=0};
	__property MarginTop = {default=0};
	__property MarginBottom = {default=0};
	__property TabShade = {default=0};
	__property Title = {default=0};
	__property TextBKMode = {default=0};
	__property Copies = {default=1};
	__property Orientation;
	__property ScaleX = {default=0};
	__property ScaleY = {default=0};
	__property OnPrint;
	__property OnPrintPage;
	__property OnBeforePrint;
	__property OnAfterPrint;
	__property OnNewPage;
	__property OnNewColumn;
	__property OnPrintHeader;
	__property OnPrintFooter;
	__property OnEndOfSection;
	__property OnDecodeImage;
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rprinter */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRINTER)
using namespace Rprinter;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprinterHPP
