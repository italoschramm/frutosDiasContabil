// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFormSetup.pas' rev: 29.00 (Windows)

#ifndef RpformsetupHPP
#define RpformsetupHPP

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
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ComCtrls.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpDevice.hpp>
#include <RpDefine.hpp>
#include <RpSystem.hpp>
#include <RpRenderPrinter.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpformsetup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRPSetupForm;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRPSetupForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
__published:
	Vcl::Stdctrls::TGroupBox* DestGB;
	Vcl::Stdctrls::TRadioButton* PrinterRB;
	Vcl::Stdctrls::TRadioButton* PreviewRB;
	Vcl::Stdctrls::TRadioButton* FileRB;
	Vcl::Stdctrls::TEdit* editFileName;
	Vcl::Stdctrls::TButton* bbtnOK;
	Vcl::Stdctrls::TButton* CancelBB;
	Vcl::Stdctrls::TButton* SetupBB;
	Vcl::Stdctrls::TGroupBox* RangeGB;
	Vcl::Buttons::TSpeedButton* FileNameSB;
	Vcl::Dialogs::TSaveDialog* dlogSave;
	Vcl::Stdctrls::TRadioButton* AllRB;
	Vcl::Stdctrls::TRadioButton* SelectionRB;
	Vcl::Stdctrls::TRadioButton* PagesRB;
	Vcl::Stdctrls::TLabel* FromLabel;
	Vcl::Stdctrls::TEdit* FromED;
	Vcl::Stdctrls::TLabel* ToLabel;
	Vcl::Stdctrls::TEdit* ToED;
	Vcl::Stdctrls::TLabel* SelectionLabel;
	Vcl::Stdctrls::TEdit* SelectionED;
	Vcl::Stdctrls::TGroupBox* GroupBox1;
	Vcl::Stdctrls::TLabel* PrinterLabel;
	Vcl::Stdctrls::TGroupBox* GroupBox2;
	Vcl::Stdctrls::TEdit* CopiesED;
	Vcl::Stdctrls::TLabel* CopiesLabel;
	Vcl::Stdctrls::TCheckBox* CollateCK;
	Vcl::Stdctrls::TCheckBox* DuplexCK;
	Vcl::Comctrls::TPageControl* PageControl1;
	Vcl::Comctrls::TTabSheet* TabSheet1;
	Vcl::Comctrls::TTabSheet* TabSheet2;
	Vcl::Stdctrls::TComboBox* cboxFormat;
	Vcl::Stdctrls::TLabel* Label1;
	void __fastcall SetupBBClick(System::TObject* Sender);
	void __fastcall FileNameSBClick(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall PagesRBClick(System::TObject* Sender);
	void __fastcall SelectionRBClick(System::TObject* Sender);
	void __fastcall AllRBClick(System::TObject* Sender);
	void __fastcall PrinterRBClick(System::TObject* Sender);
	void __fastcall FileRBClick(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall bbtnOKClick(System::TObject* Sender);
	void __fastcall editFileNameChange(System::TObject* Sender);
	void __fastcall FormKeyPress(System::TObject* Sender, System::WideChar &Key);
	void __fastcall SelectionEDKeyPress(System::TObject* Sender, System::WideChar &Key);
	void __fastcall cboxFormatChange(System::TObject* Sender);
	
private:
	void __fastcall UpdateForm(void);
	void __fastcall GetRenderList(void);
	
public:
	Rpsystem::TRvSystem* ReportSystem;
	Rprenderprinter::TRvRenderPrinter* FilePrinter;
	bool PreviewSetup;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TRPSetupForm(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TRPSetupForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TRPSetupForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TRPSetupForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRPSetupForm* RPSetupForm;
}	/* namespace Rpformsetup */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFORMSETUP)
using namespace Rpformsetup;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpformsetupHPP
