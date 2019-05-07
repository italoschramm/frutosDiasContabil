// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpMBCS.pas' rev: 29.00 (Windows)

#ifndef RpmbcsHPP
#define RpmbcsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpmbcs
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::WideChar * __fastcall MBCSNextChar(const System::WideChar * AStr);
extern DELPHI_PACKAGE System::UnicodeString __fastcall MBCSCopy(System::UnicodeString AString, int APos, int ACount);
extern DELPHI_PACKAGE void __fastcall MBCSDelete(System::UnicodeString &AString, int APos, int ACount);
}	/* namespace Rpmbcs */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPMBCS)
using namespace Rpmbcs;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpmbcsHPP
