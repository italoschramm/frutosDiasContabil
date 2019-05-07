// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCsBars.pas' rev: 29.00 (Windows)

#ifndef RvcsbarsHPP
#define RvcsbarsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <Vcl.Graphics.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RvClass.hpp>
#include <RpBars.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvData.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcsbars
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveBaseBarCode;
class DELPHICLASS TRavePostNetBarCode;
class DELPHICLASS TRaveI2of5BarCode;
class DELPHICLASS TRaveCode39BarCode;
class DELPHICLASS TRaveCode128BarCode;
class DELPHICLASS TRaveUPCBarCode;
class DELPHICLASS TRaveEANBarCode;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveBaseBarCode : public Rvclass::TRaveControl
{
	typedef Rvclass::TRaveControl inherited;
	
protected:
	System::UnicodeString FOldText;
	Rpbars::TRPBarsBase* FBarCode;
	Rvclass::TRaveFont* FFont;
	Vcl::Graphics::TCanvas* FCanvas;
	bool FAutoSize;
	Rvdefine::TRaveFieldName FDataField;
	Rvdata::TRaveBaseDataView* FDataView;
	void __fastcall SetAutoSize(bool Value);
	virtual Rvdefine::TRaveUnits __fastcall GetLeft(void);
	virtual void __fastcall SetLeft(Rvdefine::TRaveUnits Value);
	HIDESBASE Rvdefine::TRaveUnits __fastcall GetRight(void);
	HIDESBASE void __fastcall SetRight(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetTop(void);
	virtual void __fastcall SetTop(Rvdefine::TRaveUnits Value);
	virtual void __fastcall SetHeight(Rvdefine::TRaveUnits Value);
	virtual void __fastcall SetWidth(Rvdefine::TRaveUnits Value);
	void __fastcall SetFont(Rvclass::TRaveFont* Value);
	void __fastcall SetBarCodeJustify(Rpdefine::TPrintJustify Value);
	Rpdefine::TPrintJustify __fastcall GetBarCodeJustify(void);
	void __fastcall SetTextJustify(Rpdefine::TPrintJustify Value);
	Rpdefine::TPrintJustify __fastcall GetTextJustify(void);
	void __fastcall SetBarWidth(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall GetBarWidth(void);
	void __fastcall SetBarHeight(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall GetBarHeight(void);
	Rvdefine::TRaveUnits __fastcall GetBarTop(void);
	void __fastcall SetBarTop(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall GetCenter(void);
	void __fastcall SetCenter(Rvdefine::TRaveUnits Value);
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetText(void);
	void __fastcall SetUseChecksum(bool Value);
	bool __fastcall GetUseChecksum(void);
	void __fastcall SetWideFactor(double Value);
	double __fastcall GetWideFactor(void);
	void __fastcall SetPrintReadable(bool Value);
	bool __fastcall GetPrintReadable(void);
	void __fastcall SetPrintChecksum(bool Value);
	bool __fastcall GetPrintChecksum(void);
	void __fastcall SetPrintTop(bool Value);
	bool __fastcall GetPrintTop(void);
	void __fastcall SetBarCodeRotation(Rpbars::TBarCodeRotation Value);
	Rpbars::TBarCodeRotation __fastcall GetBarCodeRotation(void);
	void __fastcall PrintBar(double X1, double Y1, double X2, double Y2);
	void __fastcall SetDataField(Rvdefine::TRaveFieldName Value);
	virtual void __fastcall BeforeReport(void);
	virtual void __fastcall AfterReport(void);
	virtual void __fastcall Changing(Rvclass::TRaveComponent* OldItem, Rvclass::TRaveComponent* NewItem);
	bool __fastcall IsLeftStored(void);
	bool __fastcall IsCenterStored(void);
	bool __fastcall IsRightStored(void);
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void) = 0 ;
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveBaseBarCode(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveBaseBarCode(void);
	virtual void __fastcall Resize(void);
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	
__published:
	__property Rvdefine::TRaveFieldName DataField = {read=FDataField, write=SetDataField};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView, default=0};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=1};
	__property Rpdefine::TPrintJustify BarCodeJustify = {read=GetBarCodeJustify, write=SetBarCodeJustify, stored=false, nodefault};
	__property Rvdefine::TRaveUnits Top = {read=GetTop, write=SetTop};
	__property Rvdefine::TRaveUnits Bottom = {read=GetBottom, write=SetBottom};
	__property Height = {default=0};
	__property Width = {default=0};
	__property Rvclass::TRaveFont* Font = {read=FFont, write=SetFont};
	__property Rvdefine::TRaveUnits BarWidth = {read=GetBarWidth, write=SetBarWidth};
	__property Rvdefine::TRaveUnits BarHeight = {read=GetBarHeight, write=SetBarHeight};
	__property Rvdefine::TRaveUnits BarTop = {read=GetBarTop, write=SetBarTop};
	__property Left = {stored=IsLeftStored, default=0};
	__property Rvdefine::TRaveUnits Right = {read=GetRight, write=SetRight, stored=IsRightStored};
	__property Rvdefine::TRaveUnits Center = {read=GetCenter, write=SetCenter, stored=IsCenterStored};
	__property Rpdefine::TPrintJustify TextJustify = {read=GetTextJustify, write=SetTextJustify, default=1};
	__property bool UseChecksum = {read=GetUseChecksum, write=SetUseChecksum, default=0};
	__property double WideFactor = {read=GetWideFactor, write=SetWideFactor};
	__property bool PrintReadable = {read=GetPrintReadable, write=SetPrintReadable, default=1};
	__property bool PrintChecksum = {read=GetPrintChecksum, write=SetPrintChecksum, default=0};
	__property bool PrintTop = {read=GetPrintTop, write=SetPrintTop, default=0};
	__property Rpbars::TBarCodeRotation BarCodeRotation = {read=GetBarCodeRotation, write=SetBarCodeRotation, default=0};
};


class PASCALIMPLEMENTATION TRavePostNetBarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	virtual void __fastcall SetHeight(Rvdefine::TRaveUnits Value);
	
public:
	__fastcall virtual TRavePostNetBarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property PrintReadable = {default=0};
	__property Height = {write=SetHeight, default=0};
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRavePostNetBarCode(void) { }
	
};


class PASCALIMPLEMENTATION TRaveI2of5BarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	
public:
	__fastcall virtual TRaveI2of5BarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRaveI2of5BarCode(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCode39BarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	void __fastcall SetExtended(bool Value);
	bool __fastcall GetExtended(void);
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	
public:
	__fastcall virtual TRaveCode39BarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property bool Extended = {read=GetExtended, write=SetExtended, nodefault};
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRaveCode39BarCode(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCode128BarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	void __fastcall SetCodePage(Rpbars::TCodePage128 Value);
	Rpbars::TCodePage128 __fastcall GetCodePage(void);
	void __fastcall SetOptimize(bool Value);
	bool __fastcall GetOptimize(void);
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	
public:
	__fastcall virtual TRaveCode128BarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property Rpbars::TCodePage128 CodePage = {read=GetCodePage, write=SetCodePage, nodefault};
	__property bool Optimize = {read=GetOptimize, write=SetOptimize, nodefault};
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRaveCode128BarCode(void) { }
	
};


class PASCALIMPLEMENTATION TRaveUPCBarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	
public:
	__fastcall virtual TRaveUPCBarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRaveUPCBarCode(void) { }
	
};


class PASCALIMPLEMENTATION TRaveEANBarCode : public TRaveBaseBarCode
{
	typedef TRaveBaseBarCode inherited;
	
protected:
	virtual Rpbars::TRPBarsBase* __fastcall CreateBarCodeClass(void);
	
public:
	__fastcall virtual TRaveEANBarCode(System::Classes::TComponent* AOwner);
	
__published:
	__property Text;
public:
	/* TRaveBaseBarCode.Destroy */ inline __fastcall virtual ~TRaveEANBarCode(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvcsbars */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCSBARS)
using namespace Rvcsbars;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcsbarsHPP
