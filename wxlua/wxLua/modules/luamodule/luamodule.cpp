/////////////////////////////////////////////////////////////////////////////
// Purpose:     wxLuaModuleApp - code to allow wxLua to be used as a module using require"wx"
// Author:      John Labenski, J Winwood
// Created:     14/11/2001
// Copyright:   (c) 2012 John Labenski, 2001-2002,2022 Lomtick Software. All rights reserved.
// Licence:     wxWidgets licence
/////////////////////////////////////////////////////////////////////////////

#include <wx/string.h>
#include <wx/app.h>
#include <wx/frame.h>
#include <wx/msgdlg.h>
#include <wx/image.h>       // for wxInitAllImageHandlers

#if defined(__WXMSW__)
    #include <wx/msw/private.h> // for wxSetInstance
#endif

#if wxCHECK_VERSION(3,0,0)
    #include <wx/wxcrtvararg.h>
#endif // wxCHECK_VERSION(3,0,0)

#include "wxlua/wxlstate.h"
#include "luamoduledefs.h"

extern "C"
{
    // force C linkage w/o name mangling
    WXDLLIMPEXP_LUAMODULE int luaopen_wx(lua_State *L);

#ifdef __WXMSW__
    BOOL APIENTRY DllMain( HINSTANCE hModule, DWORD reason, LPVOID reserved);
#endif //__WXMSW__
}

static wxLuaState s_wxlState; // This is our wxLuaState for the module

// Declare the binding initialization functions as extern so we don't have to
//  #include the binding header for simplicity.
#include "wxbind/include/wxbinddefs.h"
WXLUA_DECLARE_BIND_ALL

// ----------------------------------------------------------------------------
// Remember the hInstance for this DLL so we can set wxSetInstance() and
// be able to load cursors from the embedded resources in <wx/msw/wx.rc>
// wxWidgets uses GetModuleHandle(NULL) which returns the handle to the calling
// EXE app which is not what we want, we want *this* instance.
// ----------------------------------------------------------------------------

#ifdef __WXMSW__

static HINSTANCE wxLuaModule = NULL;

BOOL APIENTRY DllMain( HINSTANCE hModule, DWORD ulReason, LPVOID )
{
   switch (ulReason)
   {
      case DLL_PROCESS_ATTACH : wxLuaModule = hModule; break;
      case DLL_PROCESS_DETACH :
      default : break;
   }

   return TRUE;
}

#endif // __WXMSW__

#ifdef _MSC_VER
    // warning C4275: non dll-interface class 'wxApp' used as base for dll-interface class 'wxLuaModuleApp'
    // This file is built into a DLL, but we can link to a static wxWidgets and 
    // we don't want or need to export their functions, only luaopen_wx().
    #pragma warning( disable : 4275 )

    // warning C4251: 'wxLuaModuleApp::ms_classInfo': class 'wxClassInfo' needs to have dll-interface to be used by clients of class wxLuaModuleApp.
    // Same reasoning as disabling C4275.
    #pragma warning( disable : 4251 )
#endif // _MSC_VER

// ----------------------------------------------------------------------------
// wxLuaModuleApp
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_LUAMODULE wxLuaModuleApp : public wxApp
{
public:
    wxLuaModuleApp() : wxApp() {}

    // Override the base class virtual functions
    virtual bool OnInit();
    virtual int  OnExit();
    virtual int  MainLoop();
    virtual void MacOpenFiles(const wxArrayString& fileNames);

    void OnLuaPrint( wxLuaEvent &event );
    void OnLuaError( wxLuaEvent &event );

private:
    wxArrayString macOpenFiles;
    DECLARE_ABSTRACT_CLASS(wxLuaModuleApp)
    DECLARE_EVENT_TABLE()
};

// ----------------------------------------------------------------------------
// wxLuaModuleApp
// ----------------------------------------------------------------------------

IMPLEMENT_ABSTRACT_CLASS(wxLuaModuleApp, wxApp);
IMPLEMENT_APP_NO_MAIN(wxLuaModuleApp)

BEGIN_EVENT_TABLE(wxLuaModuleApp, wxApp)
    EVT_LUA_PRINT       (wxID_ANY, wxLuaModuleApp::OnLuaPrint)
    EVT_LUA_ERROR       (wxID_ANY, wxLuaModuleApp::OnLuaError)
END_EVENT_TABLE()

bool wxLuaModuleApp::OnInit()
{
    return wxApp::OnInit();
}

int wxLuaModuleApp::OnExit()
{
    return wxApp::OnExit();
}

int wxLuaModuleApp::MainLoop()
{
    // only run the mainloop if there are any toplevel windows otherwise
    // they cannot exit it and they won't be able to do anything anyway.
    int  runMain = 0;
    bool haveWindows = (wxTopLevelWindows.GetCount() != 0);
    if (haveWindows && !IsMainLoopRunning()) {
        // process any pending files from MacOpenFiles that were stored during the initial call
        if (macOpenFiles.GetCount() > 0) {
          MacOpenFiles(macOpenFiles);
          macOpenFiles.Empty();
        }
        runMain = wxApp::MainLoop();
    }

    return runMain;
}

void wxLuaModuleApp::OnLuaPrint( wxLuaEvent &event )
{
    wxPrintf(wxT("%s\n"), event.GetString().c_str());
    fflush(stdout);
}

void wxLuaModuleApp::OnLuaError( wxLuaEvent &event )
{
    // Note that we don't get this error normally since lua.exe installed
    // their error handler before calling pcall(), however we might get this
    // event if pcall() is called in Lua code.
    wxPrintf(wxT("wxLua Runtime Error:\n%s\n"), event.GetString().c_str()); fflush(stdout);

    int ret = wxMessageBox(event.GetString(), wxT("wxLua Runtime Error"), wxOK|wxCANCEL|wxICON_ERROR);
    if (ret == wxCANCEL)
        wxExit();
}

void wxLuaModuleApp::MacOpenFiles(const wxArrayString& fileNames)
{
    wxLuaState m_wxlState = s_wxlState;
    if (m_wxlState.Ok() && m_wxlState.HasDerivedMethod(this, "MacOpenFiles", true)) {
        int nOldTop = m_wxlState.lua_GetTop();
        m_wxlState.PushwxArrayStringTable(fileNames);

        m_wxlState.LuaPCall(1, 0);
        m_wxlState.lua_SetTop(nOldTop-1);
        m_wxlState.SetCallBaseClassFunction(false); // clear flag always
    }
    else if (!IsMainLoopRunning()) {
        // store any files passed when the Lua handler may not yet be set up;
        // it will be called one more time when the MainLoop starts
        macOpenFiles.Clear();
        macOpenFiles = wxArrayString(fileNames);
    }
}

// ----------------------------------------------------------------------------
// luaopen_wx the C function for require to call
// ----------------------------------------------------------------------------

wxLuaModuleApp* app = NULL;

static int reportShutdown(lua_State *L)
{
    s_wxlState.CloseLuaState(true, false);
    return 0;
}

int luaopen_wx(lua_State *L)
{
    int argc = 0;
    wxChar **argv = NULL;

#ifdef __WXMSW__
    // Set the HINSTANCE to *this* DLL's instance, not the caller app's HINSTANCE.
    wxSetInstance(wxLuaModule);
#endif // __WXMSW__

    if (!wxEntryStart(argc, argv)) {
        wxPrintf(wxT("wxLuaModule - Error calling wxEntryStart(argc, argv), aborting.\n"));
        return 0;
    }

    if (!wxTheApp || !wxTheApp->CallOnInit()) {
        wxPrintf(wxT("wxLuaModule - Error calling wxTheApp->CallOnInit(), aborting.\n"));
        return 0;
    }

    wxTheApp->SetExitOnFrameDelete(true);
    wxInitAllImageHandlers();

    WXLUA_IMPLEMENT_BIND_ALL
    s_wxlState.Create(L, wxLUASTATE_SETSTATE|wxLUASTATE_OPENBINDINGS|wxLUASTATE_STATICSTATE);
    // Since we are run from a console we will let Lua do the printing.
    // We don't have to worry about the message not showing up in MSW as they don't for GUI apps with a WinMain().
    s_wxlState.SetEventHandler((wxEvtHandler*)wxTheApp);

    lua_getglobal(L, "wx"); // push global wx table on the stack

    if (lua_getmetatable(L, -1) != 0) {
        wxPrintf(wxT("wxLuaModule - Error setting up metatable for module wx, aborting.\n"));
        return 0;
    }
    else {
        lua_newtable(L); // new metatable for wx table
        lua_pushstring(L, "__gc");
        lua_pushcfunction(L, reportShutdown);
        lua_rawset(L, -3); // set metatable.__gc = reportShutdown
        lua_setmetatable(L, -2); // sets metatable for wx table
    }
    return 1; // returns global wx
}
