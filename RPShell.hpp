﻿// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpShell.pas' rev: 29.00 (Windows)

#ifndef RpshellHPP
#define RpshellHPP

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
#include <RpSect.hpp>
#include <RpSystem.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpshell
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseShell;
class DELPHICLASS TDetailShell;
class DELPHICLASS TMasterShell;
class DELPHICLASS TReportShell;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TReportEvent)(Rpbase::TBaseReport* ReportPrinter, TDetailShell* ReportShell);

typedef void __fastcall (__closure *TReportValidEvent)(Rpbase::TBaseReport* ReportPrinter, TDetailShell* ReportShell, bool &Valid);

class PASCALIMPLEMENTATION TBaseShell : public Rpbase::TRPBaseComponent
{
	typedef Rpbase::TRPBaseComponent inherited;
	
protected:
	Rpbase::TBaseReport* FReportPrinter;
	Rpdefine::TRpComponent* FEngine;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetEngine(Rpdefine::TRpComponent* Value);
	void __fastcall StartExecute(System::TObject* Sender);
	bool __fastcall InitEngine(Rpbase::TBaseReport* Report);
	
public:
	__property Rpbase::TBaseReport* ReportPrinter = {read=FReportPrinter, write=FReportPrinter};
	virtual void __fastcall Execute(Rpbase::TBaseReport* Report) = 0 ;
	
__published:
	__property Rpdefine::TRpComponent* Engine = {read=FEngine, write=SetEngine};
public:
	/* TRpComponent.Create */ inline __fastcall virtual TBaseShell(System::Classes::TComponent* AOwner) : Rpbase::TRPBaseComponent(AOwner) { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TBaseShell(void) { }
	
};


class PASCALIMPLEMENTATION TDetailShell : public TBaseShell
{
	typedef TBaseShell inherited;
	
protected:
	bool Executing;
	TDetailShell* FDetailReport;
	bool FIsReprint;
	bool FIsNewPage;
	bool FReprint;
	bool FStartNewPage;
	bool DoNewPage;
	TDetailShell* MasterShell;
	bool RowPrinted;
	Rpsect::TReportSection* FSectionRow;
	Rpsect::TReportSection* FSectionBodyHeader;
	Rpsect::TReportSection* FSectionBodyFooter;
	Rpsect::TReportSection* FSectionGroupHeader;
	Rpsect::TReportSection* FSectionGroupFooter;
	TReportEvent FOnBodyBefore;
	TReportEvent FOnBodyHeader;
	TReportEvent FOnGroupBeforeFirst;
	TReportValidEvent FOnGroupBefore;
	TReportEvent FOnGroupHeader;
	TReportValidEvent FOnRowBefore;
	TReportValidEvent FOnRowPrint;
	TReportEvent FOnDetailBefore;
	TReportEvent FOnDetailAfter;
	TReportValidEvent FOnRowAfter;
	TReportEvent FOnGroupFooter;
	TReportValidEvent FOnGroupAfter;
	TReportEvent FOnGroupAfterLast;
	TReportEvent FOnBodyFooter;
	TReportEvent FOnBodyAfter;
	virtual void __fastcall BodyBeforeEvent(void);
	virtual void __fastcall BodyHeaderEvent(void);
	virtual void __fastcall GroupBeforeFirstEvent(void);
	virtual void __fastcall GroupBeforeEvent(bool &Valid);
	virtual void __fastcall GroupHeaderEvent(void);
	virtual void __fastcall RowBeforeEvent(bool &Valid);
	virtual void __fastcall RowPrintEvent(bool &Valid);
	virtual void __fastcall DetailBeforeEvent(void);
	virtual void __fastcall DetailAfterEvent(void);
	virtual void __fastcall RowAfterEvent(bool &Valid);
	virtual void __fastcall GroupFooterEvent(void);
	virtual void __fastcall GroupAfterEvent(bool &Valid);
	virtual void __fastcall GroupAfterLastEvent(void);
	virtual void __fastcall BodyFooterEvent(void);
	virtual void __fastcall BodyAfterEvent(void);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall PrintBody(void);
	bool __fastcall PrintGroup(void);
	void __fastcall PrintMasterRow(void);
	void __fastcall SetNewPage(System::TObject* Sender);
	bool __fastcall ValidateNextSection(Rpsect::TReportSection* ReportSection);
	void __fastcall SetSectionBodyHeader(Rpsect::TReportSection* Value);
	void __fastcall SetSectionBodyFooter(Rpsect::TReportSection* Value);
	void __fastcall SetSectionRow(Rpsect::TReportSection* Value);
	void __fastcall SetSectionGroupHeader(Rpsect::TReportSection* Value);
	void __fastcall SetSectionGroupFooter(Rpsect::TReportSection* Value);
	
public:
	__fastcall virtual TDetailShell(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TDetailShell(void);
	void __fastcall PrintBodyHeader(void);
	void __fastcall PrintBodyFooter(void);
	void __fastcall PrintRow(void);
	virtual void __fastcall Execute(Rpbase::TBaseReport* Report);
	__property bool IsReprint = {read=FIsReprint, nodefault};
	__property bool IsNewPage = {read=FIsNewPage, nodefault};
	
__published:
	__property Rpsect::TReportSection* SectionBodyHeader = {read=FSectionBodyHeader, write=SetSectionBodyHeader};
	__property Rpsect::TReportSection* SectionBodyFooter = {read=FSectionBodyFooter, write=SetSectionBodyFooter};
	__property Rpsect::TReportSection* SectionRow = {read=FSectionRow, write=SetSectionRow};
	__property bool StartNewPage = {read=FStartNewPage, write=FStartNewPage, default=0};
	__property TReportEvent OnBodyBefore = {read=FOnBodyBefore, write=FOnBodyBefore};
	__property TReportEvent OnBodyHeader = {read=FOnBodyHeader, write=FOnBodyHeader};
	__property TReportValidEvent OnRowBefore = {read=FOnRowBefore, write=FOnRowBefore};
	__property TReportValidEvent OnRowPrint = {read=FOnRowPrint, write=FOnRowPrint};
	__property TReportValidEvent OnRowAfter = {read=FOnRowAfter, write=FOnRowAfter};
	__property TReportEvent OnBodyFooter = {read=FOnBodyFooter, write=FOnBodyFooter};
	__property TReportEvent OnBodyAfter = {read=FOnBodyAfter, write=FOnBodyAfter};
};


class PASCALIMPLEMENTATION TMasterShell : public TDetailShell
{
	typedef TDetailShell inherited;
	
public:
	void __fastcall PrintGroupHeader(void);
	void __fastcall PrintGroupFooter(void);
	void __fastcall PrintDetail(void);
	
__published:
	__property TDetailShell* DetailReport = {read=FDetailReport, write=FDetailReport};
	__property bool Reprint = {read=FReprint, write=FReprint, default=0};
	__property Rpsect::TReportSection* SectionGroupHeader = {read=FSectionGroupHeader, write=SetSectionGroupHeader};
	__property Rpsect::TReportSection* SectionGroupFooter = {read=FSectionGroupFooter, write=SetSectionGroupFooter};
	__property TReportEvent OnGroupBeforeFirst = {read=FOnGroupBeforeFirst, write=FOnGroupBeforeFirst};
	__property TReportValidEvent OnGroupBefore = {read=FOnGroupBefore, write=FOnGroupBefore};
	__property TReportEvent OnGroupHeader = {read=FOnGroupHeader, write=FOnGroupHeader};
	__property TReportEvent OnDetailBefore = {read=FOnDetailBefore, write=FOnDetailBefore};
	__property TReportEvent OnDetailAfter = {read=FOnDetailAfter, write=FOnDetailAfter};
	__property TReportEvent OnGroupFooter = {read=FOnGroupFooter, write=FOnGroupFooter};
	__property TReportValidEvent OnGroupAfter = {read=FOnGroupAfter, write=FOnGroupAfter};
	__property TReportEvent OnGroupAfterLast = {read=FOnGroupAfterLast, write=FOnGroupAfterLast};
public:
	/* TDetailShell.Create */ inline __fastcall virtual TMasterShell(System::Classes::TComponent* AOwner) : TDetailShell(AOwner) { }
	/* TDetailShell.Destroy */ inline __fastcall virtual ~TMasterShell(void) { }
	
};


class PASCALIMPLEMENTATION TReportShell : public TMasterShell
{
	typedef TMasterShell inherited;
	
protected:
	Rpsect::TReportSection* FSectionReportHeader;
	Rpsect::TReportSection* FSectionReportFooter;
	Rpsect::TReportSection* FSectionPageHeader;
	Rpsect::TReportSection* FSectionPageFooter;
	TReportEvent FOnReportBefore;
	TReportEvent FOnReportHeader;
	TReportEvent FOnPageBefore;
	TReportEvent FOnPageHeader;
	TReportEvent FOnPageFooter;
	TReportEvent FOnPageAfter;
	TReportEvent FOnReportFooter;
	TReportEvent FOnReportAfter;
	virtual void __fastcall ReportBeforeEvent(void);
	virtual void __fastcall ReportHeaderEvent(void);
	virtual void __fastcall PageBeforeEvent(void);
	virtual void __fastcall PageHeaderEvent(void);
	virtual void __fastcall PageFooterEvent(void);
	virtual void __fastcall PageAfterEvent(void);
	virtual void __fastcall ReportFooterEvent(void);
	virtual void __fastcall ReportAfterEvent(void);
	void __fastcall BeginPage(System::TObject* Sender);
	void __fastcall EndPage(System::TObject* Sender);
	void __fastcall PrintReport(void);
	void __fastcall SetSectionReportHeader(Rpsect::TReportSection* Value);
	void __fastcall SetSectionReportFooter(Rpsect::TReportSection* Value);
	void __fastcall SetSectionPageHeader(Rpsect::TReportSection* Value);
	void __fastcall SetSectionPageFooter(Rpsect::TReportSection* Value);
	
public:
	__fastcall virtual TReportShell(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TReportShell(void);
	void __fastcall PrintReportHeader(void);
	void __fastcall PrintReportFooter(void);
	void __fastcall PrintPageHeader(void);
	void __fastcall PrintPageFooter(void);
	virtual void __fastcall Execute(Rpbase::TBaseReport* Report);
	
__published:
	__property Rpsect::TReportSection* SectionReportHeader = {read=FSectionReportHeader, write=SetSectionReportHeader};
	__property Rpsect::TReportSection* SectionReportFooter = {read=FSectionReportFooter, write=SetSectionReportFooter};
	__property Rpsect::TReportSection* SectionPageHeader = {read=FSectionPageHeader, write=SetSectionPageHeader};
	__property Rpsect::TReportSection* SectionPageFooter = {read=FSectionPageFooter, write=SetSectionPageFooter};
	__property TReportEvent OnReportBefore = {read=FOnReportBefore, write=FOnReportBefore};
	__property TReportEvent OnReportHeader = {read=FOnReportHeader, write=FOnReportHeader};
	__property TReportEvent OnPageBefore = {read=FOnPageBefore, write=FOnPageBefore};
	__property TReportEvent OnPageHeader = {read=FOnPageHeader, write=FOnPageHeader};
	__property TReportEvent OnPageFooter = {read=FOnPageFooter, write=FOnPageFooter};
	__property TReportEvent OnPageAfter = {read=FOnPageAfter, write=FOnPageAfter};
	__property TReportEvent OnReportFooter = {read=FOnReportFooter, write=FOnReportFooter};
	__property TReportEvent OnReportAfter = {read=FOnReportAfter, write=FOnReportAfter};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpshell */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPSHELL)
using namespace Rpshell;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpshellHPP
