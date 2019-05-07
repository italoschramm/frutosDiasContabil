// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpRPTF.pas' rev: 29.00 (Windows)

#ifndef RprptfHPP
#define RprptfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Vcl.Graphics.hpp>
#include <Winapi.Windows.hpp>
#include <System.Character.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rprptf
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall RPTFToText(System::UnicodeString InStr);
extern DELPHI_PACKAGE void __fastcall ParseRPTF(System::UnicodeString InStr, int &Pos, System::UnicodeString &TextStr, System::UnicodeString &RPTFStr);
extern DELPHI_PACKAGE void __fastcall ProcessRPTF(Rpbase::TBaseReport* BaseReport, System::UnicodeString RPTFStr);
extern DELPHI_PACKAGE System::UnicodeString __fastcall NextPiece(Rpbase::TBaseReport* BaseReport, System::UnicodeString InStr, int &Pos);
extern DELPHI_PACKAGE System::UnicodeString __fastcall UnformatStr(System::UnicodeString RPTFStr);
extern DELPHI_PACKAGE int __fastcall UnformatLen(System::UnicodeString RPTFStr);
extern DELPHI_PACKAGE int __fastcall UnformatLenC(System::WideChar * RPTFStr, int Length);
extern DELPHI_PACKAGE Rpdefine::TFormatState* __fastcall GetBaseRPTFState(void);
extern DELPHI_PACKAGE void __fastcall ApplyRPTFToState(Rpdefine::TFormatState* &State, System::UnicodeString RPTFStr);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StateToRPTF(Rpdefine::TFormatState* State);
extern DELPHI_PACKAGE void __fastcall RTFToRPTF(void *RTFBuffer, int RTFLength, System::Classes::TStream* RPTFStream);
extern DELPHI_PACKAGE void __fastcall RTFStreamToRPTF(System::Classes::TStream* RTFStream, System::Classes::TStream* RPTFStream);
extern DELPHI_PACKAGE int __fastcall SimpleTextWidth(Rpbase::TBaseReport* BaseReport, System::UnicodeString Value, int InitPos);
extern DELPHI_PACKAGE int __fastcall RPTFTextWidth(Rpbase::TBaseReport* BaseReport, System::UnicodeString Text);
extern DELPHI_PACKAGE double __fastcall RPTFTextHeight(Rpbase::TBaseReport* BaseReport, System::UnicodeString Text);
extern DELPHI_PACKAGE Rpdefine::TPrintJustify __fastcall GetJustify(System::UnicodeString RPTFStr, Rpdefine::TPrintJustify Justify);
}	/* namespace Rprptf */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPRPTF)
using namespace Rprptf;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RprptfHPP
