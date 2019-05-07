// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvProj.pas' rev: 29.00 (Windows)

#ifndef RvprojHPP
#define RvprojHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Graphics.hpp>
#include <System.TypInfo.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RvData.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpSystem.hpp>
#include <RpDevice.hpp>
#include <RvSecurity.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvproj
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveReport;
class DELPHICLASS TRaveModuleManager;
class DELPHICLASS TRaveProjectManager;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTagKind : unsigned char { tkProject, tkExport, tkDataView, tkPage, tkReport, tkReportPage, tkDataObject };

typedef void __fastcall (__closure *TImportConflictEvent)(Rvclass::TRaveProjectItem* CurrentItem, System::UnicodeString &ImportName);

class PASCALIMPLEMENTATION TRaveReport : public Rvclass::TRaveProjectItem
{
	typedef Rvclass::TRaveProjectItem inherited;
	
protected:
	System::UnicodeString FCategory;
	System::UnicodeString FLastActivePage;
	System::Classes::TNotifyEvent SaveOnPrint;
	System::Classes::TNotifyEvent SaveBeforePrint;
	System::Classes::TNotifyEvent SaveAfterPrint;
	System::Classes::TList* LoadedList;
	System::Classes::TStrings* FixUpList;
	Rvclass::TRavePage* FFirstPage;
	int FCopies;
	Rvclass::TRaveComponentList* FPageList;
	bool FAlwaysGenerate;
	Rvdefine::TRavePrinterCollate FCollate;
	Rvdefine::TRavePrinterDuplex FDuplex;
	System::UnicodeString FPrinter;
	Rvdefine::TRavePrinterResolution FResolution;
	int FMaxPages;
	Rvsecurity::TRaveBaseSecurity* FSecurityControl;
	TRaveProjectManager* FExecProject;
	void __fastcall SetPageList(Rvclass::TRaveComponentList* Value);
	int __fastcall GetLoadedCount(void);
	Rvclass::TRavePage* __fastcall GetLoaded(int Index);
	void __fastcall RSPrint(System::TObject* Sender);
	void __fastcall RSBeforePrint(System::TObject* Sender);
	void __fastcall RSAfterPrint(System::TObject* Sender);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
public:
	__fastcall virtual TRaveReport(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveReport(void);
	virtual void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall Open(void);
	virtual void __fastcall Close(void);
	Rvclass::TRavePage* __fastcall NewPage(void);
	void __fastcall LoadPage(Rvclass::TRavePage* Page);
	void __fastcall UnloadPage(Rvclass::TRavePage* Page);
	void __fastcall ProcessLoaded(void);
	void __fastcall Execute(Rpdefine::TRpComponent* Engine);
	void __fastcall InternalExecute(Rpdefine::TRpComponent* Engine);
	__property int LoadedPageCount = {read=GetLoadedCount, nodefault};
	__property Rvclass::TRavePage* LoadedPage[int Index] = {read=GetLoaded};
	__property System::UnicodeString LastActivePage = {read=FLastActivePage, write=FLastActivePage};
	__property TRaveProjectManager* ExecProject = {read=FExecProject};
	
__published:
	__property bool AlwaysGenerate = {read=FAlwaysGenerate, write=FAlwaysGenerate, default=0};
	__property System::UnicodeString Category = {read=FCategory, write=FCategory};
	__property int Copies = {read=FCopies, write=FCopies, default=0};
	__property Rvclass::TRavePage* FirstPage = {read=FFirstPage, write=FFirstPage, default=0};
	__property Rvclass::TRaveComponentList* PageList = {read=FPageList, write=SetPageList};
	__property Rvdefine::TRavePrinterCollate Collate = {read=FCollate, write=FCollate, default=2};
	__property Rvdefine::TRavePrinterDuplex Duplex = {read=FDuplex, write=FDuplex, default=3};
	__property int MaxPages = {read=FMaxPages, write=FMaxPages, default=0};
	__property Parameters;
	__property PIVars;
	__property System::UnicodeString Printer = {read=FPrinter, write=FPrinter};
	__property Rvdefine::TRavePrinterResolution Resolution = {read=FResolution, write=FResolution, default=4};
	__property Rvsecurity::TRaveBaseSecurity* SecurityControl = {read=FSecurityControl, write=FSecurityControl};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveModuleManager : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Classes::TList* ModuleList;
	TRaveProjectManager* FProjectManager;
	int __fastcall ModuleIndex(System::UnicodeString ModuleName);
	int __fastcall LoadModule(System::UnicodeString ModuleName);
	Rvclass::TRaveModule* __fastcall GetRaveModule(int Index);
	
public:
	__fastcall TRaveModuleManager(TRaveProjectManager* AProjectManager);
	__fastcall virtual ~TRaveModuleManager(void);
	Rvclass::TRaveModule* __fastcall GetModule(System::UnicodeString ModuleName);
	Rvclass::TRaveModule* __fastcall FindModule(System::UnicodeString ModuleName);
	int __fastcall ModuleCount(void);
	void __fastcall LoadModules(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall SaveModules(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall ReleaseModule(Rvclass::TRaveModule* AModule);
	__property TRaveProjectManager* ProjectManager = {read=FProjectManager};
	__property Rvclass::TRaveModule* Module[int Index] = {read=GetRaveModule};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveProjectManager : public Rvclass::TRaveProjectItem
{
	typedef Rvclass::TRaveProjectItem inherited;
	
protected:
	System::Classes::TStringList* ForwardRefList;
	System::Classes::TStringList* RenameRefList;
	System::UnicodeString LastActiveReport;
	System::Classes::TList* FReportList;
	System::Classes::TList* FGlobalPageList;
	System::Classes::TList* FDataObjectList;
	TRaveReport* FActiveReport;
	bool FSaved;
	System::UnicodeString FFileName;
	System::UnicodeString Signature;
	bool FDataChanged;
	bool FPrinting;
	System::Classes::TList* ExportList;
	bool Importing;
	bool ImportReplace;
	TImportConflictEvent FOnImportConflict;
	int FVersion;
	bool FUnicodeEnabled;
	System::Classes::TStrings* FCategories;
	System::Classes::TStringList* Params;
	Rpdefine::TPrintUnits FUnits;
	double FUnitsFactor;
	bool FStreamParamValues;
	bool IsLoading;
	TRaveProjectManager* FMasterProject;
	bool FNoDesigner;
	Rvsecurity::TRaveBaseSecurity* FSecurityControl;
	System::UnicodeString FAdminPassword;
	Rpbase::TBaseReport* FBaseReport;
	TRaveModuleManager* FModuleManager;
	virtual void __fastcall SetDepth(Rvclass::TRaveComponent* Control, int Adjustment);
	void __fastcall SetCategories(System::Classes::TStrings* Value);
	void __fastcall SetUnits(Rpdefine::TPrintUnits Value);
	void __fastcall SetUnitsFactor(double Value);
	void __fastcall SetDataChanged(bool Value);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadParamValues(System::Classes::TReader* Reader);
	void __fastcall WriteParamValues(System::Classes::TWriter* Writer);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	
public:
	__fastcall virtual TRaveProjectManager(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveProjectManager(void);
	void __fastcall SetIncluded(TRaveReport* AReport);
	void __fastcall ReportToStream(TRaveReport* AReport, System::Classes::TStream* AStream);
	TRaveReport* __fastcall FindReport(const System::UnicodeString AName, const bool AIsFullName);
	void __fastcall AddForwardRef(System::UnicodeString AName, Rvclass::TRaveComponent* AOwner, System::TObject* AInstance, System::Typinfo::PPropInfo APropInfo, int AParam);
	void __fastcall AddRenameRef(System::UnicodeString OrigName, Rvclass::TRaveComponent* NewInstance);
	void __fastcall FreeForwardRefs(void);
	void __fastcall New(void);
	void __fastcall RemoveForwardRefs(Rvclass::TRaveComponent* Target);
	void __fastcall Save(void);
	void __fastcall Load(void);
	void __fastcall Unload(void);
	void __fastcall Clear(void);
	virtual void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	void __fastcall SaveToStream(System::Classes::TStream* Stream);
	void __fastcall ExportProject(System::UnicodeString ExportFileName, System::Classes::TList* Items);
	bool __fastcall ImportProject(System::UnicodeString ImportFileName, bool AutoReplace);
	void __fastcall DeactivateReport(void);
	void __fastcall ActivateReport(TRaveReport* Report);
	Rvclass::TRaveComponent* __fastcall FindRaveComponent(System::UnicodeString AName, Rvclass::TRaveComponent* DefRoot);
	System::UnicodeString __fastcall GetUniqueName(System::UnicodeString BaseName, Rvclass::TRaveComponent* NameOwner, bool UseCurrent);
	TRaveReport* __fastcall NewReport(void);
	Rvclass::TRavePage* __fastcall NewGlobalPage(void);
	Rvclass::TRaveDataObject* __fastcall NewDataObject(Rvclass::TRaveDataObjectClass DataObjectClass);
	void __fastcall DeleteItem(Rvclass::TRaveProjectItem* Item, bool Notify);
	void __fastcall SetParam(System::UnicodeString Param, System::UnicodeString Value);
	System::UnicodeString __fastcall GetParam(System::UnicodeString Param);
	void __fastcall ClearParams(void);
	void __fastcall ClearChanged(void);
	bool __fastcall Compile(void);
	__property System::Classes::TList* ReportList = {read=FReportList};
	__property System::Classes::TList* GlobalPageList = {read=FGlobalPageList};
	__property System::Classes::TList* DataObjectList = {read=FDataObjectList};
	__property TRaveReport* ActiveReport = {read=FActiveReport};
	__property bool Saved = {read=FSaved, write=FSaved, nodefault};
	__property bool DataChanged = {read=FDataChanged, write=SetDataChanged, nodefault};
	__property bool Printing = {read=FPrinting, nodefault};
	__property int Version = {read=FVersion, nodefault};
	__property bool UnicodeEnabled = {read=FUnicodeEnabled, nodefault};
	__property TImportConflictEvent OnImportConflict = {read=FOnImportConflict, write=FOnImportConflict};
	__property bool StreamParamValues = {read=FStreamParamValues, write=FStreamParamValues, nodefault};
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName, stored=false};
	__property TRaveProjectManager* MasterProject = {read=FMasterProject, write=FMasterProject};
	__property bool NoDesigner = {read=FNoDesigner, write=FNoDesigner, nodefault};
	__property Rpbase::TBaseReport* BaseReport = {read=FBaseReport, write=FBaseReport};
	__property TRaveModuleManager* ModuleManager = {read=FModuleManager};
	
__published:
	__property System::UnicodeString AdminPassword = {read=FAdminPassword, write=FAdminPassword};
	__property System::Classes::TStrings* Categories = {read=FCategories, write=SetCategories};
	__property Parameters;
	__property PIVars;
	__property Rvsecurity::TRaveBaseSecurity* SecurityControl = {read=FSecurityControl, write=FSecurityControl};
	__property Rpdefine::TPrintUnits Units = {read=FUnits, write=SetUnits, stored=false, nodefault};
	__property double UnitsFactor = {read=FUnitsFactor, write=SetUnitsFactor};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRaveProjectManager* ProjectManager;
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvproj */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVPROJ)
using namespace Rvproj;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvprojHPP
