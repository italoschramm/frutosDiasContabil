// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpDBUtil.pas' rev: 29.00 (Windows)

#ifndef RpdbutilHPP
#define RpdbutilHPP

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
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <RpDefine.hpp>
#include <RpMemo.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpdbutil
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TDBMemoBuf;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TDBMemoBuf : public Rpmemo::TMemoBuf
{
	typedef Rpmemo::TMemoBuf inherited;
	
protected:
	void __fastcall SetMemoField(Data::Db::TMemoField* Value);
	void __fastcall SetRTFMemoField(Data::Db::TMemoField* Value);
	
public:
	__property Data::Db::TMemoField* Field = {write=SetMemoField};
	__property Data::Db::TMemoField* RTFField = {write=SetRTFMemoField};
public:
	/* TMemoBuf.Create */ inline __fastcall TDBMemoBuf(void) : Rpmemo::TMemoBuf() { }
	/* TMemoBuf.Destroy */ inline __fastcall virtual ~TDBMemoBuf(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall GraphicFieldToBitmap(Data::Db::TBlobField* GraphicField, Vcl::Graphics::TBitmap* Bitmap);
}	/* namespace Rpdbutil */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPDBUTIL)
using namespace Rpdbutil;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpdbutilHPP
