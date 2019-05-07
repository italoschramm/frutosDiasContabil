// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpTable.pas' rev: 29.00 (Windows)

#ifndef RptableHPP
#define RptableHPP

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
#include <Vcl.Controls.hpp>
#include <System.TypInfo.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Forms.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpFiler.hpp>
#include <RpShell.hpp>
#include <RpSect.hpp>
#include <RpMemo.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rptable
{
//-- forward type declarations -----------------------------------------------
struct TRowHeader;
struct TColHeader;
struct TColText;
class DELPHICLASS TTableItem;
class DELPHICLASS TTableColumn;
class DELPHICLASS TTableSection;
class DELPHICLASS TTablePrinter;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TSectionType : unsigned char { stReportHeader, stPageHeader, stBodyHeader, stGroupHeader, stGroupFooter, stBodyFooter, stPageFooter, stReportFooter, stNone };

enum DECLSPEC_DENUM TOverflowMethod : unsigned char { omTruncateWord, omTruncateChar, omReplace, omWrap, omShrink, omUser };

enum DECLSPEC_DENUM TOutputType : unsigned char { otText, otHeadings, otPageTotals, otSubTotals, otGrandTotals };

typedef void __fastcall (__closure *TFormatEvent)(System::TObject* Sender, System::UnicodeString &Text);

typedef int __fastcall (__closure *TIntegerEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTableColumnEvent)(TTableColumn* TableColumn);

typedef void __fastcall (__closure *TTableColumnHeightEvent)(TTableColumn* TableColumn, double &Height, double &MinHeight);

typedef void __fastcall (__closure *TTableSectionEvent)(TTableSection* TableSection);

typedef void __fastcall (__closure *TTablePrinterEvent)(TTablePrinter* TablePrinter, bool &Valid);

struct DECLSPEC_DRECORD TRowHeader
{
public:
	double Height;
	double MinHeight;
	System::Word Columns;
	System::Word Level;
};


struct DECLSPEC_DRECORD TColHeader
{
public:
	int DataSize;
	double FontSize;
	double Height;
	double MinHeight;
	short StartLine;
	System::Word Lines;
};


struct DECLSPEC_DRECORD TColText
{
public:
	Rpdefine::TPrintJustify Justify;
	double Height;
	int Len;
};


class PASCALIMPLEMENTATION TTableItem : public Rpbase::TRPBaseComponent
{
	typedef Rpbase::TRPBaseComponent inherited;
	
protected:
	TTablePrinter* FParent;
	System::Classes::TStream* SaveColStream;
	TColHeader SaveColHeader;
	double SaveHeight;
	double FWidth;
	System::Uitypes::TColor FShadeColor;
	System::Byte FShadePercent;
	double FMargin;
	TOverflowMethod FOverflowMethod;
	System::UnicodeString FOverflowAppend;
	System::UnicodeString FOverflowReplace;
	System::Byte FMinFontSize;
	Rpdefine::TPrintJustify FJustify;
	Rpdefine::TPrintJustifyVert FJustifyVert;
	Rpdefine::TBoxLines FBoxLines;
	Vcl::Graphics::TFont* FFont;
	Vcl::Graphics::TPen* FPen;
	bool FUseParentFont;
	bool FUseParentPen;
	System::Classes::TComponentName FDescription;
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall SetParent(TTablePrinter* Value) = 0 ;
	virtual void __fastcall Loaded(void);
	void __fastcall ParentFontChanged(void);
	void __fastcall SetDescription(System::Classes::TComponentName Value);
	void __fastcall SetFont(Vcl::Graphics::TFont* Value);
	void __fastcall SetPen(Vcl::Graphics::TPen* Value);
	void __fastcall SetWidth(double Value);
	double __fastcall GetWidth(void);
	void __fastcall SetShadePercent(System::Byte Value);
	void __fastcall SetMargin(double Value);
	double __fastcall GetMargin(void);
	void __fastcall SetMargin100(double Value);
	double __fastcall GetMargin100(void);
	void __fastcall SetOverflowMethod(TOverflowMethod Value);
	TOverflowMethod __fastcall GetOverflowMethod(void);
	Rpbase::TBaseReport* __fastcall GetReportPrinter(void);
	bool __fastcall IsFontStored(void);
	bool __fastcall IsPenStored(void);
	
public:
	__fastcall virtual TTableItem(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTableItem(void);
	void __fastcall PrintBox(void);
	DYNAMIC bool __fastcall HasParent(void);
	__property TTablePrinter* TablePrinter = {read=FParent};
	__property Rpbase::TBaseReport* ReportPrinter = {read=GetReportPrinter};
	
__published:
	__property System::Classes::TComponentName Description = {read=FDescription, write=SetDescription};
	__property double Width = {read=GetWidth, write=SetWidth};
	__property System::Uitypes::TColor ShadeColor = {read=FShadeColor, write=FShadeColor, default=0};
	__property System::Byte ShadePercent = {read=FShadePercent, write=SetShadePercent, default=0};
	__property double Margin = {read=GetMargin, write=SetMargin};
	__property double Margin100 = {read=GetMargin100, write=SetMargin100};
	__property TOverflowMethod OverflowMethod = {read=GetOverflowMethod, write=SetOverflowMethod, default=1};
	__property System::UnicodeString OverflowReplace = {read=FOverflowReplace, write=FOverflowReplace};
	__property System::UnicodeString OverflowAppend = {read=FOverflowAppend, write=FOverflowAppend};
	__property System::Byte MinFontSize = {read=FMinFontSize, write=FMinFontSize, default=6};
	__property Vcl::Graphics::TFont* Font = {read=FFont, write=SetFont, stored=IsFontStored};
	__property bool UseParentFont = {read=FUseParentFont, write=FUseParentFont, default=1};
	__property Vcl::Graphics::TPen* Pen = {read=FPen, write=SetPen, stored=IsPenStored};
	__property bool UseParentPen = {read=FUseParentPen, write=FUseParentPen, default=1};
	__property Rpdefine::TPrintJustify Justify = {read=FJustify, write=FJustify, default=1};
	__property Rpdefine::TPrintJustifyVert JustifyVert = {read=FJustifyVert, write=FJustifyVert, default=0};
	__property Rpdefine::TBoxLines BoxLines = {read=FBoxLines, write=FBoxLines, default=15};
};


class PASCALIMPLEMENTATION TTableColumn : public TTableItem
{
	typedef TTableItem inherited;
	
protected:
	bool IsDefault;
	System::Word FIndex;
	TOutputType FOutputType;
	TTableItem* FTableItem;
	System::UnicodeString FHeading;
	Rpmemo::TMemoBuf* FMemoBuf;
	double FSubTotal;
	double FPageTotal;
	double FGrandTotal;
	bool FTotals;
	Rpsect::TReportSection* FSection;
	bool FSplitRow;
	System::UnicodeString FDisplayFormat;
	TTableColumnEvent FOnHeaderBefore;
	TTableColumnEvent FOnHeaderSetup;
	TTableColumnHeightEvent FOnHeaderHeight;
	TTableColumnHeightEvent FOnHeaderPrint;
	TTableColumnEvent FOnHeaderAfter;
	TTableColumnEvent FOnRowBefore;
	TTableColumnEvent FOnRowSetup;
	TTableColumnHeightEvent FOnRowHeight;
	TTableColumnHeightEvent FOnRowPrint;
	TTableColumnEvent FOnRowAfter;
	TTableColumnEvent FOnFooterBefore;
	TTableColumnEvent FOnFooterSetup;
	TTableColumnHeightEvent FOnFooterHeight;
	TTableColumnHeightEvent FOnFooterPrint;
	TTableColumnEvent FOnFooterAfter;
	TTableColumnEvent FOnAddTotal;
	TTableColumnEvent FOnInitPage;
	TTableColumnEvent FOnInitMaster;
	TTableColumnEvent FOnOverflow;
	virtual void __fastcall HeaderBeforeEvent(void);
	virtual void __fastcall HeaderSetupEvent(void);
	virtual void __fastcall HeaderHeightEvent(double &Height, double &MinHeight);
	virtual void __fastcall HeaderPrintEvent(double &Height, double &MinHeight);
	virtual void __fastcall HeaderAfterEvent(void);
	virtual void __fastcall RowBeforeEvent(void);
	virtual void __fastcall RowSetupEvent(void);
	virtual void __fastcall RowHeightEvent(double &Height, double &MinHeight);
	virtual void __fastcall RowPrintEvent(double &Height, double &MinHeight);
	virtual void __fastcall RowAfterEvent(void);
	virtual void __fastcall FooterBeforeEvent(void);
	virtual void __fastcall FooterSetupEvent(void);
	virtual void __fastcall FooterHeightEvent(double &Height, double &MinHeight);
	virtual void __fastcall FooterPrintEvent(double &Height, double &MinHeight);
	virtual void __fastcall FooterAfterEvent(void);
	virtual void __fastcall AddTotalEvent(void);
	virtual void __fastcall InitPageEvent(void);
	virtual void __fastcall InitMasterEvent(void);
	virtual void __fastcall OverflowEvent(void);
	virtual void __fastcall SetParent(TTablePrinter* Value);
	int __fastcall GetAsInteger(void);
	void __fastcall SetAsInteger(int Value);
	double __fastcall GetAsFloat(void);
	void __fastcall SetAsFloat(double Value);
	virtual void __fastcall FillMemoBuf(void);
	void __fastcall GetRow(System::Classes::TStream* ColStream, TColHeader &ColHeader);
	void __fastcall PrintRow(System::Classes::TStream* ColStream, TColHeader &ColHeader, double Height);
	void __fastcall AddTotal(void);
	void __fastcall InitPage(void);
	void __fastcall InitMaster(void);
	void __fastcall AddLine(System::Classes::TStream* ColStream, TColHeader &ColHeader, System::UnicodeString S1, Rpdefine::TPrintJustify ThisJustify);
	void __fastcall ProcessOverflow(System::Classes::TStream* ColStream, TColHeader &ColHeader, double AvailWidth);
	
public:
	__fastcall virtual TTableColumn(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTableColumn(void);
	virtual void __fastcall Init(void);
	void __fastcall PrintDefault(void);
	__property TOutputType OutputType = {read=FOutputType, write=FOutputType, nodefault};
	__property TTableItem* TableItem = {read=FTableItem, write=FTableItem};
	__property Rpmemo::TMemoBuf* MemoBuf = {read=FMemoBuf};
	__property double SubTotal = {read=FSubTotal, write=FSubTotal};
	__property double PageTotal = {read=FPageTotal, write=FPageTotal};
	__property double GrandTotal = {read=FGrandTotal, write=FGrandTotal};
	__property int AsInteger = {read=GetAsInteger, write=SetAsInteger, nodefault};
	__property double AsFloat = {read=GetAsFloat, write=SetAsFloat};
	
__published:
	__property System::UnicodeString Heading = {read=FHeading, write=FHeading};
	__property bool Totals = {read=FTotals, write=FTotals, default=0};
	__property bool SplitRow = {read=FSplitRow, write=FSplitRow, default=1};
	__property System::UnicodeString DisplayFormat = {read=FDisplayFormat, write=FDisplayFormat};
	__property TTableColumnEvent OnHeaderBefore = {read=FOnHeaderBefore, write=FOnHeaderBefore};
	__property TTableColumnEvent OnHeaderSetup = {read=FOnHeaderSetup, write=FOnHeaderSetup};
	__property TTableColumnHeightEvent OnHeaderHeight = {read=FOnHeaderHeight, write=FOnHeaderHeight};
	__property TTableColumnHeightEvent OnHeaderPrint = {read=FOnHeaderPrint, write=FOnHeaderPrint};
	__property TTableColumnEvent OnHeaderAfter = {read=FOnHeaderAfter, write=FOnHeaderAfter};
	__property TTableColumnEvent OnRowBefore = {read=FOnRowBefore, write=FOnRowBefore};
	__property TTableColumnEvent OnRowSetup = {read=FOnRowSetup, write=FOnRowSetup};
	__property TTableColumnHeightEvent OnRowHeight = {read=FOnRowHeight, write=FOnRowHeight};
	__property TTableColumnHeightEvent OnRowPrint = {read=FOnRowPrint, write=FOnRowPrint};
	__property TTableColumnEvent OnRowAfter = {read=FOnRowAfter, write=FOnRowAfter};
	__property TTableColumnEvent OnFooterBefore = {read=FOnFooterBefore, write=FOnFooterBefore};
	__property TTableColumnEvent OnFooterSetup = {read=FOnFooterSetup, write=FOnFooterSetup};
	__property TTableColumnHeightEvent OnFooterHeight = {read=FOnFooterHeight, write=FOnFooterHeight};
	__property TTableColumnHeightEvent OnFooterPrint = {read=FOnFooterPrint, write=FOnFooterPrint};
	__property TTableColumnEvent OnFooterAfter = {read=FOnFooterAfter, write=FOnFooterAfter};
	__property TTableColumnEvent OnAddTotal = {read=FOnAddTotal, write=FOnAddTotal};
	__property TTableColumnEvent OnInitPage = {read=FOnInitPage, write=FOnInitPage};
	__property TTableColumnEvent OnInitMaster = {read=FOnInitMaster, write=FOnInitMaster};
	__property TTableColumnEvent OnOverflow = {read=FOnOverflow, write=FOnOverflow};
};


class PASCALIMPLEMENTATION TTableSection : public TTableItem
{
	typedef TTableItem inherited;
	
protected:
	TSectionType FSectionType;
	Rpsect::TReportSection* FSection;
	System::UnicodeString FText;
	TOutputType FOutputType;
	TTableSectionEvent FOnBefore;
	TTableSectionEvent FOnSetup;
	TTableSectionEvent FOnPrint;
	TTableSectionEvent FOnAfter;
	virtual void __fastcall BeforeEvent(void);
	virtual void __fastcall SetupEvent(void);
	virtual void __fastcall PrintEvent(void);
	virtual void __fastcall AfterEvent(void);
	virtual void __fastcall SetParent(TTablePrinter* Value);
	void __fastcall SetSectionType(TSectionType Value);
	void __fastcall SetSection(Rpsect::TReportSection* Value);
	
public:
	__fastcall virtual TTableSection(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTableSection(void);
	void __fastcall Print(void);
	void __fastcall PrintDefault(void);
	
__published:
	__property TSectionType SectionType = {read=FSectionType, write=SetSectionType, nodefault};
	__property Rpsect::TReportSection* Section = {read=FSection, write=SetSection};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property TOutputType OutputType = {read=FOutputType, write=FOutputType, default=0};
	__property TTableSectionEvent OnBefore = {read=FOnBefore, write=FOnBefore};
	__property TTableSectionEvent OnSetup = {read=FOnSetup, write=FOnSetup};
	__property TTableSectionEvent OnPrint = {read=FOnPrint, write=FOnPrint};
	__property TTableSectionEvent OnAfter = {read=FOnAfter, write=FOnAfter};
};


class PASCALIMPLEMENTATION TTablePrinter : public Rpshell::TBaseShell
{
	typedef Rpshell::TBaseShell inherited;
	
protected:
	System::Classes::TList* FTableColumns;
	bool DoHeadings;
	bool IsDefault;
	System::Byte DefaultProc;
	Rpshell::TBaseShell* FDetailTablePrinter;
	TTablePrinter* FMasterTablePrinter;
	double FStartOffset;
	double FStartPos;
	Vcl::Graphics::TFont* FFont;
	Vcl::Graphics::TPen* FPen;
	System::StaticArray<TTableSection*, 8> FTableSection;
	bool FReprintHeader;
	TTablePrinterEvent FOnInitTable;
	TTablePrinterEvent FOnInitMaster;
	TTablePrinterEvent FOnValidateRow;
	TTablePrinterEvent FOnGetNextRow;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetDetailTablePrinter(Rpshell::TBaseShell* Value);
	virtual void __fastcall InitTableEvent(bool &Valid);
	virtual void __fastcall InitMasterEvent(bool &Valid);
	virtual void __fastcall ValidateRowEvent(bool &Valid);
	virtual void __fastcall GetNextRowEvent(bool &Valid);
	DYNAMIC void __fastcall GetChildren(System::Classes::TGetChildProc Proc, System::Classes::TComponent* Root);
	int __fastcall GetTableColumns(void);
	TTableColumn* __fastcall GetTableColumn(int Index);
	TTableSection* __fastcall GetTableSection(TSectionType Index);
	void __fastcall SetFont(Vcl::Graphics::TFont* Value);
	void __fastcall SetPen(Vcl::Graphics::TPen* Value);
	virtual void __fastcall SetName(const System::Classes::TComponentName Value);
	void __fastcall BeginPage(System::TObject* Sender);
	void __fastcall EndPage(System::TObject* Sender);
	void __fastcall ReprintHeaders(bool PrintingHeader);
	void __fastcall PrintSection(TTableSection* TableSection);
	virtual void __fastcall InitMaster(bool &Valid, TTablePrinter* Master);
	virtual void __fastcall InitTable(bool &Valid);
	virtual void __fastcall ValidateRow(bool &Valid);
	virtual void __fastcall GetNextRow(bool &Valid);
	void __fastcall PrintRow(System::Classes::TStream* ColStream, const TRowHeader &RowHeader, TOutputType RowOutputType, TTableItem* RowTableItem);
	void __fastcall ReadRow(System::Classes::TStream* ColStream, TRowHeader &RowHeader, TOutputType RowOutputType, TTableItem* RowTableItem);
	void __fastcall ReadBody(System::Classes::TStream* ColStream, System::Word OnLevel);
	
public:
	__fastcall virtual TTablePrinter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTablePrinter(void);
	void __fastcall AssignParent(TTableItem* TableItem);
	virtual TTableColumn* __fastcall CreateColumn(System::Classes::TComponentName Description);
	virtual TTableSection* __fastcall CreateSection(System::Classes::TComponentName Description, TSectionType SectionType);
	virtual void __fastcall Execute(Rpbase::TBaseReport* Report);
	void __fastcall Default(bool &Valid);
	__property System::Classes::TList* TableColumnList = {read=FTableColumns};
	__property int TableColumns = {read=GetTableColumns, nodefault};
	__property TTableColumn* TableColumn[int Index] = {read=GetTableColumn};
	__property TTableSection* TableSection[TSectionType Index] = {read=GetTableSection};
	__property TTablePrinter* MasterTablePrinter = {read=FMasterTablePrinter, write=FMasterTablePrinter};
	
__published:
	__property Rpshell::TBaseShell* DetailTablePrinter = {read=FDetailTablePrinter, write=SetDetailTablePrinter};
	__property double StartPos = {read=FStartPos, write=FStartPos};
	__property Vcl::Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Vcl::Graphics::TPen* Pen = {read=FPen, write=SetPen};
	__property bool ReprintHeader = {read=FReprintHeader, write=FReprintHeader, default=1};
	__property TTablePrinterEvent OnInitTable = {read=FOnInitTable, write=FOnInitTable};
	__property TTablePrinterEvent OnInitMaster = {read=FOnInitMaster, write=FOnInitMaster};
	__property TTablePrinterEvent OnValidateRow = {read=FOnValidateRow, write=FOnValidateRow};
	__property TTablePrinterEvent OnGetNextRow = {read=FOnGetNextRow, write=FOnGetNextRow};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::StaticArray<System::SmallString<13>, 9> SectionName;
extern DELPHI_PACKAGE System::Classes::TComponentName __fastcall DescToName(System::Classes::TComponentName Desc);
}	/* namespace Rptable */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPTABLE)
using namespace Rptable;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RptableHPP
