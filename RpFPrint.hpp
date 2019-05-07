// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpFPrint.pas' rev: 29.00 (Windows)

#ifndef RpfprintHPP
#define RpfprintHPP

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
#include <Vcl.ExtCtrls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <RpDevice.hpp>
#include <RpCanvas.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpfprint
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TFilePrinter;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TFilePrinter : public Rpcanvas::TCanvasReport
{
	typedef Rpcanvas::TCanvasReport inherited;
	
protected:
	System::Classes::TStream* FStream;
	Rpdefine::TStreamMode FStreamMode;
	System::Sysutils::TFileName FInputFileName;
	int PrevPagePos;
	int CurrPagePos;
	int NextPagePos;
	double PaperWidth;
	double PaperHeight;
	int FileVer;
	bool ReuseGraphic;
	bool FIgnoreFileSettings;
	Rpdefine::TOrientation NextOrientation;
	System::Classes::TStringList* VarList;
	bool JobHeaderRead;
	int __fastcall GetPages(void);
	System::Byte __fastcall ReadByte(void);
	short __fastcall ReadInteger(void);
	int __fastcall ReadLongint(void);
	System::UnicodeString __fastcall ReadText(void);
	double __fastcall ReadFloat(void);
	void __fastcall ReadXY(double &X, double &Y);
	void __fastcall LoadGraphic(Vcl::Graphics::TGraphic* Value);
	void __fastcall ReadGraphic(Vcl::Graphics::TGraphic* Value);
	void __fastcall CreateGraphic(Vcl::Graphics::TGraphic* &Value);
	System::Types::TPoint __fastcall ReadPoint(void);
	System::Types::TRect __fastcall ReadRect(void);
	void __fastcall ReadBuf(void *Buf, int Len);
	void __fastcall MatchCode(System::Byte Value);
	void __fastcall ReadBrush(void);
	void __fastcall ReadFont(void);
	void __fastcall ReadPen(void);
	void __fastcall ReadJobHeader(void);
	void __fastcall ReadPageHeader(void);
	System::UnicodeString __fastcall ReadPIVar(void);
	void __fastcall ClearVarList(void);
	bool __fastcall InitInputStream(void);
	virtual void __fastcall GotoPage(System::Word PageNum);
	void __fastcall SetStream(System::Classes::TStream* Value);
	void __fastcall SetStreamMode(Rpdefine::TStreamMode Value);
	
public:
	__fastcall virtual TFilePrinter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TFilePrinter(void);
	virtual System::UnicodeString __fastcall GetPIVar(System::UnicodeString VarName);
	virtual void __fastcall SetPIVar(System::UnicodeString VarName, System::UnicodeString VarValue);
	virtual void __fastcall PrintPage(System::Word PageNum);
	void __fastcall ExecuteCustom(int NewFirstPage, int NewLastPage, int NewCopies);
	virtual void __fastcall Execute(void);
	virtual void __fastcall Start(void);
	virtual void __fastcall Finish(void);
	__property int Pages = {read=GetPages, nodefault};
	__property System::Classes::TStream* Stream = {read=FStream, write=SetStream};
	__property bool IgnoreFileSettings = {read=FIgnoreFileSettings, write=FIgnoreFileSettings, nodefault};
	
__published:
	__property System::Sysutils::TFileName FileName = {read=FInputFileName, write=FInputFileName};
	__property Rpdefine::TStreamMode StreamMode = {read=FStreamMode, write=SetStreamMode, default=0};
	__property OnDecodeImage;
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpfprint */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPFPRINT)
using namespace Rpfprint;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpfprintHPP
