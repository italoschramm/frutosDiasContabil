// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRave.pas' rev: 29.00 (Windows)

#ifndef RpraveHPP
#define RpraveHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Controls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RvDefine.hpp>
#include <RvClass.hpp>
#include <RvProj.hpp>
#include <RvUtil.hpp>
#include <RvCmHuff.hpp>
#include <RvData.hpp>
#include <RvDirectDataView.hpp>
#include <RvDataField.hpp>
#include <RvSecurity.hpp>
#include <RvDatabase.hpp>
#include <RvDriverDataView.hpp>
#include <RvDataLink.hpp>
#include <RvLEModule.hpp>
#include <RvLESystem.hpp>
#include <RvCsStd.hpp>
#include <RvCsRpt.hpp>
#include <RvCsDraw.hpp>
#include <RvCsData.hpp>
#include <RvCsBars.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprave
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRvProject;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRvProject : public Rpdefine::TRpComponent
{
	typedef Rpdefine::TRpComponent inherited;
	
protected:
	bool FActive;
	System::UnicodeString FProjectFile;
	Rpdefine::TRpComponent* FEngine;
	System::UnicodeString FDLLFile;
	bool FLoadDesigner;
	bool FStoreRAV;
	System::Classes::TMemoryStream* RaveBlob;
	System::TDateTime FRaveBlobDateTime;
	Rvproj::TRaveProjectManager* FProjMan;
	Rvclass::TRaveContainerControl* ProjOwner;
	System::Classes::TNotifyEvent FOnCreate;
	System::Classes::TNotifyEvent FOnDestroy;
	System::Classes::TNotifyEvent FOnDesignerSave;
	System::Classes::TNotifyEvent FOnDesignerSaveAs;
	System::Classes::TNotifyEvent FOnDesignerNew;
	System::Classes::TNotifyEvent FOnDesignerOpen;
	System::Classes::TNotifyEvent FOnDesignerShow;
	System::Classes::TNotifyEvent FOnBeforeOpen;
	System::Classes::TNotifyEvent FOnAfterOpen;
	System::Classes::TNotifyEvent FOnBeforeClose;
	System::Classes::TNotifyEvent FOnAfterClose;
	virtual void __fastcall CreateEvent(void);
	virtual void __fastcall DestroyEvent(void);
	virtual void __fastcall DesignerShowEvent(void);
	virtual void __fastcall BeforeOpenEvent(void);
	virtual void __fastcall AfterOpenEvent(void);
	virtual void __fastcall BeforeCloseEvent(void);
	virtual void __fastcall AfterCloseEvent(void);
	virtual void __fastcall Loaded(void);
	System::UnicodeString __fastcall GetReportDesc(void);
	System::UnicodeString __fastcall GetReportName(void);
	System::UnicodeString __fastcall GetReportFullName(void);
	void __fastcall SetActive(bool Value);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetEngine(Rpdefine::TRpComponent* Value);
	void __fastcall ReadRaveBlobOld(System::Classes::TReader* Reader);
	void __fastcall ReadRaveBlob(System::Classes::TStream* Stream);
	void __fastcall WriteRaveBlob(System::Classes::TStream* Stream);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	Rvproj::TRaveProjectManager* __fastcall GetProjMan(void);
	
public:
	__fastcall virtual TRvProject(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRvProject(void);
	void __fastcall New(void);
	__classmethod void __fastcall RegisterRaveUnits();
	void __fastcall Open(void);
	void __fastcall Close(void);
	void __fastcall Save(void);
	void __fastcall Execute(void);
	void __fastcall ExecuteReport(System::UnicodeString ReportName);
	bool __fastcall Design(void);
	bool __fastcall DesignReport(System::UnicodeString ReportName);
	void __fastcall GetReportList(System::Classes::TStrings* ReportList, bool FullNames);
	void __fastcall GetReportCategoryList(System::Classes::TStrings* ReportList, System::UnicodeString Categories, bool FullNames);
	bool __fastcall SelectReport(System::UnicodeString ReportName, bool FullName);
	void __fastcall ReportDescToMemo(Vcl::Stdctrls::TCustomMemo* Memo);
	void __fastcall SetParam(System::UnicodeString Param, System::UnicodeString Value);
	System::UnicodeString __fastcall GetParam(System::UnicodeString Param);
	void __fastcall ClearParams(void);
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	void __fastcall SaveToFile(System::UnicodeString FileName);
	void __fastcall SaveToStream(System::Classes::TStream* Stream);
	void __fastcall LoadRaveBlob(System::Classes::TStream* Stream);
	void __fastcall SaveRaveBlob(System::Classes::TStream* Stream);
	void __fastcall ClearRaveBlob(void);
	void __fastcall SetProjectFile(System::UnicodeString Value);
	__property bool Active = {read=FActive, write=SetActive, nodefault};
	__property Rvproj::TRaveProjectManager* ProjMan = {read=GetProjMan};
	__property System::TDateTime RaveBlobDateTime = {read=FRaveBlobDateTime};
	__property System::UnicodeString ReportDesc = {read=GetReportDesc};
	__property System::UnicodeString ReportName = {read=GetReportName};
	__property System::UnicodeString ReportFullName = {read=GetReportFullName};
	
__published:
	__property System::UnicodeString DLLFile = {read=FDLLFile, write=FDLLFile};
	__property Rpdefine::TRpComponent* Engine = {read=FEngine, write=SetEngine, default=0};
	__property bool LoadDesigner = {read=FLoadDesigner, write=FLoadDesigner, default=0};
	__property System::UnicodeString ProjectFile = {read=FProjectFile, write=SetProjectFile};
	__property bool StoreRAV = {read=FStoreRAV, write=FStoreRAV, stored=false, nodefault};
	__property System::Classes::TNotifyEvent OnCreate = {read=FOnCreate, write=FOnCreate};
	__property System::Classes::TNotifyEvent OnDestroy = {read=FOnDestroy, write=FOnDestroy};
	__property System::Classes::TNotifyEvent OnDesignerSave = {read=FOnDesignerSave, write=FOnDesignerSave};
	__property System::Classes::TNotifyEvent OnDesignerSaveAs = {read=FOnDesignerSaveAs, write=FOnDesignerSaveAs};
	__property System::Classes::TNotifyEvent OnDesignerShow = {read=FOnDesignerShow, write=FOnDesignerShow};
	__property System::Classes::TNotifyEvent OnBeforeOpen = {read=FOnBeforeOpen, write=FOnBeforeOpen};
	__property System::Classes::TNotifyEvent OnAfterOpen = {read=FOnAfterOpen, write=FOnAfterOpen};
	__property System::Classes::TNotifyEvent OnBeforeClose = {read=FOnBeforeClose, write=FOnBeforeClose};
	__property System::Classes::TNotifyEvent OnAfterClose = {read=FOnAfterClose, write=FOnAfterClose};
};


typedef void __stdcall (*TRaveDesignerSaveCallbackProc)(void * Buf, int Size, void * Data);

typedef void __stdcall (*TRaveCreateProc)(void * RVInfo, NativeUInt AppHandle);

typedef void __fastcall (*TRaveProc)(void);

typedef void __stdcall (*TRaveDesignerCreateProc)(void * Data, Rvdefine::TRaveSaveCallbackProc SaveCallback, Rvdefine::TRaveSaveCallbackProc SaveAsCallback);

typedef void __stdcall (*TRaveDesignerLoadProc)(void * Buf, int Size);

typedef bool __stdcall (*TRaveDesignerSaveProc)(void * &Buf, int &Size);

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRaveCreateProc RaveCreate;
extern DELPHI_PACKAGE TRaveDesignerCreateProc DesignerCreate;
extern DELPHI_PACKAGE TRaveDesignerLoadProc DesignerLoad;
extern DELPHI_PACKAGE TRaveProc DesignerShow;
extern DELPHI_PACKAGE TRaveDesignerSaveProc DesignerSave;
extern DELPHI_PACKAGE TRaveProc DesignerFree;
extern DELPHI_PACKAGE TRaveProc RaveFree;
extern DELPHI_PACKAGE NativeUInt __fastcall LoadRaveDLL(System::UnicodeString DLLName);
extern DELPHI_PACKAGE void __fastcall CloseRaveDLL(void);
}	/* namespace Rprave */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRAVE)
using namespace Rprave;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpraveHPP
