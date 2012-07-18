/////////////////////////////////////////////////////////////////////////////
// Name:        wxole.h
// Purpose:     wxOLE
// Author:      Robert Roebling
// Modified by:
// Created:     17/8/98
// RCS-ID:      $Id: wxole.h 41020 2006-09-05 20:47:48Z VZ $
// Copyright:   (c) Robert Roebling
// Licence:   	wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_OLE_H_
#define _WX_OLE_H_

#include "wx/defs.h"
#include "wx/object.h"
#include "wx/frame.h"
#include "wx/stream.h"

//-----------------------------------------------------------------------------
// global data
//-----------------------------------------------------------------------------

extern const wxChar *wxOleNameStr;

//---------------------------------------------------------------------------
// classes
//---------------------------------------------------------------------------

class wxOleServerEnv;
class wxOleServer;
class wxOleControl;

//---------------------------------------------------------------------------
// wxOleServerEnv
//---------------------------------------------------------------------------

class wxOleServerEnvPrivate;

class wxOleServerEnv : public wxObject
{
  DECLARE_CLASS(wxOleServerEnv)
   
public:
  
  wxOleServerEnv( const wxString &name, const wxString &version );
  virtual ~wxOleServerEnv();

private:

  wxString                 m_serverName;
  wxString                 m_serverVersion;
  
protected:
  wxOleServerEnvPrivate   *m_priv;      
};

//---------------------------------------------------------------------------
// wxOleServer
//---------------------------------------------------------------------------

class wxOleServerPrivate;

class wxOleServer : public wxObject
{
  DECLARE_CLASS(wxOleServer)
   
public:
  
  wxOleServer( const wxString &id );
  virtual ~wxOleServer();
  
  virtual wxOleControl *CreateOleControl();
  
private:

  wxString                 m_ID;
  
protected:
  wxOleServerPrivate      *m_priv;
};

//---------------------------------------------------------------------------
// wxOleControl
//---------------------------------------------------------------------------

class wxOleControl : public wxFrame
{
  DECLARE_CLASS(wxOleControl)
  
public:
  
    wxOleControl( wxWindowID id, long style = 0, const wxString &name = wxOleNameStr );
    virtual ~wxOleControl();
    bool Create( wxWindowID id, long style = 0, const wxString &name = wxOleNameStr );

protected:
    virtual void DoSetSize(int x, int y,
                           int width, int height,
                           int sizeFlags = wxSIZE_AUTO);

    virtual void DoSetClientSize(int width, int height);
};

#endif
