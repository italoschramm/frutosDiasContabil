// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFormPreview.pas' rev: 29.00 (Windows)

#ifndef RpformpreviewHPP
#define RpformpreviewHPP

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
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ToolWin.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpBase.hpp>
#include <RpFiler.hpp>
#include <RpRenderPrinter.hpp>
#include <RpRenderPreview.hpp>
#include <RpDefine.hpp>
#include <RpSystem.hpp>
#include <RpFormSetup.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpformpreview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRavePreviewForm;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRavePreviewForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
__published:
	Vcl::Forms::TScrollBox* ScrollBox1;
	Vcl::Actnlist::TActionList* ActionList1;
	Vcl::Menus::TMainMenu* MainMenu1;
	Vcl::Menus::TPopupMenu* PopupMenu1;
	Vcl::Actnlist::TAction* actnFile_Print;
	Vcl::Actnlist::TAction* actnFile_Save;
	Vcl::Actnlist::TAction* actnFile_Exit;
	Vcl::Actnlist::TAction* actnFile_Open;
	Vcl::Comctrls::TStatusBar* sbarMain;
	Vcl::Actnlist::TAction* actnPage_First;
	Vcl::Actnlist::TAction* actnPage_Next;
	Vcl::Actnlist::TAction* actnPage_Previous;
	Vcl::Actnlist::TAction* actnPage_Last;
	Vcl::Actnlist::TAction* actnZoom_In;
	Vcl::Actnlist::TAction* actnZoom_Out;
	Vcl::Actnlist::TAction* actnZoom_PageWidth;
	Vcl::Actnlist::TAction* actnZoom_Page;
	Vcl::Menus::TMenuItem* Page1;
	Vcl::Menus::TMenuItem* Zoom1;
	Vcl::Menus::TMenuItem* First1;
	Vcl::Menus::TMenuItem* Next1;
	Vcl::Menus::TMenuItem* Previous1;
	Vcl::Menus::TMenuItem* Last1;
	Vcl::Menus::TMenuItem* N2;
	Vcl::Menus::TMenuItem* GotoPage1;
	Vcl::Menus::TMenuItem* In1;
	Vcl::Menus::TMenuItem* Out1;
	Vcl::Menus::TMenuItem* N3;
	Vcl::Menus::TMenuItem* Page2;
	Vcl::Menus::TMenuItem* PageWidth1;
	Vcl::Menus::TMenuItem* In2;
	Vcl::Menus::TMenuItem* Out2;
	Vcl::Controls::TImageList* ilstActions;
	Vcl::Comctrls::TToolBar* ToolBar1;
	Vcl::Comctrls::TToolButton* ToolButton1;
	Vcl::Comctrls::TToolButton* ToolButton2;
	Vcl::Comctrls::TToolButton* ToolButton3;
	Vcl::Comctrls::TToolButton* ToolButton4;
	Vcl::Comctrls::TToolButton* ToolButton5;
	Vcl::Comctrls::TToolButton* ToolButton6;
	Vcl::Comctrls::TToolButton* ToolButton7;
	Vcl::Comctrls::TToolButton* ToolButton8;
	Vcl::Comctrls::TToolButton* ToolButton10;
	Vcl::Comctrls::TToolButton* ToolButton11;
	Vcl::Comctrls::TToolButton* ToolButton12;
	Vcl::Comctrls::TToolButton* ToolButton13;
	Vcl::Comctrls::TToolButton* ToolButton14;
	Vcl::Dialogs::TOpenDialog* dlogOpen;
	Vcl::Dialogs::TSaveDialog* dlogSave;
	Vcl::Menus::TMenuItem* File1;
	Vcl::Menus::TMenuItem* Open1;
	Vcl::Menus::TMenuItem* SaveAs1;
	Vcl::Menus::TMenuItem* Print1;
	Vcl::Menus::TMenuItem* N1;
	Vcl::Menus::TMenuItem* Exit1;
	Vcl::Stdctrls::TEdit* ZoomEdit;
	Vcl::Stdctrls::TEdit* PageEdit;
	Vcl::Extctrls::TPanel* PageLabel;
	Vcl::Extctrls::TPanel* Panel1;
	Vcl::Extctrls::TPanel* Panel2;
	Vcl::Comctrls::TToolButton* ToolButton9;
	Vcl::Comctrls::TToolButton* ToolButton15;
	Vcl::Extctrls::TPanel* Panel3;
	Vcl::Extctrls::TTimer* PreviewTimer;
	void __fastcall FormClose(System::TObject* Sender, System::Uitypes::TCloseAction &Action);
	void __fastcall NDRPreviewPageChange(System::TObject* Sender);
	void __fastcall NDRPreviewZoomChange(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall FormKeyPress(System::TObject* Sender, System::WideChar &Key);
	void __fastcall actnFile_ExitExecute(System::TObject* Sender);
	void __fastcall actnPage_GotoPageExecute(System::TObject* Sender);
	void __fastcall actnZoom_InExecute(System::TObject* Sender);
	void __fastcall actnZoom_OutExecute(System::TObject* Sender);
	void __fastcall actnPage_PreviousExecute(System::TObject* Sender);
	void __fastcall actnPage_NextExecute(System::TObject* Sender);
	void __fastcall actnZoom_PageWidthExecute(System::TObject* Sender);
	void __fastcall actnZoom_PageExecute(System::TObject* Sender);
	void __fastcall actnFile_PrintExecute(System::TObject* Sender);
	void __fastcall actnPage_FirstExecute(System::TObject* Sender);
	void __fastcall actnPage_LastExecute(System::TObject* Sender);
	void __fastcall actnPage_FirstUpdate(System::TObject* Sender);
	void __fastcall actnPage_PreviousUpdate(System::TObject* Sender);
	void __fastcall actnPage_NextUpdate(System::TObject* Sender);
	void __fastcall actnPage_LastUpdate(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall actnFile_SaveExecute(System::TObject* Sender);
	void __fastcall actnFile_OpenExecute(System::TObject* Sender);
	void __fastcall actnFile_PrintUpdate(System::TObject* Sender);
	void __fastcall actnFile_SaveUpdate(System::TObject* Sender);
	void __fastcall actnZoom_InUpdate(System::TObject* Sender);
	void __fastcall actnZoom_OutUpdate(System::TObject* Sender);
	void __fastcall actnZoom_PageWidthUpdate(System::TObject* Sender);
	void __fastcall actnZoom_PageUpdate(System::TObject* Sender);
	void __fastcall ZoomEditKeyPress(System::TObject* Sender, System::WideChar &Key);
	void __fastcall ZoomEditExit(System::TObject* Sender);
	void __fastcall PageEditExit(System::TObject* Sender);
	void __fastcall PageEditKeyPress(System::TObject* Sender, System::WideChar &Key);
	void __fastcall PreviewTimerTimer(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	
protected:
	int FPageNum;
	System::Classes::TNotifyEvent FOnGenerate;
	System::UnicodeString FInputFileName;
	System::Classes::TStream* FInputStream;
	System::Classes::TNotifyEvent FOnAfterPreviewPrint;
	bool FAlternateNdrLoaded;
	virtual void __fastcall AfterPreviewPrintEvent(void);
	void __fastcall SetSaveOptions(Vcl::Dialogs::TSaveDialog* SaveDialog);
	void __fastcall NewRenderPage(System::TObject* Sender);
	void __fastcall SetButtonState(void);
	__property bool AlternateNdrLoaded = {read=FAlternateNdrLoaded, write=FAlternateNdrLoaded, nodefault};
	
public:
	Rpsystem::TRvSystem* ReportSystem;
	bool FormClosed;
	Rprenderprinter::TRvRenderPrinter* RvRenderPrinter;
	Rprenderpreview::TRvRenderPreview* RvRenderPreview;
	void __fastcall InitFromRPSystem(void);
	void __fastcall OpenFile(const System::UnicodeString AFileName);
	__classmethod void __fastcall PreviewFile(const System::UnicodeString AFileName);
	__property int PageNum = {read=FPageNum, write=FPageNum, nodefault};
	__property System::Classes::TNotifyEvent OnGenerate = {read=FOnGenerate, write=FOnGenerate};
	__property System::Classes::TNotifyEvent OnAfterPreviewPrint = {read=FOnAfterPreviewPrint, write=FOnAfterPreviewPrint};
	__property System::UnicodeString InputFileName = {read=FInputFileName, write=FInputFileName};
	__property System::Classes::TStream* InputStream = {read=FInputStream, write=FInputStream};
public:
	/* TCustomForm.Create */ inline __fastcall virtual TRavePreviewForm(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TRavePreviewForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TRavePreviewForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TRavePreviewForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRavePreviewForm* RavePreviewForm;
}	/* namespace Rpformpreview */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFORMPREVIEW)
using namespace Rpformpreview;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpformpreviewHPP
