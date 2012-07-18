/////////////////////////////////////////////////////////////////////////////
// Name:        _stc_docstrings.i
// Purpose:     Docstrings for the wxStyledTextCtrl.  The ones in this file
//              are maintained by hand for those methods that are not
//              auto-generated by gen_iface.py
//
// Author:      Robin Dunn
//
// Created:     16-April-2005
// RCS-ID:      $Id: _stc_docstrings.i 33977 2005-05-07 07:20:51Z RD $
// Copyright:   (c) 2005 by Total Control Software
// Licence:     wxWindows license
/////////////////////////////////////////////////////////////////////////////


// First include the autogenerated docstrings so if any of them need
// tweaked they can be overridden below
%include _stc_gendocs.i


// TODO:  Class docstring
DocStr(wxStyledTextCtrl,
"", "");

// TODO:  Main constructor
DocStr(wxStyledTextCtrl::wxStyledTextCtrl,
"", "");

// TODO:  "Pre" constructor
DocStr(wxStyledTextCtrl::wxStyledTextCtrl(),
"", "");



DocStr(wxStyledTextCtrl::GetCurrentLine,
"Returns the line number of the line with the caret.", "");

DocStr(wxStyledTextCtrl::StyleSetSpec,
"Extract style settings from a spec-string which is composed of one or
more of the following comma separated elements::

     bold                    turns on bold
     italic                  turns on italics
     fore:[name or #RRGGBB]  sets the foreground colour
     back:[name or #RRGGBB]  sets the background colour
     face:[facename]         sets the font face name to use
     size:[num]              sets the font size in points
     eol                     turns on eol filling
     underline               turns on underlining
", "");

DocStr(wxStyledTextCtrl::StyleSetFont,
"Set style size, face, bold, italic, and underline attributes from the
attributes of a `wx.Font`.", "");

DocStr(wxStyledTextCtrl::StyleSetFontAttr,
"Set all font style attributes at once.", "");

DocStr(wxStyledTextCtrl::StyleSetCharacterSet,
       "Set the character set of the font in a style.  Converts the Scintilla
wx.stc.STC_CHARSET_* set values to a wxFontEncoding.", "");

DocStr(wxStyledTextCtrl::StyleSetFontEncoding,
       "Set the font encoding to be used by a style.", "");

DocStr(wxStyledTextCtrl::CmdKeyExecute,
"Perform one of the operations defined by the wx.stc.STC_CMD_* constants.", "");

DocStr(wxStyledTextCtrl::SetMargins,
"Set the left and right margin in the edit area, measured in pixels.", "");

DocAStr(wxStyledTextCtrl::GetSelection,
"GetSelection(self) -> (startPos, endPos)",        
"Retrieve the start and end positions of the current selection.", "");

DocStr(wxStyledTextCtrl::PointFromPosition,
"Retrieve the point in the window where a position is displayed.", "");

DocStr(wxStyledTextCtrl::ScrollToLine,
"Scroll enough to make the given line visible.", "");

DocStr(wxStyledTextCtrl::ScrollToColumn,
"Scroll enough to make the given column visible", "");

DocStr(wxStyledTextCtrl::SendMsg,
"Send a message to Scintilla.", "");

DocStr(wxStyledTextCtrl::SetVScrollBar,
"Set the vertical scrollbar to use instead of the one that's built-in.", "");

DocStr(wxStyledTextCtrl::SetHScrollBar,
"Set the horizontal scrollbar to use instead of the ont that's built-in.", "");

DocStr(wxStyledTextCtrl::SaveFile,
"Write the contents of the editor to filename", "");

DocStr(wxStyledTextCtrl::LoadFile,
"Load the contents of filename into the editor", "");

DocStr(wxStyledTextCtrl::DoDragOver,
"Allow for simulating a DnD DragOver.", "");

DocStr(wxStyledTextCtrl::DoDropText,
"Allow for simulating a DnD DropText.", "");

DocStr(wxStyledTextCtrl::SetUseAntiAliasing,
"Specify whether anti-aliased fonts should be used.  Will have no
effect on some platforms, but on some (wxMac for example) can greatly
improve performance.", "");

DocStr(wxStyledTextCtrl::GetUseAntiAliasing,
"Returns the current UseAntiAliasing setting.", "");



DocStr(wxStyledTextCtrl::AddTextRaw,
"Add text to the document at current position.  The text should be
utf-8 encoded on unicode builds of wxPython, or can be any 8-bit text
in ansi builds.", "");

DocStr(wxStyledTextCtrl::InsertTextRaw,
"Insert string at a position.  The text should be utf-8 encoded on
unicode builds of wxPython, or can be any 8-bit text in ansi builds.", "");

DocAStr(wxStyledTextCtrl::GetCurLineRaw,
        "GetCurLineRaw() -> (text, index)",
"Retrieve the text of the line containing the caret, and also the index
of the caret on the line.  The returned value is a utf-8 encoded
string in unicode builds of wxPython, or raw 8-bit text otherwise.", "");

DocStr(wxStyledTextCtrl::GetLineRaw,
"Retrieve the contents of a line.  The returned value is a utf-8
encoded string in unicode builds of wxPython, or raw 8-bit text
otherwise.", "");

DocStr(wxStyledTextCtrl::GetSelectedTextRaw,
"Retrieve the selected text.  The returned value is a utf-8 encoded
string in unicode builds of wxPython, or raw 8-bit text otherwise.", "");

DocStr(wxStyledTextCtrl::GetTextRangeRaw,
"Retrieve a range of text.    The returned value is a utf-8 encoded
string in unicode builds of wxPython, or raw 8-bit text otherwise.", "");

DocStr(wxStyledTextCtrl::SetTextRaw,
"Replace the contents of the document with the argument text.  The text
should be utf-8 encoded on unicode builds of wxPython, or can be any
8-bit text in ansi builds.", "");

DocStr(wxStyledTextCtrl::GetTextRaw,
"Retrieve all the text in the document.  The returned value is a utf-8
encoded string in unicode builds of wxPython, or raw 8-bit text
otherwise.", "");

DocStr(wxStyledTextCtrl::AppendTextRaw,
"Append a string to the end of the document without changing the
selection.  The text should be utf-8 encoded on unicode builds of
wxPython, or can be any 8-bit text in ansi builds.", "");




// Overrides for some of the generated docstrings

DocAStr(wxStyledTextCtrl::GetCurLine,
        "GetCurLine(self) -> (text, pos)",
"Retrieve the text of the line containing the caret, and also theindex
of the caret on the line.", "");



// For some reason these are not getting the right docstrings, but are
// inheriting the docstrings from wxWindow instead.  So we'll have to
// replace the whole proxy method instead.
%feature("shadow") wxStyledTextCtrl::LineDown
%{
    def LineDown(*args, **kwargs):
        """
        LineDown(self)

        Move caret down one line.
        """
        return _stc.StyledTextCtrl_LineDown(*args, **kwargs)
%}

%feature("shadow") wxStyledTextCtrl::LineUp
%{
    def LineUp(*args, **kwargs):
        """
        LineUp(self)

        Move caret up one line.
        """
        return _stc.StyledTextCtrl_LineUp(*args, **kwargs)
%}

%feature("shadow") wxStyledTextCtrl::PageDown
%{
    def PageDown(*args, **kwargs):
        """
        PageDown(self)

        Move caret one page down.
        """
        return _stc.StyledTextCtrl_PageDown(*args, **kwargs)
%}

%feature("shadow") wxStyledTextCtrl::PageUp
%{
    def PageUp(*args, **kwargs):
        """
        PageUp(self)

        Move caret one page up.
        """
        return _stc.StyledTextCtrl_PageUp(*args, **kwargs)
%}    


