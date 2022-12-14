// ===========================================================================
// Purpose:     data classes, wxObject, arrays, lists, hash
// Author:      J Winwood, John Labenski
// Created:     14/11/2001
// Copyright:   (c) 2001-2002 Lomtick Software. All rights reserved.
// Licence:     wxWidgets licence
// wxWidgets:   Updated to 2.8.4
// ===========================================================================

// ---------------------------------------------------------------------------
// wxString - A stub class for people who absolutely need wxStrings
//
// wxLua uses Lua strings for almost everything and any function that takes
// a wxString can take a Lua string. All functions that return a wxString
// actually return Lua string unless otherwise noted.

class %delete wxString
{
    wxString(const wxString& str = "");

    wxString GetData() const;

    wxString AfterFirst(wxChar ch) const;
    wxString AfterLast(wxChar ch) const;
    wxString BeforeFirst(wxChar ch) const;
    wxString BeforeLast(wxChar ch) const;

    size_t Len() const;

    const wxCharBuffer ToUTF8() const;
    static wxString FromUTF8(const char* s);
    static wxString FromUTF8Unchecked(const char* s);

    static wxString From8BitData(const char* s);
    wxCharBuffer To8BitData();

#if %wxchkver_2_9
    //wxString(wxString::const_iterator first, wxString::const_iterator last);
    wxString::const_iterator begin() const;
    wxString::iterator begin();
    wxString::const_iterator end() const;
    wxString::iterator end();
#endif
};

// ---------------------------------------------------------------------------
// wxString::const_iterator - A wxString iterator class

// wxWidgets has wxString iterators in < 2.9, but they are #if wxUSE_STL
// so they are not necessary for anything, in 2.9 they are inputs to some functions.

#if %wxchkver_2_9

class %delete wxString::const_iterator
{
    wxString::const_iterator();
    wxString::const_iterator(const wxString::const_iterator& i);
    wxString::const_iterator(const wxString::iterator& i);

    //wxUniChar operator*() const;
    char operator*() const;

    wxString::const_iterator& operator=(const wxString::const_iterator& i);
    wxString::const_iterator operator+(wxIntPtr n) const;
    wxString::const_iterator operator-(wxIntPtr n) const;
};

// ---------------------------------------------------------------------------
// wxString::iterator - A wxString iterator class

class %delete wxString::iterator
{
    wxString::iterator();
    wxString::iterator(const wxString::iterator& i);

    //wxUniChar operator*() const;
    char operator*() const;

    wxString::iterator& operator=(const wxString::iterator& i);
    wxString::iterator operator+(wxIntPtr n) const;
    wxString::iterator operator-(wxIntPtr n) const;
};

#endif

// ---------------------------------------------------------------------------
// wxStringTokenizer

#include "wx/tokenzr.h"

enum wxStringTokenizerMode
{
    wxTOKEN_INVALID,         // set by def ctor until SetString() is called
    wxTOKEN_DEFAULT,         // strtok() for whitespace delims, RET_EMPTY else
    wxTOKEN_RET_EMPTY,       // return empty token in the middle of the string
    wxTOKEN_RET_EMPTY_ALL,   // return trailing empty tokens too
    wxTOKEN_RET_DELIMS,      // return the delim with token (implies RET_EMPTY);
    wxTOKEN_STRTOK           // behave exactly like strtok(3);
};

class %delete wxStringTokenizer : public wxObject
{
    wxStringTokenizer();
    wxStringTokenizer(const wxString& str, const wxString& delims = wxDEFAULT_DELIMITERS, wxStringTokenizerMode mode = wxTOKEN_DEFAULT);

    void SetString(const wxString& str, const wxString& delims = wxDEFAULT_DELIMITERS, wxStringTokenizerMode mode = wxTOKEN_DEFAULT);

    void Reinit(const wxString& str);
    size_t CountTokens() const;
    bool HasMoreTokens() const;
    wxString GetNextToken();
    //wxChar GetLastDelimiter() const;

    wxString GetString() const;
    size_t GetPosition() const;

    wxStringTokenizerMode GetMode() const;
    bool AllowEmpty() const;
};

// ---------------------------------------------------------------------------
// wxClientData
//
// No %delete since the container will delete it and you should only create one
// of these if you plan on attaching it to a container to avoid a memory leak.

//enum wxClientDataType - used internally so we don't need it
//{
//    wxClientData_None,
//    wxClientData_Object,
//    wxClientData_Void
//};

class wxClientData
{
    // declare this as a datatype, but there is nothing we can do with this as
    // it must be derived, see wxStringClientData
};

// ---------------------------------------------------------------------------
// wxStringClientData
//
// No %delete since the container will delete it and you should only create one
// of these if you plan on attaching it to a container to avoid a memory leak.

class wxStringClientData : public wxClientData
{
    wxStringClientData(const wxString& data = "");

    wxString GetData() const;
    void SetData(const wxString& data);
};

// ---------------------------------------------------------------------------
// wxClientDataContainer

class wxClientDataContainer
{
    wxClientDataContainer();

    void SetClientObject(wxClientData *data);
    wxClientData *GetClientObject() const;

    void SetClientData(voidptr_long data); // C++ is (void *clientData) You can put a number here
    // C++ Func: void *GetClientData() const;
    voidptr_long GetClientData() const; // C++ returns (void *) You get a number here
};

// ---------------------------------------------------------------------------
// wxObject

#if wxLUA_USE_wxObject

#include "wx/object.h"

wxObject* wxCreateDynamicObject(const wxString& className);

class %delete wxObject
{
    wxObject();

    //void Dump(ostream& stream);

    // %override [new class type] wxObject::DynamicCast() converts the wxObject
    //    to an object of type classname
    void *DynamicCast(const wxString &classname);

    wxClassInfo* GetClassInfo();
    wxObjectRefData* GetRefData() const;
    bool  IsKindOf(wxClassInfo *info);
    bool IsSameAs(const wxObject& o) const;
    void  Ref(const wxObject& clone);
    void  SetRefData(wxObjectRefData* data);
    void  UnRef();

    //wxObject& operator=(const wxObject& other);
};

class wxObjectRefData // no %delete since this should be from a wxObject
{
    int GetRefCount() const;
};

#endif //wxLUA_USE_wxObject

// ---------------------------------------------------------------------------
// wxClassInfo

#if wxLUA_USE_wxClassInfo

#include "wx/object.h"

class wxClassInfo // no %delete since we're always getting a static instance
{
    // %override wxClassInfo() constructor creates an instance using wxClassInfo::FindClass
    wxClassInfo(const wxString &name);

    wxObject* CreateObject();
    static wxClassInfo* FindClass(const wxString &name);
    wxString GetBaseClassName1() const;
    wxString GetBaseClassName2() const;
    const wxClassInfo  *GetBaseClass1() const;
    const wxClassInfo  *GetBaseClass2() const;
    wxString GetClassName() const;
    int GetSize() const;
    bool IsDynamic();
    bool IsKindOf(wxClassInfo* info);

    static const wxClassInfo  *GetFirst();
    const wxClassInfo         *GetNext() const;
};

#endif //wxLUA_USE_wxClassInfo


// ---------------------------------------------------------------------------
// wxList

#if wxLUA_USE_wxList && !wxUSE_STL

#include "wx/list.h"

enum wxKeyType
{
    wxKEY_NONE,
    wxKEY_INTEGER,
    wxKEY_STRING
};

class %delete wxList // not derived from wxObject in 2.9
{
    wxList();

    wxNode *Append(wxObject *object);
    wxNode *Append(long key, wxObject *object);
    wxNode *Append(const wxString& key, wxObject *object);
    void Clear();
    void DeleteContents(bool destroy);
    bool DeleteNode(wxNode *pNode);
    bool DeleteObject(wxObject *pObject);
    wxNode* Find(wxObject* pObject);
    wxNode *Find(long key);
    wxNode *Find(const wxString &key);
    int     GetCount() const;
    wxNode *GetFirst();
    wxNode *GetLast();
    int     IndexOf(wxObject* pObject);
    wxNode *Insert(wxObject *pObject);
    wxNode *Insert(size_t position, wxObject *pObject);
    wxNode *Insert(wxNode *pNode, wxObject *pObject);
    bool    IsEmpty() const;
    wxNode *Item(int iIndex) const;
    wxNode *Member(wxObject *pObject);
};

// ---------------------------------------------------------------------------
// wxNode - wxList

class wxNode // no %delete since we get this from a wxList
{
    // no constructor, just use this from a wxList

    wxObject *GetData();
    wxNode *GetNext();
    wxNode *GetPrevious();
    void SetData(wxObject *data);
    //int IndexOf() - unfortunately a protected member of wxNodeBase

    // To convert wxObject* GetData() to another type use wxObject::DynamicCast
    // See wxMenuItemList, wxWindowList

    // Example: How to use a wxWindowList
    // frame = wx.wxFrame(wx.NULL, wx.wxID_ANY, "Test");
    // win = wx.wxWindow(frame, wx.wxID_ANY);
    // frame:Show(true);
    // wlist = frame:GetChildren();
    // wlist:Item(0):GetData():DynamicCast("wxWindow"):SetBackgroundColour(wx.wxRED);

    // Example: How to use a wxMenuItemList
    // local fileMenu = wx.wxMenu();
    // fileMenu:Append(wx.wxID_EXIT, "E&xit", "Quit the program");
    // mList = fileMenu:GetMenuItems();
    // print(mList:GetCount(), mList:GetFirst():GetData():DynamicCast("wxMenuItem"):GetLabel());
};

#endif //wxLUA_USE_wxList && !wxUSE_STL

// ---------------------------------------------------------------------------
// wxArray - Can't implement this since it's not really a class.
//           Here's the list of generic functions.

//class wxArray
//    // no constructor since this class doesn't exist
//    void Add(T &item, size_t copies = 1);
//    void Alloc(size_t count);
//    void Clear();
//    void Empty();
//    int  GetCount() const;
//    void Insert(T &item, size_t n, size_t copies = 1);
//    bool IsEmpty() const;
//    void RemoveAt(size_t index, size_t count = 1);
//    void Shrink();
//};

// ---------------------------------------------------------------------------
// wxArrayInt
//
// NOTE: Any function that takes a "const wxArrayInt& arr" or "wxArrayInt arr"
//       can take a Lua table of integers with numeric indexes

#if wxLUA_USE_wxArrayInt

#include "wx/dynarray.h"

class %delete wxArrayInt
{
    wxArrayInt();
    wxArrayInt(const wxArrayInt& array);

    // %override [Lua table] wxArrayInt::ToLuaTable() const;
    // returns a table array of the integers
    int ToLuaTable() const;

    void Add(int num);
    void Alloc(size_t count);
    void Clear();
    void Empty();
    int  GetCount() const;
    bool IsEmpty() const;
    int  Index(int n, bool searchFromEnd = false);
    void Insert(int num, int n, int copies = 1);
    int  Item(int n);
    void Remove(int n);
    void RemoveAt(size_t index);
    void Shrink();

    int operator[](size_t nIndex);
};

#endif //wxLUA_USE_wxArrayInt

#if wxLUA_USE_wxArrayDouble

#include "wx/dynarray.h"

class %delete wxArrayDouble
{
    wxArrayDouble();
    wxArrayDouble(const wxArrayDouble& array);

    // %override [Lua table] wxArrayDouble::ToLuaTable() const;
    // returns a table array of numbers
    int ToLuaTable() const;

    void Add(double num);
    void Alloc(size_t count);
    void Clear();
    void Empty();
    int  GetCount() const;
    bool IsEmpty() const;
    int  Index(double n, bool searchFromEnd = false);
    void Insert(double num, int n, int copies = 1);
    double Item(int n);
    void Remove(int n);
    void RemoveAt(size_t index);
    void Shrink();

    double operator[](size_t nIndex);
};

#endif //wxLUA_USE_wxArrayDouble

// ---------------------------------------------------------------------------
// wxArrayString
//
// NOTE: Any function that takes a "const wxArrayString& arr" or "wxArrayString arr"
//       can take a Lua table of strings with numeric indexes

#if wxLUA_USE_wxArrayString

#include "wx/arrstr.h"

class %delete wxArrayString
{
    wxArrayString();
    wxArrayString(const wxArrayString& array);

    // %override [Lua table] wxArrayString::ToLuaTable() const;
    // returns a table array of the strings
    int ToLuaTable() const;

    size_t Add(const wxString& str, size_t copies = 1);
    void Alloc(size_t nCount);
    void Clear();
    void Empty();
    int  GetCount() const;
    int  Index(const wxString &sz, bool bCase = true, bool bFromEnd = false);
    void Insert(const wxString& str, int nIndex, size_t copies = 1);
    bool IsEmpty();
    wxString Item(size_t nIndex) const;
    wxString Last();
    void Remove(const wxString &sz);
    void RemoveAt(size_t nIndex, size_t count = 1);
    void Shrink();
    void Sort(bool reverseOrder = false);

    wxString& operator[](size_t nIndex);
};

// ---------------------------------------------------------------------------
// wxSortedArrayString
//
// NOTE: Any function that takes a "const wxSortedArrayString& arr" or "wxSortedArrayString arr"
//       can take a Lua table of strings with numeric indexes
//
// Note: We cheat by saying that it's derived from a wxArrayString to not
//       have to duplicate it's methods. The binder doesn't know any better.

class %delete wxSortedArrayString : public wxArrayString
{
    wxSortedArrayString();
    wxSortedArrayString(const wxArrayString& src); // have to have this constructor since they're not actually derived
    wxSortedArrayString(const wxSortedArrayString& src);
};

#endif //wxLUA_USE_wxArrayString

// ---------------------------------------------------------------------------
// wxHashTable - Lua tables are hashtables

//#if wxLUA_USE_wxHashTable

//%include "wx/hash.h"

//#if %wxchkver_2_6
//class wxHashTable::Node
//{
//};
//#endif

//class wxHashTable : public wxObject
//{
//    !%wxchkver_2_6 wxHashTable(unsigned int key_type, int size = 1000);
//    %wxchkver_2_6 wxHashTable(wxKeyType key_type, int size = 1000);
//    void BeginFind();
//    void Clear();
//    wxObject * Delete(long key);
//    void DeleteContents(bool flag);
//    wxObject * Get(long key);
//    wxObject * Get(const wxString &key);
//    long MakeKey(const wxString& string);
//    !%wxchkver_2_6 wxNode * Next();
//    %wxchkver_2_6 wxHashTable::Node * Next();
//    void Put(long key, wxObject *object);
//    void Put(const wxString& key, wxObject *object);
//    int GetCount() const;
//};

//#endif wxLUA_USE_wxHashTable

// ---------------------------------------------------------------------------
// wxLongLong

#if wxUSE_LONGLONG

#include "wx/longlong.h"

class %delete wxLongLong
{
    wxLongLong(long hi = 0, unsigned long lo = 0);

    wxLongLong Abs() const;
    wxLongLong& Assign(double d);
    long GetHi() const;
    unsigned long GetLo() const;
    double ToDouble() const;
    long ToLong() const;
    wxString ToString() const;

    //wxLongLong operator+(const wxLongLong& ll) const;
    //wxLongLong& operator+(const wxLongLong& ll);
    //wxLongLong& operator++();
    //wxLongLong operator-() const;
    //wxLongLong operator-(const wxLongLong& ll) const;
};

// ---------------------------------------------------------------------------
// wxULongLong

class %delete wxULongLong
{
    wxULongLong(unsigned long hi = 0, unsigned long lo = 0);

    unsigned long GetHi() const;
    unsigned long GetLo() const;
    long ToULong() const;
    wxString ToString() const;
};

#endif wxUSE_LONGLONG

#if wxLUA_USE_wxMemoryBuffer

class %delete wxMemoryBuffer
{
public:
    // ctor and dtor
    wxMemoryBuffer(size_t size = wxMemoryBufferData::DefBufSize);

    // copy and assignment
    wxMemoryBuffer(const wxMemoryBuffer& src);

    // Accessors
    void  *GetData() const;
    size_t GetBufSize() const;
    size_t GetDataLen() const;

    %wxchkver_2_9_4 bool IsEmpty() const;

    void   SetBufSize(size_t size);
    void   SetDataLen(size_t len);

    %wxchkver_2_9_4 void Clear();

    // Ensure the buffer is big enough and return a pointer to it
    void *GetWriteBuf(size_t sizeNeeded);

    // Update the length after the write
    void  UngetWriteBuf(size_t sizeUsed);

    // Like the above, but appends to the buffer
    void *GetAppendBuf(size_t sizeNeeded);

    // Update the length after the append
    void  UngetAppendBuf(size_t sizeUsed);

    // Other ways to append to the buffer
    void  AppendByte(char data);

    void  AppendData(const void *data, size_t len);

    // gives up ownership of data, returns the pointer; after this call,
    // data isn't freed by the buffer and its content is reset to empty
    void *release();

    // wxLua specific
    //  Get the data at the given index. If length > 1, then multiple values are returned.
    unsigned char GetByte(int index, size_t length = 1);
    //  Set the data at the given index. If multiple data are given, the following values are
    //  set at the subsequent positions. Data length and buffer size are updated if necessary.
    void SetByte(int index, unsigned char data);
    //  Set the same byte to the specified range. Data length and buffer size are updated if necessary.
    void Fill(unsigned char data, int start_index, size_t length);
};

#endif

// ---------------------------------------------------------------------------
// wxVariant

//  At present, methods related to wxVariantData and wxAny are commented out.
//  wxVariantData and wxAny are basically designed to be used as C++-derived subclasses;
//  on wxLua, they may not be very useful.
//  
#if wxUSE_VARIANT

class %delete wxVariant: public wxObject
{
public:
    wxVariant();

    wxVariant(const wxVariant& variant);
//    wxVariant(wxVariantData* data, const wxString& name = wxEmptyString);
#if wxUSE_ANY
    // wxVariant(const wxAny& any);
#endif
    //virtual ~wxVariant();

    bool operator== (const wxVariant& variant) const;
    bool operator!= (const wxVariant& variant) const;

    // Sets/gets name
    void SetName(const wxString& name);
    const wxString& GetName() const;

    // Tests whether there is data
    bool IsNull() const;

    // For compatibility with wxWidgets <= 2.6, this doesn't increase
    // reference count.
//    wxVariantData* GetData() const;
//    void SetData(wxVariantData* data) ;

    // make a 'clone' of the object
    void Ref(const wxVariant& clone);

    // ensure that the data is exclusive to this variant, and not shared
    bool Unshare();

    // Make NULL (i.e. delete the data)
    void MakeNull();

    // Delete data and name
    void Clear();

    // Returns a string representing the type of the variant,
    // e.g. "string", "bool", "stringlist", "list", "double", "long"
    wxString GetType() const;

    bool IsType(const wxString& type) const;
    bool IsValueKindOf(const wxClassInfo* type) const;

    // write contents to a string (e.g. for debugging)
    wxString MakeString() const;

#if wxUSE_ANY
//    wxAny GetAny() const;
#endif

    // wxArrayString
    // Note: these methods need %override, because automatic cast from
    // wxLuaSmartwxArrayString to wxArrayString does not work
    wxVariant(const wxArrayString& val, const wxString& name = wxEmptyString);
    bool operator== (const wxArrayString& value) const;
    bool operator!= (const wxArrayString& value) const;
    wxArrayString GetArrayString() const;

    // The wxLua overload mechanism cannot tell difference between boolean and number.
    // So we implement the 'double' version for the constructor and operators == and !=, 
    // and let wxLua call them for boolean and number arguments. Then, we implement
    // %override and discriminate the argument type within the implementation.
    wxVariant(double val, const wxString& name = wxEmptyString);
    bool operator== (double value) const;
    bool operator!= (double value) const;
    double GetReal() const;
    double GetDouble() const;

    // long
    //wxVariant(long val, const wxString& name = wxEmptyString);
    //wxVariant(int val, const wxString& name = wxEmptyString);
    //wxVariant(short val, const wxString& name = wxEmptyString);
    //bool operator== (long value) const;
    //bool operator!= (long value) const;
    long GetInteger() const;
    long GetLong() const;

    // bool
    //wxVariant(bool val, const wxString& name = wxEmptyString);
    //bool operator== (bool value) const;
    //bool operator!= (bool value) const;
    bool GetBool() const ;

    // wxDateTime
#if wxUSE_DATETIME
    wxVariant(const wxDateTime& val, const wxString& name = wxEmptyString);
    bool operator== (const wxDateTime& value) const;
    bool operator!= (const wxDateTime& value) const;
    wxDateTime GetDateTime() const;
#endif

    // wxString
    wxVariant(const wxString& val, const wxString& name = wxEmptyString);
    // these overloads are necessary to prevent the compiler from using bool
    // version instead of wxString one:
//    wxVariant(const char* val, const wxString& name = wxEmptyString);
//    wxVariant(const wchar_t* val, const wxString& name = wxEmptyString);
//    wxVariant(const wxCStrData& val, const wxString& name = wxEmptyString);
//    wxVariant(const wxScopedCharBuffer& val, const wxString& name = wxEmptyString);
//    wxVariant(const wxScopedWCharBuffer& val, const wxString& name = wxEmptyString);

    bool operator== (const wxString& value) const;
    bool operator!= (const wxString& value) const;
    wxString GetString() const;

    // void*
    wxVariant(void* ptr, const wxString& name = wxEmptyString);
    bool operator== (void* value) const;
    bool operator!= (void* value) const;
    void* GetVoidPtr() const;

    // wxObject*
    wxVariant(wxObject* ptr, const wxString& name = wxEmptyString);
    bool operator== (wxObject* value) const;
    bool operator!= (wxObject* value) const;
    wxObject* GetWxObjectPtr() const;

#if wxUSE_LONGLONG
    // wxLongLong
    wxVariant(wxLongLong, const wxString& name = wxEmptyString);
    bool operator==(wxLongLong value) const;
    bool operator!=(wxLongLong value) const;
    wxLongLong GetLongLong() const;

    // wxULongLong
    wxVariant(wxULongLong, const wxString& name = wxEmptyString);
    bool operator==(wxULongLong value) const;
    bool operator!=(wxULongLong value) const;
    wxULongLong GetULongLong() const;
#endif

    // ------------------------------
    // list operations
    // ------------------------------

    wxVariant(const wxVariantList& val, const wxString& name = wxEmptyString); // List of variants
    bool operator== (const wxVariantList& value) const;
    bool operator!= (const wxVariantList& value) const;
    // Treat a list variant as an array
    wxVariant operator[] (size_t idx) const;
    wxVariant& operator[] (size_t idx) ;
    wxVariantList& GetList() const ;

    // Return the number of elements in a list
    size_t GetCount() const;

    // Make empty list
    void NullList();

    // Append to list
    void Append(const wxVariant& value);

    // Insert at front of list
    void Insert(const wxVariant& value);

    // Returns true if the variant is a member of the list
    bool Member(const wxVariant& value) const;

    // Deletes the nth element of the list
    bool Delete(size_t item);

    // Clear list
    void ClearList();

public:
    // Type conversion
    // C++: bool Convert(T* value) const;
    // Lua: %override [bool T] ConvertToT();
    bool ConvertToLong();
    bool ConvertToBool();
    bool ConvertToDouble();
    bool ConvertToString();
#if wxUSE_DATETIME
    bool ConvertToDateTime();
#endif
#if wxUSE_LONGLONG
    bool ConvertToLongLong();
    bool ConvertToULongLong();
#endif
};

// ---------------------------------------------------------------------------
// wxVariantList

class wxVariantList : public wxList
{
    // Use the wxList methods, see also wxNode
};

#endif  //  wxUSE_VARIANT

