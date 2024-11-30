# wxLua

What is wxLua ?

wxLua is a Lua scripting language wrapper around the wxWidgets cross-platform C++ GUI library. 
It contains an IDE type editors that can edit, debug, and run Lua programs, an executable for running standalone wxLua scripts, a Lua module that may be loaded using require("wx") when using the standard Lua executable, and a library for extending C++ programs with a fast, small, fully embeddable scripting language.

Lua is a small scripting language written in ANSI C that can load and run interpreted scripts as either files or strings. The Lua language is fast, dynamic, and easy to learn. Lua contains a limited number of data types, mainly numbers, booleans, strings, functions, tables, and userdata. Perhaps the most powerful feature of the Lua language is that tables can be used as either numerically indexed arrays or associative arrays that can cross-reference any variable type to any other variable type.

wxLua adds to this small and elegant language nearly all of the functionality of the C++ wxWidgets cross-platform GUI library. This includes the ability to create complex user interface dialogs, file and image manipulation, drawing, network sockets, displaying HTML, and printing to name a few. You can use as much or as little of wxWidgets as you like and C++ developers can trim down the size of the bindings by turning off preprocessor directives.

This version is a batteries-included version containing wxLua, wxWidgets, etc.

The simple wxLua script below creates a wxFrame top-level window, with a menubar, and a statusbar. More examples of wxLua programs can be found in the samples directory of the wxLua distribution.

```
  frame = wx.wxFrame(wx.NULL, wx.wxID_ANY, "wxLua Minimal Demo",
                   wx.wxDefaultPosition, wx.wxSize(450, 450),
                   wx.wxDEFAULT_FRAME_STYLE)

  -- create a simple file menu
  local fileMenu = wx.wxMenu()
  fileMenu:Append(wx.wxID_EXIT, "E&xit", "Quit the program")
  -- create a simple help menu
  local helpMenu = wx.wxMenu()
  helpMenu:Append(wx.wxID_ABOUT, "&About",
                "About the wxLua Minimal Application")

  -- create a menu bar and append the file and help menus
  local menuBar = wx.wxMenuBar()
  menuBar:Append(fileMenu, "&File")
  menuBar:Append(helpMenu, "&Help")
  -- attach the menu bar into the frame
  frame:SetMenuBar(menuBar)

  -- create a simple status bar
  frame:CreateStatusBar(1)
  frame:SetStatusText("Welcome to wxLua.")

  -- connect the selection event of the exit menu item to an
  -- event handler that closes the window
  frame:Connect(wx.wxID_EXIT, wx.wxEVT_COMMAND_MENU_SELECTED,
              function (event) frame:Close(true) end )
  -- connect the selection event of the about menu item
  frame:Connect(wx.wxID_ABOUT, wx.wxEVT_COMMAND_MENU_SELECTED,
        function (event)
            wx.wxMessageBox('This is the "About" dialog of the Minimal wxLua sample.',
                            "About wxLua",
                            wx.wxOK + wx.wxICON_INFORMATION,
                            frame)
        end )

  -- finally, show the frame window
  frame:Show(true)
```
