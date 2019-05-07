// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFormStatus.pas' rev: 29.00 (Windows)

#ifndef RpformstatusHPP
#define RpformstatusHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpSystem.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpformstatus
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRpStatusForm;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRpStatusForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
__published:
	Vcl::Stdctrls::TButton* CancelButton;
	Vcl::Stdctrls::TLabel* StatusLabel;
	void __fastcall CancelButtonClick(System::TObject* Sender);
	
public:
	Rpsystem::TRvSystem* ReportSystem;
	bool FormClosed;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TRpStatusForm(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TRpStatusForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TRpStatusForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TRpStatusForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRpStatusForm* RpStatusForm;
}	/* namespace Rpformstatus */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFORMSTATUS)
using namespace Rpformstatus;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpformstatusHPP
