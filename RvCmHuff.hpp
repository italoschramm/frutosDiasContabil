// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvCmHuff.pas' rev: 29.00 (Windows)

#ifndef RvcmhuffHPP
#define RvcmhuffHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvcmhuff
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
typedef System::Word __fastcall (*IOFuncType)(void *Buffer, System::Word Amount);

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Compress(System::Byte InBits, System::Byte MaxBits, IOFuncType IFunc, IOFuncType OFunc);
extern DELPHI_PACKAGE void __fastcall Decompress(System::Byte InBits, System::Byte MaxBits, IOFuncType IFunc, IOFuncType OFunc);
}	/* namespace Rvcmhuff */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCMHUFF)
using namespace Rvcmhuff;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvcmhuffHPP
