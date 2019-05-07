// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvClass.pas' rev: 29.00 (Windows)

#ifndef RvclassHPP
#define RvclassHPP

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
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.TypInfo.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvDefine.hpp>
#include <RvUtil.hpp>
#include <RpDefine.hpp>
#include <RpBase.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvclass
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRavePersistentList;
class DELPHICLASS TRaveComponentList;
class DELPHICLASS TRaveMethodList;
class DELPHICLASS TRaveComponent;
class DELPHICLASS TRaveControl;
class DELPHICLASS TRaveContainerControl;
class DELPHICLASS TRaveContainerComponent;
class DELPHICLASS TRaveProjectItem;
class DELPHICLASS TRaveDataObject;
class DELPHICLASS TRavePage;
class DELPHICLASS TRaveDesigner;
class DELPHICLASS TRavePip;
class DELPHICLASS TRaveFiler;
class DELPHICLASS TRaveWriter;
class DELPHICLASS TRaveReader;
class DELPHICLASS TRaveFont;
class DELPHICLASS ERaveCompiler;
class DELPHICLASS TRaveModule;
class DELPHICLASS TRaveEvent;
class DELPHICLASS TRaveSimpleEvent;
class DELPHICLASS TRaveStringEvent;
class DELPHICLASS TRaveFloatEvent;
class DELPHICLASS TRaveCompileStatus;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TRaveComponentStyle : unsigned char { rcsContainer, rcsInvisible, rcsLoading, rcsReflecting };

typedef System::Set<TRaveComponentStyle, TRaveComponentStyle::rcsContainer, TRaveComponentStyle::rcsReflecting> TRaveComponentStyleSet;

typedef void __fastcall (__closure *TRaveListenEvent)(TRaveComponent* Speaker, System::TObject* Msg);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRavePersistentList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	HIDESBASE void __fastcall Assign(TRavePersistentList* Source);
	virtual System::Classes::TPersistent* __fastcall CreateItem(System::UnicodeString ItemClass, System::Classes::TComponent* RootOwner);
public:
	/* TList.Destroy */ inline __fastcall virtual ~TRavePersistentList(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRavePersistentList(void) : System::Classes::TList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveComponentList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	/* TList.Destroy */ inline __fastcall virtual ~TRaveComponentList(void) { }
	
public:
	/* TObject.Create */ inline __fastcall TRaveComponentList(void) : System::Classes::TList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveMethodList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	__fastcall virtual ~TRaveMethodList(void);
	void __fastcall AddMethod(const System::TMethod &Method);
	void __fastcall RemoveMethod(const System::TMethod &Method);
	void __fastcall RemoveObject(System::TObject* Obj);
	void __fastcall ReplaceObject(System::TObject* OldObj, System::TObject* NewObj);
public:
	/* TObject.Create */ inline __fastcall TRaveMethodList(void) : System::Classes::TList() { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TRaveComponentClass;

class PASCALIMPLEMENTATION TRaveComponent : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
protected:
	System::Byte FPrintDepth;
	TRaveComponentStyleSet FControlStyle;
	bool FDevLocked;
	System::TObject* FHolder;
	TRaveComponent* FParent;
	bool FVisible;
	bool FLocked;
	TRavePage* FPage;
	TRaveProjectItem* FReport;
	TRaveProjectItem* FProject;
	TRaveSimpleEvent* FOnBeforeReport;
	TRaveSimpleEvent* FOnAfterReport;
	TRaveSimpleEvent* FOnBeforePrint;
	TRaveSimpleEvent* FOnAfterPrint;
	__classmethod virtual bool __fastcall UseMaster();
	__classmethod virtual bool __fastcall AcceptParent(System::TClass NewParent);
	void __fastcall DestroyEvents(void);
	virtual bool __fastcall AcceptChild(System::TClass NewChild);
	virtual void __fastcall DestroyChildren(void);
	virtual void __fastcall PostLoad(void);
	virtual void __fastcall SetParent(TRaveComponent* Value);
	void __fastcall SetVisible(bool Value);
	virtual void __fastcall AddChild(TRaveComponent* Value);
	virtual void __fastcall RemoveChild(TRaveComponent* Value);
	virtual TRaveComponent* __fastcall GetChild(int Index);
	virtual int __fastcall GetChildCount(void);
	virtual int __fastcall GetChildIndex(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageLeft(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageTop(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageRight(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageBottom(void);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	virtual void __fastcall OverrideProperties(TRaveFiler* Filer);
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall BeforeReport(void);
	virtual void __fastcall AfterReport(void);
	virtual void __fastcall BeforePrint(void);
	virtual void __fastcall Print(Rpbase::TBaseReport* Report);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	virtual void __fastcall AfterPrint(void);
	virtual void __fastcall InitData(void);
	virtual void __fastcall DoneData(void);
	virtual void __fastcall SetDepth(TRaveComponent* Control, int Adjustment);
	virtual void __fastcall Changing(TRaveComponent* OldItem, TRaveComponent* NewItem);
	void __fastcall SetLocked(bool Value);
	void __fastcall SetDevLocked(bool Value);
	virtual void __fastcall SaveDesigned(void);
	virtual void __fastcall RestoreDesigned(void);
	virtual void __fastcall SaveAdjusted(void);
	virtual void __fastcall RestoreAdjusted(void);
	void __fastcall Speak(TRaveMethodList* List, System::TObject* Msg);
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* Value);
	
public:
	__fastcall virtual TRaveComponent(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveComponent(void);
	virtual void __fastcall Hide(void);
	void __fastcall Invalidate(void);
	virtual void __fastcall Show(void);
	DYNAMIC System::Classes::TComponent* __fastcall GetParentComponent(void);
	void __fastcall MoveForward(void);
	void __fastcall MoveBehind(void);
	void __fastcall BringToFront(void);
	void __fastcall SendToBack(void);
	virtual bool __fastcall AllowPrint(void);
	TRaveComponent* __fastcall CreateChild(TRaveComponentClass AClassType, System::UnicodeString ABaseName = System::UnicodeString(), Rvdefine::TRaveUnits ALeft = 0.000000E+00, Rvdefine::TRaveUnits ATop = 0.000000E+00, Rvdefine::TRaveUnits AWidth = 0.000000E+00, Rvdefine::TRaveUnits AHeight = 0.000000E+00);
	bool __fastcall IsLocked(void);
	bool __fastcall IsLocker(void);
	TRaveComponent* __fastcall GetLocker(void);
	Rvdefine::TRaveUnits __fastcall XU2I(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall YU2I(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall XI2U(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall YI2U(Rvdefine::TRaveUnits Value);
	virtual bool __fastcall CanSelect(TRaveComponent* Item);
	virtual void __fastcall PrintParams(Rvdefine::TRaveUnits &HDelta, Rvdefine::TRaveUnits &VDelta);
	virtual void __fastcall AddListener(System::UnicodeString Conversation, TRaveListenEvent ListenMethod);
	virtual void __fastcall RemoveListener(System::UnicodeString Conversation, TRaveListenEvent ListenMethod);
	virtual bool __fastcall Habla(System::UnicodeString Conversation);
	__property Rvdefine::TRaveUnits PageLeft = {read=GetPageLeft};
	__property Rvdefine::TRaveUnits PageTop = {read=GetPageTop};
	__property Rvdefine::TRaveUnits PageRight = {read=GetPageRight};
	__property Rvdefine::TRaveUnits PageBottom = {read=GetPageBottom};
	__property TRaveComponent* Child[int Index] = {read=GetChild};
	__property int ChildCount = {read=GetChildCount, nodefault};
	__property int ChildIndex = {read=GetChildIndex, nodefault};
	__property TRaveComponentStyleSet ControlStyle = {read=FControlStyle, write=FControlStyle, nodefault};
	__property bool DonePrinting = {read=GetDonePrinting, nodefault};
	__property TRavePage* Page = {read=FPage};
	__property TRaveProjectItem* Report = {read=FReport};
	__property TRaveProjectItem* Project = {read=FProject};
	__property TRaveComponent* Parent = {read=FParent, write=SetParent};
	
__published:
	__property bool Locked = {read=FLocked, write=SetLocked, default=0};
	__property bool DevLocked = {read=FDevLocked, write=SetDevLocked, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property TRaveSimpleEvent* OnBeforeReport = {read=FOnBeforeReport, write=FOnBeforeReport};
	__property TRaveSimpleEvent* OnAfterReport = {read=FOnAfterReport, write=FOnAfterReport};
	__property TRaveSimpleEvent* OnBeforePrint = {read=FOnBeforePrint, write=FOnBeforePrint};
	__property TRaveSimpleEvent* OnAfterPrint = {read=FOnAfterPrint, write=FOnAfterPrint};
};


class PASCALIMPLEMENTATION TRaveControl : public TRaveComponent
{
	typedef TRaveComponent inherited;
	
protected:
	TRaveControl* FMirror;
	System::Classes::TList* FMirrorList;
	Rvdefine::TRavePoint FMirrorPoint;
	System::UnicodeString FMirrorOverride;
	System::Uitypes::TCursor FCursor;
	Rvdefine::TRaveUnits FLeft;
	Rvdefine::TRaveUnits FTop;
	Rvdefine::TRaveUnits FWidth;
	Rvdefine::TRaveUnits FHeight;
	Rvdefine::TRaveUnits FDesLeft;
	Rvdefine::TRaveUnits FDesTop;
	Rvdefine::TRaveUnits FDesWidth;
	Rvdefine::TRaveUnits FDesHeight;
	Rvdefine::TRaveUnits FAdjLeft;
	Rvdefine::TRaveUnits FAdjTop;
	Rvdefine::TRaveUnits FAdjWidth;
	Rvdefine::TRaveUnits FAdjHeight;
	Rvdefine::TDisplayOn FDisplayOn;
	Rvdefine::TRaveAnchor FAnchor;
	bool DisableResize;
	virtual void __fastcall AddMirror(TRaveControl* Value);
	virtual void __fastcall RemoveMirror(TRaveControl* Value);
	void __fastcall SetMirror(TRaveControl* Value);
	void __fastcall PrintMirror(Rpbase::TBaseReport* AReport, TRaveControl* AOrig, TRaveControl* AControl);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	void __fastcall PaintMirror(Vcl::Graphics::TCanvas* Canvas, TRaveControl* Orig, TRaveControl* Control);
	virtual void __fastcall PaintAll(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall SetFontAttr(Rvdefine::TFontAttribute Index, TRaveFont* Value);
	virtual TRaveFont* __fastcall GetFontAttr(Rvdefine::TFontAttribute Index);
	int __fastcall XI2P(Rvdefine::TRaveUnits Value);
	int __fastcall YI2P(Rvdefine::TRaveUnits Value);
	int __fastcall XI2D(Rvdefine::TRaveUnits Value);
	int __fastcall YI2D(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall XD2I(int Value);
	Rvdefine::TRaveUnits __fastcall YD2I(int Value);
	HRGN __fastcall SetClipped(Vcl::Graphics::TCanvas* Canvas);
	void __fastcall SetUnclipped(Vcl::Graphics::TCanvas* Canvas, HRGN SaveRgn);
	Rvdefine::TRavePoint __fastcall PageToClient(const Rvdefine::TRavePoint &Point);
	Rvdefine::TRavePoint __fastcall ClientToPage(const Rvdefine::TRavePoint &Point);
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	virtual void __fastcall SetText(System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetText(void);
	virtual void __fastcall SetFontJustify(Rpdefine::TPrintJustify Value);
	virtual Rpdefine::TPrintJustify __fastcall GetFontJustify(void);
	virtual void __fastcall SetForeColor(System::Uitypes::TColor Value);
	virtual System::Uitypes::TColor __fastcall GetForeColor(void);
	virtual void __fastcall SetBackColor(System::Uitypes::TColor Value);
	virtual System::Uitypes::TColor __fastcall GetBackColor(void);
	virtual void __fastcall SetFillStyle(Rvdefine::TRaveFillStyle Value);
	virtual Rvdefine::TRaveFillStyle __fastcall GetFillStyle(void);
	virtual void __fastcall SetLineWidth(double Value);
	virtual double __fastcall GetLineWidth(void);
	virtual void __fastcall SetLineWidthType(Rvdefine::TLineWidthType Value);
	virtual Rvdefine::TLineWidthType __fastcall GetLineWidthType(void);
	virtual void __fastcall SetLineStyle(Vcl::Graphics::TPenStyle Value);
	virtual Vcl::Graphics::TPenStyle __fastcall GetLineStyle(void);
	virtual void __fastcall Changing(TRaveComponent* OldItem, TRaveComponent* NewItem);
	virtual bool __fastcall GetDonePrinting(void);
	virtual void __fastcall AnchorAdjust(bool WidthChanging, Rvdefine::TRaveUnits OldWidth, Rvdefine::TRaveUnits NewWidth, bool HeightChanging, Rvdefine::TRaveUnits OldHeight, Rvdefine::TRaveUnits NewHeight);
	virtual void __fastcall AnchorAdjustAll(bool WidthChanging, Rvdefine::TRaveUnits OldWidth, Rvdefine::TRaveUnits NewWidth, bool HeightChanging, Rvdefine::TRaveUnits OldHeight, Rvdefine::TRaveUnits NewHeight);
	void __fastcall ResizeAll(void);
	virtual Rvdefine::TRaveUnits __fastcall GetLeft(void);
	virtual void __fastcall SetLeft(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetTop(void);
	virtual void __fastcall SetTop(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetWidth(void);
	virtual void __fastcall SetWidth(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetHeight(void);
	virtual void __fastcall SetHeight(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall GetRight(void);
	void __fastcall SetRight(Rvdefine::TRaveUnits Value);
	Rvdefine::TRaveUnits __fastcall GetBottom(void);
	void __fastcall SetBottom(Rvdefine::TRaveUnits Value);
	virtual Rvdefine::TRaveUnits __fastcall GetPageLeft(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageTop(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageRight(void);
	virtual Rvdefine::TRaveUnits __fastcall GetPageBottom(void);
	void __fastcall SetBoundsRect(const Rvdefine::TRaveRect &Rect);
	Rvdefine::TRaveRect __fastcall GetBoundsRect(void);
	void __fastcall SetAnchor(Rvdefine::TRaveAnchor Value);
	virtual void __fastcall InitData(void);
	virtual void __fastcall DoneData(void);
	virtual void __fastcall SaveDesigned(void);
	virtual void __fastcall RestoreDesigned(void);
	virtual void __fastcall SaveAdjusted(void);
	virtual void __fastcall RestoreAdjusted(void);
	Rvdefine::TRaveVAnchor __fastcall GetVAnchor(void);
	Rvdefine::TRaveHAnchor __fastcall GetHAnchor(void);
	
public:
	__fastcall virtual TRaveControl(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveControl(void);
	void __fastcall Reflect(void);
	virtual void __fastcall CreatePips(void);
	virtual void __fastcall UpdatePips(void);
	virtual void __fastcall PipSize(TRavePip* RavePip, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	virtual bool __fastcall IsSelectPoint(const Rvdefine::TRavePoint &Point);
	virtual bool __fastcall InSelectRect(const Rvdefine::TRaveRect &Rect);
	__classmethod virtual void __fastcall ModifyRect(System::Types::TPoint &P1, System::Types::TPoint &P2, System::Byte PipIndex);
	bool __fastcall FindControlAt(TRaveControl* &AControl, const Rvdefine::TRavePoint &Point);
	bool __fastcall FindContainerAt(TRaveControl* &Container, const Rvdefine::TRavePoint &Point, System::TClass NewChild);
	__classmethod virtual void __fastcall ModifyRaveRect(Rvdefine::TRavePoint &P1, Rvdefine::TRavePoint &P2);
	void __fastcall SetPos(Rvdefine::TRaveUnits ALeft, Rvdefine::TRaveUnits ATop);
	virtual void __fastcall SetSize(const Rvdefine::TRavePoint &P1, const Rvdefine::TRavePoint &P2);
	virtual void __fastcall Resize(void);
	virtual bool __fastcall AllowPrint(void);
	virtual Rvdefine::TRaveUnits __fastcall HeightToPrint(void);
	void __fastcall OverrideProp(System::UnicodeString PropName);
	void __fastcall RevertProp(System::UnicodeString PropName);
	bool __fastcall PropOverridden(System::UnicodeString PropName);
	System::UnicodeString __fastcall AlwaysOverride(void);
	__property Rvdefine::TRaveUnits AdjLeft = {read=FAdjLeft};
	__property Rvdefine::TRaveUnits AdjTop = {read=FAdjTop};
	__property Rvdefine::TRaveUnits AdjWidth = {read=FAdjWidth};
	__property Rvdefine::TRaveUnits AdjHeight = {read=FAdjHeight};
	__property Rvdefine::TRaveVAnchor VAnchor = {read=GetVAnchor, nodefault};
	__property Rvdefine::TRaveHAnchor HAnchor = {read=GetHAnchor, nodefault};
	__property System::Uitypes::TCursor Cursor = {read=FCursor, write=FCursor, default=0};
	__property TRaveFont* FontAttr[Rvdefine::TFontAttribute Index] = {read=GetFontAttr, write=SetFontAttr};
	__property Rpdefine::TPrintJustify FontJustify = {read=GetFontJustify, write=SetFontJustify, nodefault};
	__property System::Uitypes::TColor BackColor = {read=GetBackColor, write=SetBackColor, nodefault};
	__property System::Uitypes::TColor ForeColor = {read=GetForeColor, write=SetForeColor, nodefault};
	__property Rvdefine::TRaveFillStyle FillStyle = {read=GetFillStyle, write=SetFillStyle, nodefault};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property double LineWidth = {read=GetLineWidth, write=SetLineWidth};
	__property Rvdefine::TLineWidthType LineWidthType = {read=GetLineWidthType, write=SetLineWidthType, nodefault};
	__property Vcl::Graphics::TPenStyle LineStyle = {read=GetLineStyle, write=SetLineStyle, nodefault};
	__property Rvdefine::TRaveRect BoundsRect = {read=GetBoundsRect, write=SetBoundsRect};
	__property Rvdefine::TRaveUnits Left = {read=GetLeft, write=SetLeft};
	__property Rvdefine::TRaveUnits Right = {read=GetRight, write=SetRight};
	__property Rvdefine::TRaveUnits Top = {read=GetTop, write=SetTop};
	__property Rvdefine::TRaveUnits Bottom = {read=GetBottom, write=SetBottom};
	__property Rvdefine::TRaveUnits Width = {read=GetWidth, write=SetWidth};
	__property Rvdefine::TRaveUnits Height = {read=GetHeight, write=SetHeight};
	__property Rvdefine::TRavePoint MirrorPoint = {read=FMirrorPoint};
	
__published:
	__property Rvdefine::TRaveAnchor Anchor = {read=FAnchor, write=SetAnchor, default=0};
	__property TRaveControl* Mirror = {read=FMirror, write=SetMirror, default=0};
	__property Rvdefine::TDisplayOn DisplayOn = {read=FDisplayOn, write=FDisplayOn, default=0};
	__property System::UnicodeString MirrorOverride = {read=FMirrorOverride, write=FMirrorOverride};
};


typedef System::TMetaClass* TRaveControlClass;

class PASCALIMPLEMENTATION TRaveContainerControl : public TRaveControl
{
	typedef TRaveControl inherited;
	
private:
	System::Classes::TList* ChildList;
	
protected:
	virtual void __fastcall DestroyChildren(void);
	virtual void __fastcall AddChild(TRaveComponent* Value);
	virtual void __fastcall RemoveChild(TRaveComponent* Value);
	virtual TRaveComponent* __fastcall GetChild(int Index);
	virtual int __fastcall GetChildCount(void);
	virtual void __fastcall SetDepth(TRaveComponent* Control, int Adjustment);
	
public:
	__fastcall virtual TRaveContainerControl(System::Classes::TComponent* AOwner);
public:
	/* TRaveControl.Destroy */ inline __fastcall virtual ~TRaveContainerControl(void) { }
	
};


class PASCALIMPLEMENTATION TRaveContainerComponent : public TRaveComponent
{
	typedef TRaveComponent inherited;
	
private:
	System::Classes::TList* ChildList;
	
protected:
	virtual void __fastcall DestroyChildren(void);
	virtual void __fastcall AddChild(TRaveComponent* Value);
	virtual void __fastcall RemoveChild(TRaveComponent* Value);
	virtual TRaveComponent* __fastcall GetChild(int Index);
	virtual int __fastcall GetChildCount(void);
	virtual void __fastcall SetDepth(TRaveComponent* Control, int Adjustment);
	
public:
	__fastcall virtual TRaveContainerComponent(System::Classes::TComponent* AOwner);
public:
	/* TRaveComponent.Destroy */ inline __fastcall virtual ~TRaveContainerComponent(void) { }
	
};


class PASCALIMPLEMENTATION TRaveProjectItem : public TRaveContainerComponent
{
	typedef TRaveContainerComponent inherited;
	
protected:
	bool FActive;
	Rvdefine::TRaveMemoString FDescription;
	System::UnicodeString FFullName;
	System::Classes::TStrings* FParams;
	System::Classes::TStrings* FPIVars;
	TRaveModule* FModule;
	bool FCompileNeeded;
	bool FIncluded;
	void __fastcall ReadModule(System::Classes::TReader* Reader);
	void __fastcall WriteModule(System::Classes::TWriter* Writer);
	void __fastcall SetModule(TRaveModule* AModule);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall SetActive(bool Value);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	void __fastcall SetParameters(System::Classes::TStrings* Value);
	void __fastcall SetPIVars(System::Classes::TStrings* Value);
	void __fastcall SetCompileNeeded(bool Value);
	System::UnicodeString __fastcall GetModuleName(void);
	virtual void __fastcall PostLoad(void);
	virtual void __fastcall Changing(TRaveComponent* OldItem, TRaveComponent* NewItem);
	
public:
	__fastcall virtual TRaveProjectItem(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveProjectItem(void);
	virtual void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall Open(void);
	virtual void __fastcall Close(void);
	virtual void __fastcall PrepareModule(void);
	__property bool Active = {read=FActive, write=SetActive, nodefault};
	__property System::Classes::TStrings* Parameters = {read=FParams, write=SetParameters};
	__property System::Classes::TStrings* PIVars = {read=FPIVars, write=SetPIVars};
	__property TRaveModule* Module = {read=FModule, write=SetModule};
	__property System::UnicodeString ModuleName = {read=GetModuleName};
	__property bool Included = {read=FIncluded, write=FIncluded, nodefault};
	
__published:
	__property bool CompileNeeded = {read=FCompileNeeded, write=SetCompileNeeded, nodefault};
	__property Rvdefine::TRaveMemoString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString FullName = {read=FFullName, write=FFullName};
};


class PASCALIMPLEMENTATION TRaveDataObject : public TRaveProjectItem
{
	typedef TRaveProjectItem inherited;
	
public:
	/* TRaveProjectItem.Create */ inline __fastcall virtual TRaveDataObject(System::Classes::TComponent* AOwner) : TRaveProjectItem(AOwner) { }
	/* TRaveProjectItem.Destroy */ inline __fastcall virtual ~TRaveDataObject(void) { }
	
};


typedef System::TMetaClass* TRaveDataObjectClass;

class PASCALIMPLEMENTATION TRavePage : public TRaveProjectItem
{
	typedef TRaveProjectItem inherited;
	
protected:
	TRaveDesigner* FDesigner;
	bool FGlobal;
	Rpdefine::TRavePaperSize FPaperSize;
	Rvdefine::TRaveUnits FPageWidth;
	Rvdefine::TRaveUnits FPageHeight;
	Vcl::Controls::TWinControl* FStorage;
	Rvdefine::TGotoMode FGotoMode;
	TRavePage* FGotoPage;
	Rvdefine::TRaveUnits FGridSpacing;
	int FGridLines;
	Rpdefine::TOrientation FOrientation;
	Rvdefine::TRaveBin FBin;
	System::UnicodeString FBinCustom;
	bool FWasteFit;
	void __fastcall SetGridLines(int Value);
	void __fastcall SetGridSpacing(Rvdefine::TRaveUnits Value);
	void __fastcall AnchorAdjustAll(bool WidthChanging, Rvdefine::TRaveUnits OldWidth, Rvdefine::TRaveUnits NewWidth, bool HeightChanging, Rvdefine::TRaveUnits OldHeight, Rvdefine::TRaveUnits NewHeight);
	void __fastcall SetPageWidth(Rvdefine::TRaveUnits Value);
	void __fastcall SetPageHeight(Rvdefine::TRaveUnits Value);
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	virtual void __fastcall Changing(TRaveComponent* OldItem, TRaveComponent* NewItem);
	void __fastcall SetPaperSize(Rpdefine::TRavePaperSize Value);
	void __fastcall SetOrientation(Rpdefine::TOrientation Value);
	void __fastcall Paint(Vcl::Graphics::TCanvas* Canvas);
	virtual void __fastcall PrintAll(Rpbase::TBaseReport* Report);
	
public:
	__fastcall virtual TRavePage(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRavePage(void);
	virtual void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall Resize(void);
	bool __fastcall StorePageDim(void);
	virtual void __fastcall PrepareModule(void);
	void __fastcall PrepareSize(Rvdefine::TRaveUnits AWidth, Rvdefine::TRaveUnits AHeight);
	void __fastcall AddPip(System::Byte Index, TRaveControl* Control, System::Uitypes::TCursor Cursor, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	void __fastcall UpdatePip(System::Byte Index, TRaveControl* Control, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	void __fastcall SwitchPips(TRavePip* RavePip, System::Byte SwitchIdx);
	__property TRaveDesigner* Designer = {read=FDesigner, write=FDesigner};
	__property bool Global = {read=FGlobal, nodefault};
	__property Vcl::Controls::TWinControl* Storage = {read=FStorage, write=FStorage};
	
__published:
	__property Rvdefine::TRaveBin Bin = {read=FBin, write=FBin, nodefault};
	__property System::UnicodeString BinCustom = {read=FBinCustom, write=FBinCustom};
	__property Rvdefine::TGotoMode GotoMode = {read=FGotoMode, write=FGotoMode, default=0};
	__property TRavePage* GotoPage = {read=FGotoPage, write=FGotoPage, default=0};
	__property int GridLines = {read=FGridLines, write=SetGridLines, nodefault};
	__property Rvdefine::TRaveUnits GridSpacing = {read=FGridSpacing, write=SetGridSpacing};
	__property Rpdefine::TOrientation Orientation = {read=FOrientation, write=SetOrientation, nodefault};
	__property Rvdefine::TRaveUnits PageHeight = {read=FPageHeight, write=SetPageHeight, stored=StorePageDim};
	__property Rvdefine::TRaveUnits PageWidth = {read=FPageWidth, write=SetPageWidth, stored=StorePageDim};
	__property Rpdefine::TRavePaperSize PaperSize = {read=FPaperSize, write=SetPaperSize, nodefault};
	__property Parameters;
	__property PIVars;
	__property bool WasteFit = {read=FWasteFit, write=FWasteFit, default=0};
};


class PASCALIMPLEMENTATION TRaveDesigner : public Vcl::Controls::TCustomControl
{
	typedef Vcl::Controls::TCustomControl inherited;
	
protected:
	Vcl::Graphics::TPen* FGridPen;
	TRavePage* FPage;
	double FMinimumBorder;
	double FZoomFactor;
	void __fastcall SetPage(TRavePage* APage);
	virtual void __fastcall SetMinimumBorder(double Value) = 0 ;
	virtual void __fastcall SetGridPen(Vcl::Graphics::TPen* Value) = 0 ;
	virtual void __fastcall SetZoomFactor(double Value) = 0 ;
	virtual int __fastcall GetSelections(void) = 0 ;
	virtual TRaveComponent* __fastcall GetSelection(int Index) = 0 ;
	virtual bool __fastcall GetZoomToolActive(void) = 0 ;
	virtual void __fastcall SetZoomToolActive(bool Value) = 0 ;
	
public:
	virtual void __fastcall AddPip(System::Byte Index, TRaveControl* Control, System::Uitypes::TCursor Cursor, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	virtual void __fastcall UpdatePip(System::Byte Index, TRaveControl* Control, Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	virtual void __fastcall RemovePips(TRaveControl* Control) = 0 ;
	virtual void __fastcall SwitchPips(TRavePip* RavePip, System::Byte SwitchIdx) = 0 ;
	virtual void __fastcall Modified(void) = 0 ;
	virtual void __fastcall DeselectControl(TRaveComponent* Control) = 0 ;
	virtual void __fastcall ClearSelection(void) = 0 ;
	virtual void __fastcall SelectControl(TRaveComponent* Control) = 0 ;
	virtual void __fastcall ToggleControl(TRaveComponent* Control) = 0 ;
	virtual bool __fastcall IsSelected(TRaveComponent* Control) = 0 ;
	virtual void __fastcall DeleteSelection(void) = 0 ;
	virtual void __fastcall CopySelection(void) = 0 ;
	virtual void __fastcall PasteSelection(void) = 0 ;
	virtual void __fastcall SelectChildren(TRaveComponent* Control) = 0 ;
	virtual void __fastcall SelectType(TRaveProjectItem* ProjectItem, System::TClass RaveClass) = 0 ;
	virtual void __fastcall MoveSelection(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	virtual void __fastcall AlignSelection(int AlignType) = 0 ;
	virtual void __fastcall PostChanges(void) = 0 ;
	virtual TRaveComponent* __fastcall FindControl(System::UnicodeString Name) = 0 ;
	virtual TRaveControl* __fastcall FindControlAt(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	virtual TRaveControl* __fastcall FindContainerAt(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y, System::TClass NewChild) = 0 ;
	virtual int __fastcall XI2D(Rvdefine::TRaveUnits Value) = 0 ;
	virtual int __fastcall YI2D(Rvdefine::TRaveUnits Value) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall XD2I(int Value) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall YD2I(int Value) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall SnapX(Rvdefine::TRaveUnits Value) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall SnapY(Rvdefine::TRaveUnits Value) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall VisibleWidth(void) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall VisibleHeight(void) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall CenterWidth(void) = 0 ;
	virtual Rvdefine::TRaveUnits __fastcall CenterHeight(void) = 0 ;
	virtual double __fastcall ZoomToRect(Rvdefine::TRaveUnits X1, Rvdefine::TRaveUnits Y1, Rvdefine::TRaveUnits X2, Rvdefine::TRaveUnits Y2) = 0 ;
	virtual void __fastcall ZoomPage(void) = 0 ;
	virtual void __fastcall ZoomPageWidth(void) = 0 ;
	virtual void __fastcall ZoomSelected(void) = 0 ;
	virtual void __fastcall ZoomIn(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	virtual void __fastcall ZoomOut(void) = 0 ;
	virtual void __fastcall CenterWindow(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y) = 0 ;
	__property Vcl::Graphics::TPen* GridPen = {read=FGridPen, write=SetGridPen};
	__property double MinimumBorder = {read=FMinimumBorder, write=SetMinimumBorder};
	__property TRavePage* Page = {read=FPage};
	__property int Selections = {read=GetSelections, nodefault};
	__property TRaveComponent* Selection[int Index] = {read=GetSelection};
	__property double ZoomFactor = {read=FZoomFactor, write=SetZoomFactor};
	__property bool ZoomToolActive = {read=GetZoomToolActive, write=SetZoomToolActive, nodefault};
public:
	/* TCustomControl.Create */ inline __fastcall virtual TRaveDesigner(System::Classes::TComponent* AOwner) : Vcl::Controls::TCustomControl(AOwner) { }
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TRaveDesigner(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TRaveDesigner(HWND ParentWindow) : Vcl::Controls::TCustomControl(ParentWindow) { }
	
};


class PASCALIMPLEMENTATION TRavePip : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::Types::TRect __fastcall GetScreenRect(void);
	
public:
	System::Byte Index;
	TRaveControl* Control;
	TRaveDesigner* Designer;
	System::Uitypes::TCursor Cursor;
	Rvdefine::TRaveUnits PageX;
	Rvdefine::TRaveUnits PageY;
	System::Types::TPoint StartSizePoint;
	Rvdefine::TRaveRect OrigRect;
	Rvdefine::TRavePoint OrigPoint;
	__fastcall TRavePip(System::Byte AIndex, TRaveControl* AControl, TRaveDesigner* ADesigner, System::Uitypes::TCursor ACursor, Rvdefine::TRaveUnits AX, Rvdefine::TRaveUnits AY);
	__fastcall virtual ~TRavePip(void);
	void __fastcall Reset(void);
	void __fastcall Move(Rvdefine::TRaveUnits X, Rvdefine::TRaveUnits Y);
	void __fastcall Draw(Vcl::Graphics::TCanvas* Canvas);
	__property System::Types::TRect ScreenRect = {read=GetScreenRect};
};


enum DECLSPEC_DENUM TValueKind : unsigned char { vkID, vkIndex, vkNegIndex, vkInteger, vkChar, vkFloat, vkString, vkSet, vkPropList, vkComponentList, vkPersistentList };

typedef void __fastcall (__closure *TRaveReaderProc)(TRaveReader* Reader);

typedef void __fastcall (__closure *TRaveWriterProc)(TRaveWriter* Writer);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveFiler : public System::Classes::TFiler
{
	typedef System::Classes::TFiler inherited;
	
protected:
	Rvutil::TStreamHelper* FStreamHelper;
	System::Classes::TStringList* FOverrideList;
	TRaveComponent* FRootOwner;
	bool FIsReader;
	
public:
	__fastcall TRaveFiler(Rvutil::TStreamHelper* AStreamHelper);
	__fastcall virtual ~TRaveFiler(void);
	void __fastcall OverrideProperty(System::UnicodeString Name, TRaveReaderProc ReadData, TRaveWriterProc WriteData);
	bool __fastcall PropertyOverride(System::UnicodeString Name, TRaveReaderProc &ReadData, TRaveWriterProc &WriteData);
	virtual void __fastcall DefineProperty(const System::UnicodeString Name, System::Classes::TReaderProc ReadData, System::Classes::TWriterProc WriteData, bool HasData);
	virtual void __fastcall DefineBinaryProperty(const System::UnicodeString Name, System::Classes::TStreamProc ReadData, System::Classes::TStreamProc WriteData, bool HasData);
	virtual void __fastcall FlushBuffer(void);
	__property bool IsReader = {read=FIsReader, nodefault};
	__property System::Classes::TStringList* OverrideList = {read=FOverrideList};
	__property TRaveComponent* RootOwner = {read=FRootOwner};
	__property Rvutil::TStreamHelper* StreamHelper = {read=FStreamHelper};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveWriter : public TRaveFiler
{
	typedef TRaveFiler inherited;
	
protected:
	System::Classes::TPersistent* DefineInstance;
	
public:
	__fastcall TRaveWriter(Rvutil::TStreamHelper* AStreamHelper);
	__fastcall virtual ~TRaveWriter(void);
	virtual void __fastcall DefineProperty(const System::UnicodeString Name, System::Classes::TReaderProc ReadData, System::Classes::TWriterProc WriteData, bool HasData);
	virtual void __fastcall DefineBinaryProperty(const System::UnicodeString Name, System::Classes::TStreamProc ReadData, System::Classes::TStreamProc WriteData, bool HasData);
	virtual void __fastcall FlushBuffer(void);
	void __fastcall WriteComponent(TRaveComponent* Value, bool DoChildren);
	void __fastcall WriteChildren(TRaveComponent* Instance);
	void __fastcall WritePropName(System::Typinfo::PPropInfo PropInfo);
	void __fastcall WriteProperties(System::Classes::TPersistent* Instance);
	void __fastcall WriteProperty(System::Classes::TPersistent* Instance, System::Typinfo::PPropInfo PropInfo);
	void __fastcall WriteID(System::UnicodeString Value);
	void __fastcall WriteInteger(int Value);
	void __fastcall WriteChar(System::WideChar Value);
	void __fastcall WriteFloat(System::Extended Value);
	void __fastcall WriteString(System::UnicodeString Value);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveReader : public TRaveFiler
{
	typedef TRaveFiler inherited;
	
protected:
	bool PropHandled;
	System::UnicodeString PropName;
	bool FAddComponents;
	bool FCheckNames;
	int FAbsorbCount;
	TRaveComponent* FCurrentParent;
	TRaveComponent* FCurrentComp;
	TRaveProjectItem* FMasterProject;
	
public:
	__fastcall TRaveReader(Rvutil::TStreamHelper* AStreamHelper);
	__fastcall virtual ~TRaveReader(void);
	virtual void __fastcall DefineProperty(const System::UnicodeString Name, System::Classes::TReaderProc ReadData, System::Classes::TWriterProc WriteData, bool HasData);
	virtual void __fastcall DefineBinaryProperty(const System::UnicodeString Name, System::Classes::TStreamProc ReadData, System::Classes::TStreamProc WriteData, bool HasData);
	virtual void __fastcall FlushBuffer(void);
	TRaveComponent* __fastcall ReadComponent(TRaveComponent* aOwner, TRaveComponent* aParent);
	void __fastcall ReadIntoComponent(TRaveComponent* Value);
	bool __fastcall AbsorbProperty(void);
	void __fastcall ReadProperties(System::Classes::TPersistent* Instance);
	void __fastcall ReadProperty(System::Classes::TPersistent* Instance, System::Typinfo::PPropInfo PropInfo);
	System::UnicodeString __fastcall ReadID(void);
	int __fastcall ReadInteger(void);
	char __fastcall ReadChar(void);
	System::Extended __fastcall ReadFloat(void);
	System::UnicodeString __fastcall ReadString(void);
	__property bool AddComponents = {read=FAddComponents, write=FAddComponents, nodefault};
	__property bool CheckNames = {read=FCheckNames, write=FCheckNames, nodefault};
	__property TRaveComponent* CurrentParent = {read=FCurrentParent, write=FCurrentParent};
	__property TRaveComponent* CurrentComp = {read=FCurrentComp, write=FCurrentComp};
	__property TRaveProjectItem* MasterProject = {read=FMasterProject, write=FMasterProject};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveFont : public Vcl::Graphics::TFont
{
	typedef Vcl::Graphics::TFont inherited;
	
__published:
	__property Height = {stored=false};
	__property Size = {stored=true};
public:
	/* TFont.Create */ inline __fastcall TRaveFont(void) : Vcl::Graphics::TFont() { }
	/* TFont.Destroy */ inline __fastcall virtual ~TRaveFont(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION ERaveCompiler : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall ERaveCompiler(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ERaveCompiler(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ERaveCompiler(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ERaveCompiler(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveCompiler(NativeUInt Ident, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ERaveCompiler(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ERaveCompiler(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ERaveCompiler(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveCompiler(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ERaveCompiler(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveCompiler(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ERaveCompiler(NativeUInt Ident, System::TVarRec const *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ERaveCompiler(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveModule : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::UnicodeString FModuleName;
	virtual void __fastcall PostLoad(void) = 0 ;
	
public:
	__fastcall virtual TRaveModule(System::Classes::TStream* Stream, TRaveProjectItem* AOwner, TRaveProjectItem* AProjectItem);
	__fastcall virtual TRaveModule(System::UnicodeString FileName, TRaveProjectItem* AOwner);
	virtual void __fastcall SaveToStream(System::Classes::TStream* Stream) = 0 ;
	virtual void __fastcall Execute(int Position, System::TObject* &SuspendState) = 0 ;
	virtual void __fastcall SetStringVar(System::UnicodeString Name, System::UnicodeString Value) = 0 ;
	virtual System::UnicodeString __fastcall GetStringVar(System::UnicodeString Name) = 0 ;
	virtual void __fastcall SetIntVar(System::UnicodeString Name, int Value) = 0 ;
	virtual int __fastcall GetIntVar(System::UnicodeString Name) = 0 ;
	virtual void __fastcall SetFloatVar(System::UnicodeString Name, System::Extended Value) = 0 ;
	virtual System::Extended __fastcall GetFloatVar(System::UnicodeString Name) = 0 ;
	virtual void __fastcall PushParam(void *Param) = 0 ;
	virtual void __fastcall Changing(TRaveModule* OldItem, TRaveModule* NewItem) = 0 ;
	virtual void __fastcall BuildSource(void) = 0 ;
	virtual void __fastcall Compile(bool Definition) = 0 ;
	virtual void __fastcall EventConnect(void) = 0 ;
	__property System::UnicodeString ModuleName = {read=FModuleName, write=FModuleName};
public:
	/* TObject.Create */ inline __fastcall TRaveModule(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TRaveModule(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveEvent : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString FHeader;
	System::UnicodeString FBody;
	int FPosition;
	TRaveProjectItem* FModuleOwner;
	int FHeaderSourceLine;
	int FBodySourceLine;
	TRaveComponent* FOwner;
	System::UnicodeString FName;
	System::TObject* FSuspendState;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	void __fastcall DefineParam(void *Param);
	virtual System::UnicodeString __fastcall GetDeclaration(void);
	virtual System::UnicodeString __fastcall GetFooter(void);
	virtual bool __fastcall SuspendValid(void);
	
public:
	__fastcall virtual TRaveEvent(void);
	void __fastcall Execute(void);
	virtual void __fastcall DefineParams(void);
	virtual System::UnicodeString __fastcall ParamSource(void);
	bool __fastcall Suspended(void);
	__property TRaveComponent* Owner = {read=FOwner, write=FOwner};
	__property int HeaderSourceLine = {read=FHeaderSourceLine, write=FHeaderSourceLine, nodefault};
	__property int BodySourceLine = {read=FBodySourceLine, write=FBodySourceLine, nodefault};
	__property System::UnicodeString Declaration = {read=GetDeclaration};
	__property System::UnicodeString Footer = {read=GetFooter};
	
__published:
	__property System::UnicodeString Body = {read=FBody, write=FBody};
	__property System::UnicodeString Header = {read=FHeader, write=FHeader};
	__property TRaveProjectItem* ModuleOwner = {read=FModuleOwner, write=FModuleOwner};
	__property int Position = {read=FPosition, write=FPosition, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveEvent(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveSimpleEvent : public TRaveEvent
{
	typedef TRaveEvent inherited;
	
__published:
	__property TRaveComponent* Sender = {read=FOwner, write=FOwner};
public:
	/* TRaveEvent.Create */ inline __fastcall virtual TRaveSimpleEvent(void) : TRaveEvent() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveSimpleEvent(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveStringEvent : public TRaveSimpleEvent
{
	typedef TRaveSimpleEvent inherited;
	
protected:
	System::UnicodeString FValue;
	
public:
	virtual void __fastcall DefineParams(void);
	virtual System::UnicodeString __fastcall ParamSource(void);
	
__published:
	__property System::UnicodeString Value = {read=FValue, write=FValue};
public:
	/* TRaveEvent.Create */ inline __fastcall virtual TRaveStringEvent(void) : TRaveSimpleEvent() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveStringEvent(void) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TRaveFloatEvent : public TRaveSimpleEvent
{
	typedef TRaveSimpleEvent inherited;
	
protected:
	System::Extended FValue;
	
public:
	virtual void __fastcall DefineParams(void);
	virtual System::UnicodeString __fastcall ParamSource(void);
	
__published:
	__property System::Extended Value = {read=FValue, write=FValue};
public:
	/* TRaveEvent.Create */ inline __fastcall virtual TRaveFloatEvent(void) : TRaveSimpleEvent() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRaveFloatEvent(void) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveCompileStatus : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	int ErrorLine;
	int ErrorCol;
	TRaveEvent* ErrorEvent;
	System::UnicodeString ErrorMsg;
public:
	/* TObject.Create */ inline __fastcall TRaveCompileStatus(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TRaveCompileStatus(void) { }
	
};

#pragma pack(pop)

typedef bool __fastcall (__closure *TIncludeFunc)(System::Classes::TComponent* Value, int Data);

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveGroupProc)(const System::UnicodeString GroupName, const System::UnicodeString Description);
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveComponentsProc)(const System::UnicodeString GroupName, TRaveComponentClass const *RaveClasses, const int RaveClasses_High);
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveClassesProc)(TRaveComponentClass const *RaveClasses, const int RaveClasses_High);
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveFuncProc)(const void *Func, const System::UnicodeString FuncName, const System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall (*RaveNameChangeProc)(TRaveComponent* Component, System::Classes::TComponentName NewName);
extern DELPHI_PACKAGE void __fastcall (*AddComponentProc)(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall (*DeleteComponentProc)(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall (*OpenProjectItemProc)(TRaveProjectItem* Item, bool Open);
extern DELPHI_PACKAGE void __fastcall (*RegisterRavePropertiesProc)(const TRaveComponentClass ComponentClass, const System::UnicodeString Level1Props, const System::UnicodeString Level2Props, const System::UnicodeString DevProps, const System::UnicodeString HideProps);
extern DELPHI_PACKAGE void __fastcall (*GetComponentNamesProc)(TIncludeFunc IncludeFunc, TRaveComponent* Instance, int Data, System::Classes::TStrings* NameList);
extern DELPHI_PACKAGE void __fastcall (*ModifiedProc)(bool Refresh);
extern DELPHI_PACKAGE void __fastcall (*RegisterFuncProc)(const void *Proc, const System::UnicodeString FuncName, const System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall (*UnregisterFuncProc)(System::UnicodeString FuncName, System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall (*EnumRaveCompilersProc)(System::Classes::TStrings* SyntaxNameList);
extern DELPHI_PACKAGE TRaveComponent* ContinuationComponent;
extern DELPHI_PACKAGE void __fastcall (*SetPropDescProc)(const TRaveComponentClass CompClass, const System::UnicodeString PropName, const System::UnicodeString PropDesc);
extern DELPHI_PACKAGE System::UnicodeString __fastcall (*GetPropDescProc)(System::TClass CompClass, System::UnicodeString PropName);
extern DELPHI_PACKAGE TRaveModule* __fastcall (*CreateRaveModuleProc)(System::Classes::TStream* Stream, TRaveProjectItem* Owner, TRaveProjectItem* ProjectItem);
extern DELPHI_PACKAGE void __fastcall (*PrepareRaveModuleProc)(TRaveProjectItem* ProjectItem);
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveDataObjectProc)(const System::UnicodeString DataObjectName, const TRaveDataObjectClass DataObjectClass);
extern DELPHI_PACKAGE void __fastcall (*CreateShortCutProc)(System::UnicodeString Desc, System::Classes::TComponent* Item, System::UnicodeString Name, System::Classes::TShortCut Key1, System::Classes::TShortCut Key2);
extern DELPHI_PACKAGE void __fastcall (*LoadModulesProc)(Rvutil::TStreamHelper* StreamHelper);
extern DELPHI_PACKAGE void __fastcall (*SaveModulesProc)(Rvutil::TStreamHelper* StreamHelper);
extern DELPHI_PACKAGE void __fastcall (*RegisterRaveModuleProc)(TRaveModule* Module);
extern DELPHI_PACKAGE void __fastcall (*CompileStatusProc)(TRaveCompileStatus* CompileStatus);
extern DELPHI_PACKAGE bool __fastcall (*PropertyVisibleProc)(System::TClass ComponentClass, System::UnicodeString PropertyName);
extern DELPHI_PACKAGE void __fastcall (*RegisterRavePropertyAliasProc)(const TRaveComponentClass ComponentClass, const System::UnicodeString PropertyName, const System::UnicodeString AliasName);
extern DELPHI_PACKAGE System::UnicodeString __fastcall (*FindRavePropertyAliasProc)(const TRaveComponentClass ComponentClass, const System::UnicodeString PropertyName);
extern DELPHI_PACKAGE TRaveDesigner* CurrentDesigner;
extern DELPHI_PACKAGE TRaveModule* CompileModule;
extern DELPHI_PACKAGE int ErrorLine;
extern DELPHI_PACKAGE int ErrorCol;
extern DELPHI_PACKAGE TRaveEvent* ErrorEvent;
extern DELPHI_PACKAGE void __fastcall SetDepthCaller(TRaveComponent* Parent, TRaveComponent* Control, int Adjustment);
extern DELPHI_PACKAGE void __fastcall SaveAdjustedCaller(TRaveControl* RaveControl);
extern DELPHI_PACKAGE void __fastcall RestoreAdjustedCaller(TRaveControl* RaveControl);
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
extern DELPHI_PACKAGE void __fastcall RegisterProc(System::UnicodeString AKind, System::Sysutils::TProcedure AProc);
extern DELPHI_PACKAGE void __fastcall CallRegisters(System::UnicodeString AKind);
extern DELPHI_PACKAGE void __fastcall PrintAllCaller(TRaveComponent* Component, Rpbase::TBaseReport* Report);
extern DELPHI_PACKAGE void __fastcall PagePaintCaller(TRavePage* Page, Vcl::Graphics::TCanvas* Canvas);
extern DELPHI_PACKAGE bool __fastcall UseMasterCaller(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall SaveDesignedCaller(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall RestoreDesignedCaller(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall InitDataCaller(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall RegisterRaveProperties(const TRaveComponentClass ComponentClass, const System::UnicodeString Level1Props, const System::UnicodeString Level2Props, const System::UnicodeString DevProps, const System::UnicodeString HideProps);
extern DELPHI_PACKAGE void __fastcall RegisterRavePropertyAlias(const TRaveComponentClass ComponentClass, const System::UnicodeString PropertyName, const System::UnicodeString AliasName);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FindRavePropertyAlias(const TRaveComponentClass ComponentClass, const System::UnicodeString PropertyName);
extern DELPHI_PACKAGE void __fastcall SetPropDesc(const TRaveComponentClass CompClass, const System::UnicodeString PropName, const System::UnicodeString PropDesc);
extern DELPHI_PACKAGE bool __fastcall PropertyVisible(System::TClass ComponentClass, System::UnicodeString PropertyName);
extern DELPHI_PACKAGE void __fastcall RegisterRaveGroup(const System::UnicodeString GroupName, const System::UnicodeString Description);
extern DELPHI_PACKAGE void __fastcall RegisterRaveComponents(const System::UnicodeString GroupName, TRaveComponentClass const *RaveClasses, const int RaveClasses_High)/* overload */;
extern DELPHI_PACKAGE void __fastcall RegisterRaveComponents(const System::UnicodeString GroupName, const System::UnicodeString Description, const System::UnicodeString ModuleName, TRaveComponentClass const *RaveClasses, const int RaveClasses_High)/* overload */;
extern DELPHI_PACKAGE void __fastcall RegisterRaveClasses(TRaveComponentClass const *RaveClasses, const int RaveClasses_High);
extern DELPHI_PACKAGE void __fastcall RegisterRaveModuleClasses(const System::UnicodeString ModuleName, TRaveComponentClass const *RaveClasses, const int RaveClasses_High);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FindRaveClassModule(const System::UnicodeString ClassName);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetSupportedClass(System::TClass RaveClass);
extern DELPHI_PACKAGE void __fastcall RegisterRaveFunc(const void *Func, const System::UnicodeString FuncName, const System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall AddComponent(TRaveComponent* Component);
extern DELPHI_PACKAGE TRaveModule* __fastcall CreateRaveModule(System::Classes::TStream* Stream, TRaveProjectItem* Owner, TRaveProjectItem* ProjectItem);
extern DELPHI_PACKAGE void __fastcall RegisterRaveModule(TRaveModule* Module);
extern DELPHI_PACKAGE void __fastcall DeleteComponent(TRaveComponent* Component);
extern DELPHI_PACKAGE void __fastcall GetComponentNames(TIncludeFunc IncludeFunc, TRaveComponent* Instance, int Data, System::Classes::TStrings* NameList);
extern DELPHI_PACKAGE void __fastcall NotifyChanging(TRaveComponent* OldItem, TRaveComponent* NewItem);
extern DELPHI_PACKAGE void __fastcall EnumRaveCompilers(System::Classes::TStrings* SyntaxNameList);
extern DELPHI_PACKAGE void __fastcall RegisterFunc(const void *Proc, const System::UnicodeString FuncName, const System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall UnregisterFunc(System::UnicodeString FuncName, System::UnicodeString ModuleName);
extern DELPHI_PACKAGE void __fastcall RegisterRaveDataObject(const System::UnicodeString DataObjectName, const TRaveDataObjectClass DataObjectClass);
extern DELPHI_PACKAGE void __fastcall RaveCreateShortCut(System::UnicodeString Desc, System::Classes::TComponent* Item = (System::Classes::TComponent*)(0x0), System::UnicodeString Name = System::UnicodeString(), System::Classes::TShortCut Key1 = (System::Classes::TShortCut)(0x0), System::Classes::TShortCut Key2 = (System::Classes::TShortCut)(0x0));
extern DELPHI_PACKAGE void __fastcall RaveCompileStatus(TRaveCompileStatus* CompileStatus);
}	/* namespace Rvclass */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVCLASS)
using namespace Rvclass;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvclassHPP
