// Filename: p3dInstance.h
// Created by:  drose (29May09)
//
////////////////////////////////////////////////////////////////////
//
// PANDA 3D SOFTWARE
// Copyright (c) Carnegie Mellon University.  All rights reserved.
//
// All use of this software is subject to the terms of the revised BSD
// license.  You should have received a copy of this license along
// with this source code in a file named "LICENSE."
//
////////////////////////////////////////////////////////////////////

#ifndef P3DINSTANCE_H
#define P3DINSTANCE_H

#include "p3d_plugin_common.h"

#include <vector>
#include <deque>
#include <tinyxml.h>

class P3DSession;

////////////////////////////////////////////////////////////////////
//       Class : P3DInstance
// Description : This is an instance of a Panda3D window, as seen in
//               the parent-level process.
////////////////////////////////////////////////////////////////////
class P3DInstance : public P3D_instance {
public:
  P3DInstance(P3D_request_ready_func *func,
              const string &p3d_filename, 
              P3D_window_type window_type,
              int win_x, int win_y,
              int win_width, int win_height,
              P3D_window_handle parent_window,
              const P3D_token *tokens[], size_t tokens_size);
  ~P3DInstance();

  bool has_property(const string &property_name) const;
  string get_property(const string &property_name) const;
  void set_property(const string &property_name, const string &value);

  bool has_request();
  P3D_request *get_request();
  void add_request(P3D_request *request);
  void finish_request(P3D_request *request, bool handled);

  void feed_url_stream(int unique_id,
                       P3D_result_code result_code,
                       int http_status_code, 
                       size_t total_expected_data,
                       const unsigned char *this_data, 
                       size_t this_data_size);

  inline const string &get_p3d_filename() const;
  inline const string &get_session_key() const;
  inline const string &get_python_version() const;

  TiXmlElement *make_xml();

private:
  void fill_tokens(const P3D_token *tokens[], size_t tokens_size);

  class Token {
  public:
    string _keyword;
    string _value;
  };
  typedef vector<Token> Tokens;

  P3D_request_ready_func *_func;
  string _p3d_filename;
  P3D_window_type _window_type;
  int _win_x, _win_y;
  int _win_width, _win_height;
  P3D_window_handle _parent_window;
  Tokens _tokens;

  string _session_key;
  string _python_version;
  P3DSession *_session;

  LOCK _request_lock;
  typedef deque<P3D_request *> Requests;
  Requests _pending_requests;

  friend class P3DSession;
};

#include "p3dInstance.I"

#endif