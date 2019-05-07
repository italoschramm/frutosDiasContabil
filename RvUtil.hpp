// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvUtil.pas' rev: 29.00 (Windows)

#ifndef RvutilHPP
#define RvutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Controls.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvDefine.hpp>
#include <RpDefine.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvutil
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveStackList;
class DELPHICLASS TStreamHelper;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveStackList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
protected:
	bool __fastcall GetEmpty(void);
	void * __fastcall GetTop(void);
	
public:
	void __fastcall Push(void * Item);
	void * __fastcall Pop(void);
	void * __fastcall Peek(int Down);
	__property bool Empty = {read=GetEmpty, nodefault};
	__property void * Top = {read=GetTop};
public:
	/* TList.Destroy */ inline __fastcall virtual ~TRaveStackList(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRaveStackList(void) : System::Classes::TList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TStreamHelper : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Classes::TStream* FStream;
	System::Byte FCompressMethod;
	int LastPos;
	TRaveStackList* StreamStack;
	int __fastcall CreateMarker(void);
	void __fastcall UpdateMarker(int Marker);
	
public:
	__fastcall TStreamHelper(System::Classes::TStream* AStream);
	__fastcall virtual ~TStreamHelper(void);
	System::Classes::TStream* __fastcall PopStream(void);
	void __fastcall PushStream(System::Classes::TStream* AStream);
	void __fastcall SavePos(void);
	void __fastcall RestorePos(void);
	void __fastcall WriteByte(const System::Byte Value);
	void __fastcall WriteIndex(const int Value);
	void __fastcall Write(const void * Value, int Count)/* overload */;
	void __fastcall Write(const System::Byte Value)/* overload */;
	void __fastcall Write(const bool Value)/* overload */;
	void __fastcall Write(const char Value)/* overload */;
	void __fastcall Write(const System::Int8 Value)/* overload */;
	void __fastcall Write(const short Value)/* overload */;
	void __fastcall Write(const System::Word Value)/* overload */;
	void __fastcall Write(const int Value)/* overload */;
	void __fastcall Write(const unsigned Value)/* overload */;
	void __fastcall Write(const __int64 Value)/* overload */;
	void __fastcall Write(const float Value)/* overload */;
	void __fastcall Write(const double Value)/* overload */;
	void __fastcall Write(const System::Extended Value)/* overload */;
	void __fastcall Write(const System::UnicodeString Value)/* overload */;
	void __fastcall StartWriteBlock(void);
	void __fastcall FinishWriteBlock(void);
	void __fastcall StartReadBlock(void);
	void __fastcall FinishReadBlock(void);
	void __fastcall SaveBlock(System::Classes::TStream* Source);
	void __fastcall LoadBlock(System::Classes::TStream* Dest);
	void __fastcall SkipBlock(void);
	bool __fastcall Empty(void);
	System::Byte __fastcall ReadByte(void);
	System::UnicodeString __fastcall ReadString(void);
	int __fastcall ReadIndex(void);
	void __fastcall Read(void * Value, int Count)/* overload */;
	void __fastcall Read(System::Byte &Value)/* overload */;
	void __fastcall Read(bool &Value)/* overload */;
	void __fastcall Read(char &Value)/* overload */;
	void __fastcall Read(System::Int8 &Value)/* overload */;
	void __fastcall Read(short &Value)/* overload */;
	void __fastcall Read(System::Word &Value)/* overload */;
	void __fastcall Read(int &Value)/* overload */;
	void __fastcall Read(unsigned &Value)/* overload */;
	void __fastcall Read(__int64 &Value)/* overload */;
	void __fastcall Read(float &Value)/* overload */;
	void __fastcall Read(double &Value)/* overload */;
	void __fastcall Read(System::Extended &Value)/* overload */;
	void __fastcall Read(System::TDateTime &Value)/* overload */;
	void __fastcall Read(System::UnicodeString &Value)/* overload */;
	__property System::Classes::TStream* Stream = {read=FStream};
	__property System::Byte CompressMethod = {read=FCompressMethod, write=FCompressMethod, nodefault};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const System::Int8 NoCompression = System::Int8(0x0);
static const System::Int8 CompressMethod1 = System::Int8(0x1);
static const System::Int8 CompressMethod2 = System::Int8(0x2);
extern DELPHI_PACKAGE int DefaultCompressMethod;
extern DELPHI_PACKAGE void __fastcall (*CompressStreamProc)(System::Byte CompressMethod, System::Classes::TStream* InStream, System::Classes::TStream* OutStream);
extern DELPHI_PACKAGE void __fastcall (*UncompressStreamProc)(System::Byte CompressMethod, System::Classes::TStream* InStream, System::Classes::TStream* OutStream);
extern DELPHI_PACKAGE void __fastcall CloneObject(System::Classes::TPersistent* Source, System::Classes::TPersistent* Dest);
extern DELPHI_PACKAGE void __fastcall MergeMainMenu(Vcl::Menus::TMenu* MainMenu, Vcl::Menus::TMenu* SubMenu);
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall ModColor(System::Uitypes::TColor Color);
extern DELPHI_PACKAGE System::UnicodeString __fastcall ValidID(System::UnicodeString Value);
extern DELPHI_PACKAGE void __fastcall CopyList(System::Classes::TList* FromList, System::Classes::TList* ToList);
extern DELPHI_PACKAGE void __fastcall AbortReport(System::Classes::TComponent* Component);
extern DELPHI_PACKAGE System::UnicodeString __fastcall CutWord(System::UnicodeString &Value, System::WideChar &SepCh, System::UnicodeString SepStr);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StripJoinChars(System::UnicodeString Value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall AddJoinChars(System::UnicodeString Value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall ExtractQuotedString(System::UnicodeString &Value, System::WideChar Quote);
extern DELPHI_PACKAGE void __fastcall SetControlsEnabled(bool State, Vcl::Controls::TControl* *Controls, const int Controls_High);
extern DELPHI_PACKAGE int __fastcall OffsetToIndex(int Offset);
extern DELPHI_PACKAGE int __fastcall IndexToOffset(int Index);
extern DELPHI_PACKAGE void __fastcall ClearObjectList(System::Classes::TList* List);
extern DELPHI_PACKAGE void __fastcall ClearStringList(System::Classes::TStrings* List);
extern DELPHI_PACKAGE int __fastcall FindStringPos(System::UnicodeString InStr, System::UnicodeString SearchString);
extern DELPHI_PACKAGE bool __fastcall FoundString(System::UnicodeString InStr, System::UnicodeString SearchString);
extern DELPHI_PACKAGE int __fastcall FindString(System::UnicodeString InStr, System::UnicodeString SearchString);
extern DELPHI_PACKAGE bool __fastcall SameStr(System::UnicodeString S1, System::UnicodeString S2);
extern DELPHI_PACKAGE System::UnicodeString __fastcall Flt2Str(double Value, System::Byte Digits);
extern DELPHI_PACKAGE int __fastcall MinI(int I1, int I2);
extern DELPHI_PACKAGE int __fastcall MaxI(int I1, int I2);
extern DELPHI_PACKAGE void __fastcall MinMaxI(int &Out1, int &Out2, int In1, int In2);
extern DELPHI_PACKAGE double __fastcall MinF(double F1, double F2);
extern DELPHI_PACKAGE double __fastcall MaxF(double F1, double F2);
extern DELPHI_PACKAGE void __fastcall MinMaxF(double &Out1, double &Out2, double In1, double In2);
extern DELPHI_PACKAGE bool __fastcall FEQ(double F1, double F2);
extern DELPHI_PACKAGE bool __fastcall FGT(double F1, double F2);
extern DELPHI_PACKAGE bool __fastcall FLT(double F1, double F2);
extern DELPHI_PACKAGE bool __fastcall FNE(double F1, double F2);
extern DELPHI_PACKAGE bool __fastcall FLE(double F1, double F2);
extern DELPHI_PACKAGE bool __fastcall FGE(double F1, double F2);
extern DELPHI_PACKAGE Rvdefine::TRaveRect __fastcall RaveRect(Rvdefine::TRaveUnits Left, Rvdefine::TRaveUnits Top, Rvdefine::TRaveUnits Right, Rvdefine::TRaveUnits Bottom);
extern DELPHI_PACKAGE Rvdefine::TRavePoint __fastcall RavePoint(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
extern DELPHI_PACKAGE bool __fastcall PtInRaveRect(const Rvdefine::TRaveRect &Rect, const Rvdefine::TRavePoint &Point);
extern DELPHI_PACKAGE bool __fastcall IntersectRaveRect(Rvdefine::TRaveRect &SharedRect, const Rvdefine::TRaveRect &Rect1, const Rvdefine::TRaveRect &Rect2);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StripFloatStr(System::UnicodeString Value);
extern DELPHI_PACKAGE double __fastcall StrToFloatDef(System::UnicodeString Value, double Def);
extern DELPHI_PACKAGE System::Currency __fastcall StrToCurrDef(System::UnicodeString Value, System::Currency Def);
extern DELPHI_PACKAGE System::TDateTime __fastcall StrToDateTimeDef(System::UnicodeString Value, System::TDateTime Def);
}	/* namespace Rvutil */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVUTIL)
using namespace Rvutil;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvutilHPP
