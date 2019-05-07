// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpMemo.pas' rev: 29.00 (Windows)

#ifndef RpmemoHPP
#define RpmemoHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.Character.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpmemo
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TMemoBuf;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TMemoBuf : public Rpbase::TBaseMemoBuf
{
	typedef Rpbase::TBaseMemoBuf inherited;
	
protected:
	double FMaxHeight;
	int FBufferInc;
	bool FNoNewLine;
	Rpdefine::TCharArray *FSaveBuffer;
	int FSaveSize;
	System::Classes::TList* FSaveRPTFList;
	Rpdefine::TCharArray *FBuffer;
	int FSize;
	int FMaxSize;
	int FPos;
	bool FNewParagraph;
	bool NewLine;
	System::UnicodeString FSearchText;
	int FSearchLen;
	bool FCaseMatters;
	System::Classes::TList* FRPTFList;
	bool FProcessRPTF;
	System::UnicodeString LastRPTF;
	bool ReadRTF;
	bool ReplaceRPTF;
	int NonSpacePos;
	double LeftIndent;
	double RightIndent;
	int SaveFPos;
	bool SaveNewParagraph;
	bool SaveNewLine;
	System::UnicodeString __fastcall GetText(void);
	void __fastcall SetText(System::UnicodeString Value);
	void __fastcall SetRTFText(System::UnicodeString Value);
	void __fastcall SetPos(int Value);
	void __fastcall SetMaxSize(int Value);
	void __fastcall SetMemo(Vcl::Stdctrls::TMemo* Value);
	void __fastcall SetRichEdit(Vcl::Comctrls::TRichEdit* Value);
	void __fastcall SetSize(int Value);
	void __fastcall FreeBuffer(void);
	void __fastcall ClearRPTFList(System::Classes::TList* List);
	void __fastcall CopyRPTFList(System::Classes::TList* FromList, System::Classes::TList* ToList);
	void __fastcall AddRPTFString(System::UnicodeString RPTFStr, int BufPos);
	System::UnicodeString __fastcall FillRPTF(System::UnicodeString TextStr, int StartPos);
	Rpdefine::TFormatState* __fastcall GetStateAtPos(int Pos);
	System::UnicodeString __fastcall GetLine(int Width, bool &Eol);
	
public:
	__fastcall TMemoBuf(void);
	__fastcall virtual ~TMemoBuf(void);
	bool __fastcall HasRPTF(void);
	void __fastcall Reset(void);
	void __fastcall SaveState(void);
	void __fastcall RestoreState(void);
	System::UnicodeString __fastcall GetWord(void);
	void __fastcall SetData(void *Buffer, int BufSize);
	void __fastcall SetRTF(void *Buffer, int BufSize);
	void __fastcall SaveToStream(System::Classes::TStream* Stream);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream, int BufSize);
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	void __fastcall RTFLoadFromStream(System::Classes::TStream* Stream, int BufSize);
	void __fastcall RTFLoadFromFile(System::UnicodeString FileName);
	void __fastcall InsertMemoBuf(int BufPos, TMemoBuf* MemoBuf);
	void __fastcall AppendMemoBuf(TMemoBuf* MemoBuf);
	bool __fastcall Empty(void);
	void __fastcall Insert(int BufPos, System::UnicodeString Text);
	void __fastcall Append(System::UnicodeString Text);
	void __fastcall Delete(int BufPos, int DelLen);
	bool __fastcall SearchFirst(System::UnicodeString SearchText, bool CaseMatters);
	bool __fastcall SearchNext(void);
	void __fastcall ReplaceAll(System::UnicodeString SearchText, System::UnicodeString ReplaceText, bool CaseMatters);
	void __fastcall SaveBuffer(void);
	void __fastcall RestoreBuffer(void);
	void __fastcall FreeSaved(void);
	virtual System::UnicodeString __fastcall GetNextLine(bool &Eol);
	virtual int __fastcall MemoLinesLeft(void);
	virtual double __fastcall PrintLines(int Lines, bool PrintTabs);
	double __fastcall PrintHeight(double Height, bool PrintTabs);
	double __fastcall MemoHeightLeft(void);
	double __fastcall ConstrainHeightLeft(double Constraint);
	__property bool NewParagraph = {read=FNewParagraph, nodefault};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property System::UnicodeString RTFText = {write=SetRTFText};
	__property int Size = {read=FSize, write=SetSize, nodefault};
	__property int MaxSize = {read=FMaxSize, write=SetMaxSize, nodefault};
	__property int Pos = {read=FPos, write=SetPos, nodefault};
	__property Rpdefine::PCharArray Buffer = {read=FBuffer};
	__property bool NoCRLF = {read=FNoNewLine, write=FNoNewLine, nodefault};
	__property bool NoNewLine = {read=FNoNewLine, write=FNoNewLine, nodefault};
	__property int BufferInc = {read=FBufferInc, write=FBufferInc, nodefault};
	__property Vcl::Stdctrls::TMemo* Memo = {write=SetMemo};
	__property Vcl::Comctrls::TRichEdit* RichEdit = {write=SetRichEdit};
	__property bool ProcessRPTF = {read=FProcessRPTF, write=FProcessRPTF, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Rpmemo */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPMEMO)
using namespace Rpmemo;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpmemoHPP
