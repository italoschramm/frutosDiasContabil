// CodeGear C++Builder
// Copyright (c) 1995, 2015 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'RvLEType.pas' rev: 29.00 (Windows)

#ifndef RvletypeHPP
#define RvletypeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <RvLEDefine.hpp>
#include <RvLEUtil.hpp>
#include <RvUtil.hpp>

//-- user supplied -----------------------------------------------------------

namespace Rvletype
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseType;
class DELPHICLASS TSimpleType;
class DELPHICLASS TEnumeratedType;
class DELPHICLASS TRange;
class DELPHICLASS TArrayType;
class DELPHICLASS TFuncParam;
class DELPHICLASS TFuncType;
class DELPHICLASS TMethodType;
class DELPHICLASS TStructureMember;
class DELPHICLASS TClassMember;
class DELPHICLASS TMethodMember;
class DELPHICLASS TPropertyMember;
class DELPHICLASS TStructureType;
class DELPHICLASS TRecordType;
class DELPHICLASS TClassType;
class DELPHICLASS TTypeHelper;
class DELPHICLASS TTypeManager;
//-- type declarations -------------------------------------------------------
typedef System::TMetaClass* TBaseTypeClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseType : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Rvledefine::TTypeKind FTypeKind;
	Rvledefine::TTypeStruc FTypeStruc;
	int FSize;
	System::TObject* FOwner;
	int FIndex;
	virtual int __fastcall GetSize(void);
	void __fastcall SetOwner(System::TObject* Value);
	
public:
	__fastcall TBaseType(Rvledefine::TTypeKind ATypeKind);
	__fastcall virtual TBaseType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual bool __fastcall NeedFree(void);
	virtual void __fastcall FreeData(void * Data);
	__property Rvledefine::TTypeStruc TypeStruc = {read=FTypeStruc, nodefault};
	__property int Size = {read=GetSize, nodefault};
	__property int Index = {read=FIndex, write=FIndex, nodefault};
	__property System::TObject* Owner = {read=FOwner, write=SetOwner};
	__property Rvledefine::TTypeKind TypeKind = {read=FTypeKind, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TBaseType(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSimpleType : public TBaseType
{
	typedef TBaseType inherited;
	
protected:
	int FLow;
	int FHigh;
	virtual int __fastcall GetSize(void);
	
public:
	__fastcall TSimpleType(Rvledefine::TTypeKind ATypeKind, int ALow, int AHigh);
	__fastcall virtual TSimpleType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property int Low = {read=FLow, nodefault};
	__property int High = {read=FHigh, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSimpleType(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEnumeratedType : public TBaseType
{
	typedef TBaseType inherited;
	
protected:
	System::Byte FHigh;
	virtual int __fastcall GetSize(void);
	
public:
	__fastcall TEnumeratedType(void);
	__fastcall virtual ~TEnumeratedType(void);
	__fastcall virtual TEnumeratedType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property System::Byte High = {read=FHigh, write=FHigh, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRange : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	int Low;
	int High;
	TBaseType* BaseType;
public:
	/* TObject.Create */ inline __fastcall TRange(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TRange(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TArrayType : public TBaseType
{
	typedef TBaseType inherited;
	
protected:
	TBaseType* FElementType;
	System::Classes::TList* FDim;
	int __fastcall GetDims(void);
	int __fastcall GetLow(int Index);
	int __fastcall GetHigh(int Index);
	int __fastcall GetCount(int Index);
	TBaseType* __fastcall GetDimType(int Index);
	int __fastcall GetDimSize(int Index);
	virtual int __fastcall GetSize(void);
	
public:
	__fastcall TArrayType(void);
	__fastcall virtual ~TArrayType(void);
	__fastcall virtual TArrayType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	void __fastcall AddDim(int Low, int High, TBaseType* BaseType);
	virtual bool __fastcall NeedFree(void);
	virtual void __fastcall FreeData(void * Data);
	__property TBaseType* ElementType = {read=FElementType, write=FElementType};
	__property int Dims = {read=GetDims, nodefault};
	__property int Low[int Index] = {read=GetLow};
	__property int High[int Index] = {read=GetHigh};
	__property int Count[int Index] = {read=GetCount};
	__property TBaseType* DimType[int Index] = {read=GetDimType};
	__property int DimSize[int Index] = {read=GetDimSize};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TParamType : unsigned char { ptValue, ptVar };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFuncParam : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString ID;
	TBaseType* BaseType;
	TParamType ParamType;
	int DefaultValue;
	int Offset;
public:
	/* TObject.Create */ inline __fastcall TFuncParam(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TFuncParam(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFuncType : public TBaseType
{
	typedef TBaseType inherited;
	
protected:
	System::Classes::TList* ParamList;
	TBaseType* FResultType;
	TFuncParam* __fastcall GetParam(int Index);
	Rvledefine::TAddress __fastcall GetParamAddr(int Index);
	System::Word __fastcall GetParams(void);
	
public:
	__fastcall TFuncType(void);
	__fastcall virtual ~TFuncType(void);
	__fastcall virtual TFuncType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	TFuncParam* __fastcall AddParam(System::UnicodeString AID, TParamType AParamType);
	bool __fastcall EqualTo(TFuncType* FuncType);
	__property TFuncParam* Param[int Index] = {read=GetParam};
	__property Rvledefine::TAddress ParamAddr[int Index] = {read=GetParamAddr};
	__property System::Word Params = {read=GetParams, nodefault};
	__property TBaseType* ResultType = {read=FResultType, write=FResultType};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMethodType : public TFuncType
{
	typedef TFuncType inherited;
	
public:
	/* TFuncType.Create */ inline __fastcall TMethodType(void) : TFuncType() { }
	/* TFuncType.Destroy */ inline __fastcall virtual ~TMethodType(void) { }
	/* TFuncType.CreateFromStreamHelper */ inline __fastcall virtual TMethodType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper) : TFuncType(TypeHelper, StreamHelper) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TStructureMember : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TBaseType* FBaseType;
	Rvledefine::TMemberType FMemberType;
	TStructureType* FStructureType;
	
public:
	__fastcall virtual TStructureMember(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper, TStructureType* Structure);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property TBaseType* BaseType = {read=FBaseType, write=FBaseType};
	__property Rvledefine::TMemberType MemberType = {read=FMemberType, write=FMemberType, nodefault};
	__property TStructureType* StructureType = {read=FStructureType, write=FStructureType};
public:
	/* TObject.Create */ inline __fastcall TStructureMember(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TStructureMember(void) { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TStructureMemberClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TClassMember : public TStructureMember
{
	typedef TStructureMember inherited;
	
protected:
	Rvledefine::TScope FScope;
	
public:
	__fastcall virtual TClassMember(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper, TStructureType* Structure);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property Rvledefine::TScope Scope = {read=FScope, write=FScope, nodefault};
public:
	/* TObject.Create */ inline __fastcall TClassMember(void) : TStructureMember() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TClassMember(void) { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TMethodOptions : unsigned char { moVirtual, moOverride };

typedef System::Set<TMethodOptions, TMethodOptions::moVirtual, TMethodOptions::moOverride> TMethodOptionsSet;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMethodMember : public TClassMember
{
	typedef TClassMember inherited;
	
protected:
	TMethodOptionsSet FOptions;
	
public:
	__fastcall virtual TMethodMember(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper, TStructureType* Structure);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property TMethodOptionsSet Options = {read=FOptions, write=FOptions, nodefault};
public:
	/* TObject.Create */ inline __fastcall TMethodMember(void) : TClassMember() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TMethodMember(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPropertyMember : public TClassMember
{
	typedef TClassMember inherited;
	
protected:
	int FReadIndex;
	int FWriteIndex;
	
public:
	__fastcall virtual TPropertyMember(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper, TStructureType* Structure);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	__property int ReadIndex = {read=FReadIndex, write=FReadIndex, nodefault};
	__property int WriteIndex = {read=FWriteIndex, write=FWriteIndex, nodefault};
public:
	/* TObject.Create */ inline __fastcall TPropertyMember(void) : TClassMember() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TPropertyMember(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TStructureType : public TBaseType
{
	typedef TBaseType inherited;
	
protected:
	System::Classes::TStringList* FTypeList;
	int BaseSize;
	virtual int __fastcall GetSize(void);
	
public:
	__fastcall TStructureType(void);
	__fastcall virtual ~TStructureType(void);
	__fastcall virtual TStructureType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	TStructureMember* __fastcall AddElement(System::UnicodeString ID, TBaseType* BaseType);
	virtual bool __fastcall FindMember(System::UnicodeString ID, Rvledefine::TScopeSet ValidScopes, int &Offset, TStructureMember* &Member, int &Index);
	TStructureMember* __fastcall IndexToMember(int Index, System::UnicodeString &ID);
	virtual bool __fastcall NeedFree(void);
	virtual void __fastcall FreeData(void * Data);
	__property System::Classes::TStringList* TypeList = {read=FTypeList};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRecordType : public TStructureType
{
	typedef TStructureType inherited;
	
public:
	__fastcall TRecordType(void);
public:
	/* TStructureType.Destroy */ inline __fastcall virtual ~TRecordType(void) { }
	/* TStructureType.CreateFromStreamHelper */ inline __fastcall virtual TRecordType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper) : TStructureType(TypeHelper, StreamHelper) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TClassType : public TStructureType
{
	typedef TStructureType inherited;
	
protected:
	int FRaveInstanceSize;
	TClassType* FRaveClassParent;
	System::UnicodeString FRaveClassName;
	virtual int __fastcall GetSize(void);
	int __fastcall GetRaveInstanceSize(void);
	
public:
	__fastcall TClassType(TClassType* AClassParent, System::UnicodeString AClassName);
	__fastcall virtual TClassType(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual void __fastcall SaveToStreamHelper(TTypeHelper* TypeHelper, Rvutil::TStreamHelper* StreamHelper);
	virtual bool __fastcall FindMember(System::UnicodeString ID, Rvledefine::TScopeSet ValidScopes, int &Offset, TStructureMember* &Member, int &Index);
	TClassMember* __fastcall AddField(System::UnicodeString ID, TBaseType* BaseType, Rvledefine::TScope Scope);
	TMethodMember* __fastcall AddMethod(System::UnicodeString ID, TBaseType* BaseType, Rvledefine::TScope Scope, TMethodOptionsSet Options);
	TPropertyMember* __fastcall AddProperty(System::UnicodeString ID, TBaseType* BaseType, Rvledefine::TScope Scope, int ReadIndex, int WriteIndex);
	__property TClassType* RaveClassParent = {read=FRaveClassParent};
	__property System::UnicodeString RaveClassName = {read=FRaveClassName};
	__property int RaveInstanceSize = {read=GetRaveInstanceSize, nodefault};
public:
	/* TStructureType.Destroy */ inline __fastcall virtual ~TClassType(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTypeHelper : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	virtual TBaseType* __fastcall IndexToType(int ModuleIndex, int TypeIndex) = 0 ;
	virtual void __fastcall TypeToIndex(TBaseType* BaseType, int &ModuleIndex, int &TypeIndex) = 0 ;
public:
	/* TObject.Create */ inline __fastcall TTypeHelper(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTypeHelper(void) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTypeManager : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TList* TypeList;
	TTypeHelper* TypeHelper;
	
protected:
	System::TObject* FOwner;
	
public:
	__fastcall TTypeManager(System::TObject* AOwner, TTypeHelper* ATypeHelper);
	__fastcall virtual ~TTypeManager(void);
	void __fastcall Clear(void);
	void __fastcall LoadFromStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	void __fastcall SaveToStreamHelper(Rvutil::TStreamHelper* StreamHelper);
	TBaseType* __fastcall Add(TBaseType* BaseType);
	TBaseType* __fastcall Get(int Index);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::StaticArray<TBaseTypeClass, 6> TypeTypes;
extern DELPHI_PACKAGE System::StaticArray<TStructureMemberClass, 4> MemberTypes;
extern DELPHI_PACKAGE TSimpleType* BooleanType;
extern DELPHI_PACKAGE TSimpleType* IntegerType;
extern DELPHI_PACKAGE TSimpleType* ExtendedType;
extern DELPHI_PACKAGE TSimpleType* CurrencyType;
extern DELPHI_PACKAGE TSimpleType* CharType;
extern DELPHI_PACKAGE TSimpleType* StringType;
extern DELPHI_PACKAGE TFuncType* OrdFunc;
}	/* namespace Rvletype */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RVLETYPE)
using namespace Rvletype;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// RvletypeHPP
