// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvDirectDataView.pas' rev: 29.00 (Windows)

#ifndef RvdirectdataviewHPP
#define RvdirectdataviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <RpCon.hpp>
#include <RvData.hpp>
#include <RvDataField.hpp>
#include <RvClass.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvdirectdataview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TRaveDataConnection;
struct TDataSystemEventData;
struct TRaveBufferInfo;
class DELPHICLASS TRaveDataSystem;
class DELPHICLASS TRaveDataView;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TRaveDataResult : unsigned char { drContinue, drAbort, drPause };

typedef void __fastcall (__closure *TTimeoutEvent)(TRaveDataSystem* DataSystem, int Counter, int Timeout, int EventType, System::UnicodeString Connection, bool First, TRaveDataResult &DataResult);

enum DECLSPEC_DENUM TRaveDataAction : unsigned char { daOpen, daClose };

typedef void __fastcall (__closure *TDataActionEvent)(TRaveDataSystem* DataSystem, TRaveDataAction DataAction);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRaveDataConnection : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int FTag;
	System::UnicodeString FName;
	bool FRuntime;
	HWND FAppHandle;
	Rpcon::TRvCustomConnection* FConnection;
	NativeUInt FDataEvent;
	int FVersion;
	Rvdata::TRaveBaseDataView* FDataView;
	
public:
	void __fastcall Assign(TRaveDataConnection* Value);
	__property HWND AppHandle = {read=FAppHandle, write=FAppHandle, nodefault};
	__property Rpcon::TRvCustomConnection* Connection = {read=FConnection, write=FConnection};
	__property NativeUInt DataEvent = {read=FDataEvent, write=FDataEvent, nodefault};
	__property Rvdata::TRaveBaseDataView* DataView = {read=FDataView, write=FDataView};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property bool Runtime = {read=FRuntime, write=FRuntime, nodefault};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property int Version = {read=FVersion, write=FVersion, nodefault};
public:
	/* TObject.Create */ inline __fastcall TRaveDataConnection(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TRaveDataConnection(void) { }
	
};

#pragma pack(pop)

typedef TDataSystemEventData *PDataSystemEventData;

struct DECLSPEC_DRECORD TDataSystemEventData
{
public:
	TRaveDataConnection* DataCon;
	int EventType;
	bool Handled;
};


struct DECLSPEC_DRECORD TRaveBufferInfo
{
public:
	int Size;
	System::Byte FileMap;
	System::WideChar *FileBuf;
};


class PASCALIMPLEMENTATION TRaveDataSystem : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int ControlCount;
	NativeUInt NormFileMap;
	System::WideChar *NormFileBuf;
	NativeUInt AltFileMap;
	System::WideChar *AltFileBuf;
	System::WideChar *FileBuf;
	System::WideChar *FilePtr;
	System::Byte CurrentFileMap;
	TRaveDataConnection* CurrentDataCon;
	NativeUInt ControllerMutex;
	NativeUInt CompletedEvent;
	NativeUInt ErrorEvent;
	TTimeoutEvent FOnSmallTimeout;
	TTimeoutEvent FOnLargeTimeout;
	TDataActionEvent FOnDataAction;
	System::Classes::TStringList* FRTConnectList;
	System::Classes::TStringList* FDTConnectList;
	bool FAutoUpdate;
	
public:
	__fastcall TRaveDataSystem(void);
	__fastcall virtual ~TRaveDataSystem(void);
	bool __fastcall GainControl(void);
	void __fastcall ReleaseControl(void);
	bool __fastcall IsUnique(System::UnicodeString Name);
	void __fastcall UpdateConnections(void);
	System::UnicodeString __fastcall ReadStr(void);
	int __fastcall ReadInt(void);
	bool __fastcall ReadBool(void);
	System::Extended __fastcall ReadFloat(void);
	System::Currency __fastcall ReadCurr(void);
	System::TDateTime __fastcall ReadDateTime(void);
	void __fastcall ReadBuf(void *Buffer, int Len);
	void __fastcall WriteStr(System::UnicodeString Value);
	void __fastcall WriteInt(int Value);
	void __fastcall WriteInt64(__int64 Value);
	void __fastcall WriteBool(bool Value);
	void __fastcall WriteFloat(System::Extended Value);
	void __fastcall WriteCurr(System::Currency Value);
	void __fastcall WriteDateTime(System::TDateTime Value);
	void __fastcall WriteBuf(void *Buffer, int Len);
	void __fastcall ClearBuffer(void);
	void __fastcall GetBufferInfo(TRaveBufferInfo &BufferInfo);
	bool __fastcall OpenDataEvent(System::UnicodeString AName, TRaveDataConnection* DataCon);
	void __fastcall CloseDataEvent(TRaveDataConnection* DataCon);
	bool __fastcall CallEvent(int EventType, TRaveDataConnection* DataCon);
	void __fastcall PrepareEvent(int EventType);
	void __fastcall OpenFileMap(TRaveDataConnection* DataCon);
	void __fastcall CloseFileMap(void);
	__property bool AutoUpdate = {read=FAutoUpdate, write=FAutoUpdate, nodefault};
	__property System::Classes::TStringList* RTConnectList = {read=FRTConnectList};
	__property System::Classes::TStringList* DTConnectList = {read=FDTConnectList};
	__property TTimeoutEvent OnSmallTimeout = {read=FOnSmallTimeout, write=FOnSmallTimeout};
	__property TTimeoutEvent OnLargeTimeout = {read=FOnLargeTimeout, write=FOnLargeTimeout};
	__property TDataActionEvent OnDataAction = {read=FOnDataAction, write=FOnDataAction};
};


class PASCALIMPLEMENTATION TRaveDataView : public Rvdata::TRaveBaseDataView
{
	typedef Rvdata::TRaveBaseDataView inherited;
	
protected:
	System::UnicodeString FConnectionName;
	TRaveDataConnection* FDataCon;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	void __fastcall SetDataCon(TRaveDataConnection* Value);
	virtual void __fastcall GetRow(int EventType);
	virtual void __fastcall AfterReport(void);
	
public:
	__fastcall virtual TRaveDataView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TRaveDataView(void);
	virtual void __fastcall Open(void);
	virtual void __fastcall Close(void);
	virtual void __fastcall SetFilter(System::Classes::TStringList* FilterList);
	virtual void __fastcall SetRemoteSort(System::Classes::TStringList* SortList);
	virtual void __fastcall CreateFields(System::Classes::TList* AFieldList);
	__property TRaveDataConnection* DataCon = {read=FDataCon, write=SetDataCon};
	
__published:
	__property System::UnicodeString ConnectionName = {read=FConnectionName, write=FConnectionName};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TRaveDataSystem* RaveDataSystem;
extern DELPHI_PACKAGE TRaveDataConnection* __fastcall CreateDataCon(Rpcon::TRvCustomConnection* RPConnection);
extern DELPHI_PACKAGE TRaveDataView* __fastcall CreateDataView(TRaveDataConnection* DataCon);
extern DELPHI_PACKAGE void __fastcall RaveRegister(void);
}	/* namespace Rvdirectdataview */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVDIRECTDATAVIEW)
using namespace Rvdirectdataview;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvdirectdataviewHPP
