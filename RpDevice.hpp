// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RpDevice.pas' rev: 29.00 (Windows)

#ifndef RpdeviceHPP
#define RpdeviceHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.WinSpool.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.CommDlg.hpp>
#include <Winapi.Messages.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Printers.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <RpDefine.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rpdevice
{
//-- forward type declarations -----------------------------------------------
struct TPrintDialogRec;
struct TBrushBuf;
struct TFontBuf;
struct TPenBuf;
class DELPHICLASS TRPBaseDevice;
class DELPHICLASS TRPRenderDevice;
class DELPHICLASS TRpPrinterDevice;
class DELPHICLASS TRPPrinterCanvas;
//-- type declarations -------------------------------------------------------
typedef HDC TDCHandle;

struct DECLSPEC_DRECORD TPrintDialogRec
{
public:
	bool Collate;
	int Copies;
	int FromPage;
	int ToPage;
	int MinPage;
	int MaxPage;
	System::Uitypes::TPrintDialogOptions Options;
	bool PrintToFile;
	System::Uitypes::TPrintRange PrintRange;
};


struct DECLSPEC_DRECORD TBrushBuf
{
public:
	System::Uitypes::TColor Color;
	Vcl::Graphics::TBrushStyle Style;
	Vcl::Graphics::TBitmap* Bitmap;
};


struct DECLSPEC_DRECORD TFontBuf
{
public:
	System::Uitypes::TFontName Name;
	int Size;
	System::Uitypes::TColor Color;
	System::Uitypes::TFontStyles Style;
};


struct DECLSPEC_DRECORD TPenBuf
{
public:
	Vcl::Graphics::TPenMode PenMode;
	Vcl::Graphics::TPenStyle Style;
	int Width;
	System::Uitypes::TColor Color;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPBaseDevice : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::UnicodeString FTitle;
	bool FPrinting;
	bool FAborted;
	Rpdefine::TOrientation FOrientation;
	int FCopies;
	Rpdefine::TDuplex FDuplex;
	bool FCollate;
	int FPageHeight;
	int FPageWidth;
	System::UnicodeString FBin;
	System::UnicodeString FPaper;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void) = 0 ;
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual System::Types::TRect __fastcall GetWaste(void);
	virtual void __fastcall SetBin(int BinNum);
	virtual int __fastcall GetBin(void);
	virtual System::Classes::TStrings* __fastcall GetBins(void);
	virtual System::Classes::TStrings* __fastcall GetPapers(void);
	virtual System::Classes::TStrings* __fastcall GetFonts(void);
	virtual System::Classes::TStrings* __fastcall GetPrinters(void);
	virtual Rpdefine::TOrientation __fastcall GetOrientation(void);
	virtual void __fastcall SetOrientation(Rpdefine::TOrientation Value);
	virtual int __fastcall GetMaxCopies(void);
	virtual void __fastcall SetCopies(int Value);
	virtual int __fastcall GetCopies(void);
	virtual void __fastcall SetDuplex(Rpdefine::TDuplex Value);
	virtual Rpdefine::TDuplex __fastcall GetDuplex(void);
	virtual void __fastcall SetCollate(bool Value);
	virtual bool __fastcall GetCollate(void);
	virtual int __fastcall GetPageHeight(void);
	virtual int __fastcall GetPageWidth(void);
	
public:
	__fastcall TRPBaseDevice(void);
	virtual int __fastcall TextWidth(System::UnicodeString Value);
	virtual void __fastcall RawOut(void *ABuffer, System::Word ALength);
	virtual void __fastcall BeginDoc(void);
	virtual void __fastcall BeginDocSelect(void);
	virtual void __fastcall EndDoc(void);
	virtual void __fastcall Abort(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall NewPageSelect(bool PageValid);
	virtual bool __fastcall SelectBin(System::UnicodeString BinName, bool Exact);
	virtual bool __fastcall SelectPaper(System::UnicodeString PaperName, bool Exact);
	virtual void __fastcall GetCustomExtents(System::Types::TPoint &MinExtent, System::Types::TPoint &MaxExtent);
	virtual bool __fastcall SetPaperSize(int Size, int Width, int Height);
	virtual bool __fastcall SupportBin(int BinNum);
	virtual bool __fastcall SupportPaper(int PaperNum);
	virtual bool __fastcall SupportOrientation(void);
	virtual bool __fastcall SupportDuplex(void);
	virtual bool __fastcall SupportCollate(void);
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property bool Printing = {read=FPrinting, nodefault};
	__property bool Aborted = {read=FAborted, nodefault};
	__property Vcl::Graphics::TCanvas* Canvas = {read=GetCanvas};
	__property int XDPI = {read=GetXDPI, nodefault};
	__property int YDPI = {read=GetYDPI, nodefault};
	__property System::Types::TRect Waste = {read=GetWaste};
	__property int Bin = {read=GetBin, write=SetBin, nodefault};
	__property System::Classes::TStrings* Bins = {read=GetBins};
	__property System::Classes::TStrings* Papers = {read=GetPapers};
	__property System::Classes::TStrings* Fonts = {read=GetFonts};
	__property System::Classes::TStrings* Printers = {read=GetPrinters};
	__property Rpdefine::TOrientation Orientation = {read=GetOrientation, write=SetOrientation, nodefault};
	__property int MaxCopies = {read=GetMaxCopies, nodefault};
	__property int Copies = {read=GetCopies, write=SetCopies, nodefault};
	__property Rpdefine::TDuplex Duplex = {read=GetDuplex, write=SetDuplex, nodefault};
	__property bool Collate = {read=GetCollate, write=SetCollate, nodefault};
	__property int PageWidth = {read=GetPageWidth, nodefault};
	__property int PageHeight = {read=GetPageHeight, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TRPBaseDevice(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRPRenderDevice : public TRPBaseDevice
{
	typedef TRPBaseDevice inherited;
	
protected:
	Vcl::Graphics::TBitmap* FBitmap;
	Vcl::Graphics::TCanvas* FCanvas;
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	void __fastcall SetCanvas(Vcl::Graphics::TCanvas* Value);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual int __fastcall GetPageHeight(void);
	virtual int __fastcall GetPageWidth(void);
	
public:
	__fastcall TRPRenderDevice(void);
	__fastcall virtual ~TRPRenderDevice(void);
	virtual int __fastcall TextWidth(System::UnicodeString Value);
	virtual void __fastcall BeginDoc(void);
	virtual void __fastcall BeginDocSelect(void);
	virtual void __fastcall EndDoc(void);
	virtual void __fastcall Abort(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall NewPageSelect(bool PageValid);
	__property Vcl::Graphics::TCanvas* Canvas = {read=GetCanvas, write=SetCanvas};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRpPrinterDevice : public TRPBaseDevice
{
	typedef TRPBaseDevice inherited;
	
protected:
	bool FIgnoreNDROrientation;
	Rpdefine::TOrientation FSetupOrientation;
	bool FIgnoreNDRBin;
	int FSetupBin;
	System::WideChar *FDeviceName;
	System::WideChar *FDriverName;
	System::WideChar *FOutputName;
	HDC DC;
	NativeUInt FDriverHandle;
	_devicemodeW *FDevMode;
	NativeUInt FDeviceMode;
	Rpdefine::TDeviceState FDeviceState;
	System::Classes::TStrings* FFontList;
	System::Classes::TStrings* FPrinterList;
	System::Classes::TStrings* FBinList;
	System::Classes::TStrings* FPaperList;
	int FDeviceIndex;
	System::WideChar *FOutputFile;
	Vcl::Graphics::TCanvas* FCanvas;
	Vcl::Graphics::TBitmap* FBitmap;
	bool CanvasActive;
	bool FDevModeChanged;
	TBrushBuf SaveBrush;
	TFontBuf SaveFont;
	TPenBuf SavePen;
	bool OnPage;
	bool KeepDevMode;
	bool FInvalidPrinter;
	int FAbortDelay;
	bool FSkipAbortProc;
	void __fastcall CheckPrinting(void);
	void __fastcall CheckNotPrinting(void);
	System::WideChar * __fastcall GetWord(System::WideChar * &Line);
	int __fastcall FindPrinter(System::WideChar * Device, System::WideChar * Driver, System::WideChar * Output);
	System::UnicodeString __fastcall GetOutputFile(void);
	void __fastcall SetOutputFile(System::UnicodeString Value);
	int __fastcall GetDeviceIndex(void);
	void __fastcall SetDeviceIndex(int Value);
	void __fastcall SetDeviceState(Rpdefine::TDeviceState Value);
	HDC __fastcall GetHandle(void);
	virtual Vcl::Graphics::TCanvas* __fastcall GetCanvas(void);
	Winapi::Windows::PDeviceModeW __fastcall GetDevMode(void);
	System::UnicodeString __fastcall GetDriverName(void);
	System::UnicodeString __fastcall GetOutputName(void);
	System::UnicodeString __fastcall GetDeviceName(void);
	void __fastcall OpenDevice(int NewIndex);
	void __fastcall CloseDevice(void);
	void __fastcall ResetDevice(void);
	void __fastcall ReleaseCanvas(void);
	void __fastcall RecoverCanvas(void);
	virtual int __fastcall GetXDPI(void);
	virtual int __fastcall GetYDPI(void);
	virtual System::Types::TRect __fastcall GetWaste(void);
	virtual System::Classes::TStrings* __fastcall GetBins(void);
	virtual System::Classes::TStrings* __fastcall GetPapers(void);
	virtual System::Classes::TStrings* __fastcall GetFonts(void);
	virtual System::Classes::TStrings* __fastcall GetPrinters(void);
	virtual Rpdefine::TOrientation __fastcall GetOrientation(void);
	virtual void __fastcall SetOrientation(Rpdefine::TOrientation Value);
	virtual int __fastcall GetMaxCopies(void);
	virtual void __fastcall SetCopies(int Value);
	virtual int __fastcall GetCopies(void);
	virtual void __fastcall SetDuplex(Rpdefine::TDuplex Value);
	virtual Rpdefine::TDuplex __fastcall GetDuplex(void);
	virtual void __fastcall SetCollate(bool Value);
	virtual bool __fastcall GetCollate(void);
	virtual int __fastcall GetPageHeight(void);
	virtual int __fastcall GetPageWidth(void);
	
public:
	__fastcall TRpPrinterDevice(void);
	__fastcall virtual ~TRpPrinterDevice(void);
	void __fastcall SaveToPrinter(void);
	void __fastcall LoadFromPrinter(void);
	bool __fastcall PrinterSetupDialog(void);
	bool __fastcall PrintDialog(TPrintDialogRec &PrintDialogRec);
	bool __fastcall SimplePrintDialog(int &FirstPage, int &LastPage);
	void __fastcall ResetHandle(bool Force);
	virtual int __fastcall TextWidth(System::UnicodeString Value);
	virtual void __fastcall RawOut(void *ABuffer, System::Word ALength);
	virtual void __fastcall BeginDoc(void);
	virtual void __fastcall BeginDocSelect(void);
	virtual void __fastcall EndDoc(void);
	virtual void __fastcall Abort(void);
	virtual void __fastcall NewPage(void);
	virtual void __fastcall NewPageSelect(bool PageValid);
	virtual void __fastcall SetBin(int BinNum);
	virtual bool __fastcall SelectBin(System::UnicodeString BinName, bool Exact);
	virtual bool __fastcall SelectPaper(System::UnicodeString PaperName, bool Exact);
	bool __fastcall SelectPrinter(System::UnicodeString PrinterName, bool Exact);
	virtual void __fastcall GetCustomExtents(System::Types::TPoint &MinExtent, System::Types::TPoint &MaxExtent);
	virtual bool __fastcall SetPaperSize(int Size, int Width, int Height);
	bool __fastcall InvalidPrinter(void);
	virtual bool __fastcall SupportBin(int BinNum);
	virtual bool __fastcall SupportPaper(int PaperNum);
	virtual bool __fastcall SupportOrientation(void);
	virtual bool __fastcall SupportDuplex(void);
	virtual bool __fastcall SupportCollate(void);
	__property int SetupBin = {read=FSetupBin, write=FSetupBin, nodefault};
	__property bool IgnoreNDRBin = {read=FIgnoreNDRBin, write=FIgnoreNDRBin, nodefault};
	__property System::UnicodeString OutputFile = {read=GetOutputFile, write=SetOutputFile};
	__property System::UnicodeString Device = {read=GetDeviceName};
	__property System::UnicodeString Driver = {read=GetDriverName};
	__property System::UnicodeString Output = {read=GetOutputName};
	__property Winapi::Windows::PDeviceModeW DevMode = {read=GetDevMode};
	__property HDC Handle = {read=GetHandle, nodefault};
	__property int DeviceIndex = {read=GetDeviceIndex, write=SetDeviceIndex, nodefault};
	__property Rpdefine::TDeviceState State = {read=FDeviceState, write=SetDeviceState, nodefault};
	__property bool DevModeChanged = {read=FDevModeChanged, write=FDevModeChanged, nodefault};
	__property int AbortDelay = {read=FAbortDelay, write=FAbortDelay, nodefault};
	__property bool SkipAbortProc = {read=FSkipAbortProc, write=FSkipAbortProc, nodefault};
};

#pragma pack(pop)

typedef TRpPrinterDevice TRPDevice;

class PASCALIMPLEMENTATION TRPPrinterCanvas : public Vcl::Graphics::TCanvas
{
	typedef Vcl::Graphics::TCanvas inherited;
	
__published:
	TRpPrinterDevice* RPDevice;
	__fastcall TRPPrinterCanvas(TRpPrinterDevice* Device);
	
protected:
	virtual void __fastcall CreateHandle(void);
public:
	/* TCanvas.Destroy */ inline __fastcall virtual ~TRPPrinterCanvas(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern "C" int __stdcall DeviceCapabilities(System::WideChar * DeviceName, System::WideChar * Port, System::Word Index, System::WideChar * Output, Winapi::Windows::PDeviceModeW DevMode);
extern DELPHI_PACKAGE void __fastcall RefreshDevice(void);
extern DELPHI_PACKAGE TRPBaseDevice* __fastcall GlobalDevice(void);
extern DELPHI_PACKAGE TRpPrinterDevice* __fastcall RPDev(void);
extern DELPHI_PACKAGE TRPBaseDevice* __fastcall SetNewDevice(TRPBaseDevice* NewDevice);
}	/* namespace Rpdevice */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RPDEVICE)
using namespace Rpdevice;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RpdeviceHPP
