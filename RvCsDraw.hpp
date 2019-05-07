// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCsDraw.pas' rev: 29.00 (Windows)

#ifndef RvcsdrawHPP
#define RvcsdrawHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Messages.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Graphics.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RvClass.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcsdraw
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveGraphicBase;
class DELPHICLASS TRaveLine;
class DELPHICLASS TRaveHLine;
class DELPHICLASS TRaveVLine;
class DELPHICLASS TRaveSurface;
class DELPHICLASS TRaveRectangle;
class DELPHICLASS TRaveSquare;
class DELPHICLASS TRaveEllipse;
class DELPHICLASS TRaveCircle;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TRaveGraphicBase : public Rvclass::TRaveControl
{
	typedef Rvclass::TRaveControl inherited;
	
protected:
	double PenWidth;
	Rvdefine::TLineWidthType PenWidthType;
	Vcl::Graphics::TPen* GraphicPen;
	virtual void __fastcall SetForeColor(System::Uitypes::TColor Value);
	virtual System::Uitypes::TColor __fastcall GetForeColor(void);
	virtual void __fastcall SetLineWidth(double Value);
	virtual double __fastcall GetLineWidth(void);
	virtual void __fastcall SetLineWidthType(Rvdefine::TLineWidthType Value);
	virtual Rvdefine::TLineWidthType __fastcall GetLineWidthType(void);
	virtual void __fastcall SetLineStyle(Vcl::Graphics::TPenStyle Value);
	virtual Vcl::Graphics::TPenStyle __fastcall GetLineStyle(void);
	void __fastcall AssignPen(Vcl::Graphics::TPen* Pen, Rpbase::TBaseReport* Report, int &PenAdjust, int &PenAdjust2);
	
public:
	__fastcall virtual TRaveGraphicBase(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveGraphicBase(void);
};


class PASCALIMPLEMENTATION TRaveLine : public TRaveGraphicBase
{
	typedef TRaveGraphicBase inherited;
	
protected:
	bool FNESW;
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveLine(System::Classes::TComponent* AOwner);
	virtual bool __fastcall IsSelectPoint(const Rvdefine::TRavePoint &Point);
	virtual bool __fastcall InSelectRect(const Rvdefine::TRaveRect &Rect);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	virtual void __fastcall PipSize(Rvclass::TRavePip* RavePip, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	virtual void __fastcall SetSize(const Rvdefine::TRavePoint &P1, const Rvdefine::TRavePoint &P2);
	
__published:
	__property System::Uitypes::TColor Color = {read=GetForeColor, write=SetForeColor, default=0};
	__property Cursor = {default=0};
	__property Height = {default=0};
	__property Left = {default=0};
	__property Vcl::Graphics::TPenStyle LineStyle = {read=GetLineStyle, write=SetLineStyle, default=0};
	__property double LineWidth = {read=GetLineWidth, write=SetLineWidth};
	__property Rvdefine::TLineWidthType LineWidthType = {read=GetLineWidthType, write=SetLineWidthType, default=1};
	__property bool NESW = {read=FNESW, write=FNESW, nodefault};
	__property Top = {default=0};
	__property Width = {default=0};
public:
	/* TRaveGraphicBase.Destroy */ inline __fastcall virtual ~TRaveLine(void) { }
	
};


class PASCALIMPLEMENTATION TRaveHLine : public TRaveLine
{
	typedef TRaveLine inherited;
	
public:
	__fastcall virtual TRaveHLine(System::Classes::TComponent* AOwner);
	__classmethod virtual void __fastcall ModifyRect(System::Types::TPoint &P1, System::Types::TPoint &P2, System::Byte PipIndex);
	virtual bool __fastcall IsSelectPoint(const Rvdefine::TRavePoint &Point);
	virtual void __fastcall PipSize(Rvclass::TRavePip* RavePip, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	__classmethod virtual void __fastcall ModifyRaveRect(Rvdefine::TRavePoint &P1, Rvdefine::TRavePoint &P2);
public:
	/* TRaveGraphicBase.Destroy */ inline __fastcall virtual ~TRaveHLine(void) { }
	
};


class PASCALIMPLEMENTATION TRaveVLine : public TRaveLine
{
	typedef TRaveLine inherited;
	
public:
	__fastcall virtual TRaveVLine(System::Classes::TComponent* AOwner);
	__classmethod virtual void __fastcall ModifyRect(System::Types::TPoint &P1, System::Types::TPoint &P2, System::Byte PipIndex);
	virtual bool __fastcall IsSelectPoint(const Rvdefine::TRavePoint &Point);
	virtual void __fastcall PipSize(Rvclass::TRavePip* RavePip, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	__classmethod virtual void __fastcall ModifyRaveRect(Rvdefine::TRavePoint &P1, Rvdefine::TRavePoint &P2);
public:
	/* TRaveGraphicBase.Destroy */ inline __fastcall virtual ~TRaveVLine(void) { }
	
};


class PASCALIMPLEMENTATION TRaveSurface : public TRaveGraphicBase
{
	typedef TRaveGraphicBase inherited;
	
protected:
	Vcl::Graphics::TBrush* FillBrush;
	virtual void __fastcall SetBackColor(System::Uitypes::TColor Value);
	virtual System::Uitypes::TColor __fastcall GetBackColor(void);
	virtual void __fastcall SetFillStyle(Rvdefine::TRaveFillStyle Value);
	virtual Rvdefine::TRaveFillStyle __fastcall GetFillStyle(void);
	
public:
	__fastcall virtual TRaveSurface(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveSurface(void);
	__property System::Uitypes::TColor BorderColor = {read=GetForeColor, write=SetForeColor, default=0};
	__property Vcl::Graphics::TPenStyle BorderStyle = {read=GetLineStyle, write=SetLineStyle, default=0};
	__property double BorderWidth = {read=GetLineWidth, write=SetLineWidth};
	__property Rvdefine::TLineWidthType BorderWidthType = {read=GetLineWidthType, write=SetLineWidthType, default=1};
	__property System::Uitypes::TColor FillColor = {read=GetBackColor, write=SetBackColor, default=16777215};
};


class PASCALIMPLEMENTATION TRaveRectangle : public TRaveSurface
{
	typedef TRaveSurface inherited;
	
protected:
	Rvdefine::TRaveUnits FHRadius;
	Rvdefine::TRaveUnits FVRadius;
	void __fastcall SetHRadius(Rvdefine::TRaveUnits Value);
	void __fastcall SetVRadius(Rvdefine::TRaveUnits Value);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveRectangle(System::Classes::TComponent* AOwner);
	
__published:
	__property BorderColor = {default=0};
	__property BorderStyle = {default=0};
	__property BorderWidth = {default=0};
	__property BorderWidthType = {default=1};
	__property Cursor = {default=0};
	__property FillColor = {default=16777215};
	__property FillStyle;
	__property Height = {default=0};
	__property Rvdefine::TRaveUnits HRadius = {read=FHRadius, write=SetHRadius};
	__property Left = {default=0};
	__property Top = {default=0};
	__property Rvdefine::TRaveUnits VRadius = {read=FVRadius, write=SetVRadius};
	__property Width = {default=0};
public:
	/* TRaveSurface.Destroy */ inline __fastcall virtual ~TRaveRectangle(void) { }
	
};


class PASCALIMPLEMENTATION TRaveSquare : public TRaveRectangle
{
	typedef TRaveRectangle inherited;
	
public:
	__fastcall virtual TRaveSquare(System::Classes::TComponent* AOwner);
	__classmethod virtual void __fastcall ModifyRect(System::Types::TPoint &P1, System::Types::TPoint &P2, System::Byte PipIndex);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	__classmethod virtual void __fastcall ModifyRaveRect(Rvdefine::TRavePoint &P1, Rvdefine::TRavePoint &P2);
public:
	/* TRaveSurface.Destroy */ inline __fastcall virtual ~TRaveSquare(void) { }
	
};


class PASCALIMPLEMENTATION TRaveEllipse : public TRaveSurface
{
	typedef TRaveSurface inherited;
	
protected:
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TRaveEllipse(System::Classes::TComponent* AOwner);
	
__published:
	__property BorderColor = {default=0};
	__property BorderStyle = {default=0};
	__property BorderWidth = {default=0};
	__property BorderWidthType = {default=1};
	__property Cursor = {default=0};
	__property FillColor = {default=16777215};
	__property FillStyle;
	__property Height = {default=0};
	__property Left = {default=0};
	__property Top = {default=0};
	__property Width = {default=0};
public:
	/* TRaveSurface.Destroy */ inline __fastcall virtual ~TRaveEllipse(void) { }
	
};


class PASCALIMPLEMENTATION TRaveCircle : public TRaveEllipse
{
	typedef TRaveEllipse inherited;
	
public:
	__fastcall virtual TRaveCircle(System::Classes::TComponent* AOwner);
	__classmethod virtual void __fastcall ModifyRect(System::Types::TPoint &P1, System::Types::TPoint &P2, System::Byte PipIndex);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	__classmethod virtual void __fastcall ModifyRaveRect(Rvdefine::TRavePoint &P1, Rvdefine::TRavePoint &P2);
public:
	/* TRaveSurface.Destroy */ inline __fastcall virtual ~TRaveCircle(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvcsdraw */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCSDRAW)
using namespace Rvcsdraw;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcsdrawHPP
