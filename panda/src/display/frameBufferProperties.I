// Filename: frameBufferProperties.I
// Created by:  drose (27Jan03)
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


////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::Copy Constructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE FrameBufferProperties::
FrameBufferProperties(const FrameBufferProperties &copy) {
  (*this) = copy;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::Destructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE FrameBufferProperties::
~FrameBufferProperties() {
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::operator !=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
operator != (const FrameBufferProperties &other) const {
  return !operator == (other);
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::is_single_buffered
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
is_single_buffered() const {
  return (_property[FBP_back_buffers] == 0);
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::is_stereo
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
is_stereo() const {
  return (_flags & FBF_stereo) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::operator <<
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE ostream &
operator << (ostream &out, const FrameBufferProperties &properties) {
  properties.output(out);
  return out;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_depth_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_depth_bits() const {
  return _property[FBP_depth_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_color_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_color_bits() const {
  return max(_property[FBP_color_bits],
             _property[FBP_red_bits] +
             _property[FBP_green_bits] +
             _property[FBP_blue_bits]);
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_red_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_red_bits() const {
  return _property[FBP_red_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_green_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_green_bits() const {
  return _property[FBP_green_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_blue_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_blue_bits() const {
  return _property[FBP_blue_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_alpha_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_alpha_bits() const {
  return _property[FBP_alpha_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_stencil_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_stencil_bits() const {
  return _property[FBP_stencil_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_accum_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_accum_bits() const {
  return _property[FBP_accum_bits];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_aux_rgba
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_aux_rgba() const {
  return _property[FBP_aux_rgba];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_aux_hrgba
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_aux_hrgba() const {
  return _property[FBP_aux_hrgba];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_aux_float
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_aux_float() const {
  return _property[FBP_aux_float];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_multisamples
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_multisamples() const {
  return _property[FBP_multisamples];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_coverage_samples
//       Access: Published
//  Description: If coverage samples are specified, and there is
//               hardware support, we use coverage multisampling.
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_coverage_samples() const {
  return _property[FBP_coverage_samples];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_back_buffers
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE int FrameBufferProperties::
get_back_buffers() const {
  return _property[FBP_back_buffers];
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_indexed_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_indexed_color() const {
  return (_flags & FBF_indexed_color) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_rgb_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_rgb_color() const {
  return (_flags & FBF_rgb_color) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_stereo
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_stereo() const {
  return (_flags & FBF_stereo) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_force_hardware
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_force_hardware() const {
  return (_flags & FBF_force_hardware) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_force_software
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_force_software() const {
  return (_flags & FBF_force_software) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_srgb_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_srgb_color() const {
  return (_flags & FBF_srgb_color) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_float_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_float_color() const {
  return (_flags & FBF_float_color) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::get_float_depth
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE bool FrameBufferProperties::
get_float_depth() const {
  return (_flags & FBF_float_depth) != 0;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_depth_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_depth_bits(int n) {
  _property[FBP_depth_bits] = n;
  _specified[FBP_depth_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_color_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_color_bits(int n) {
  _property[FBP_color_bits] = n;
  _specified[FBP_color_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_rgba_bits
//       Access: Published
//  Description: Sets all color bit requirements separately.
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_rgba_bits(int r, int g, int b, int a) {
  _property[FBP_red_bits] = r;
  _specified[FBP_red_bits] = true;
  _property[FBP_green_bits] = g;
  _specified[FBP_green_bits] = true;
  _property[FBP_blue_bits] = b;
  _specified[FBP_blue_bits] = true;
  _property[FBP_alpha_bits] = a;
  _specified[FBP_alpha_bits] = true;
  _property[FBP_color_bits] = r + g + b;
  _specified[FBP_color_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_red_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_red_bits(int n) {
  _property[FBP_red_bits] = n;
  _specified[FBP_red_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_green_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_green_bits(int n) {
  _property[FBP_green_bits] = n;
  _specified[FBP_green_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_blue_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_blue_bits(int n) {
  _property[FBP_blue_bits] = n;
  _specified[FBP_blue_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_alpha_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_alpha_bits(int n) {
  _property[FBP_alpha_bits] = n;
  _specified[FBP_alpha_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_stencil_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_stencil_bits(int n) {
  _property[FBP_stencil_bits] = n;
  _specified[FBP_stencil_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_accum_bits
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_accum_bits(int n) {
  _property[FBP_accum_bits] = n;
  _specified[FBP_accum_bits] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_aux_rgba
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_aux_rgba(int n) {
  nassertv(n < 4);
  _property[FBP_aux_rgba] = n;
  _specified[FBP_aux_rgba] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_aux_hrgba
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_aux_hrgba(int n) {
  nassertv(n < 4);
  _property[FBP_aux_hrgba] = n;
  _specified[FBP_aux_hrgba] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_aux_float
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_aux_float(int n) {
  nassertv(n < 4);
  _property[FBP_aux_float] = n;
  _specified[FBP_aux_float] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_multisamples
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_multisamples(int n) {
  _property[FBP_multisamples] = n;
  _specified[FBP_multisamples] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_coverage_samples
//       Access: Published
//  Description: If coverage samples are specified, and there is
//               hardware support, we use coverage multisampling
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_coverage_samples(int n) {
  _property[FBP_coverage_samples] = n;
  _specified[FBP_coverage_samples] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_back_buffers
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_back_buffers(int n) {
  _property[FBP_back_buffers] = n;
  _specified[FBP_back_buffers] = true;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_indexed_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_indexed_color(bool n) {
  if (n) {
    _flags |= FBF_indexed_color;
  } else {
    _flags &= ~FBF_indexed_color;
  }
  _flags_specified |= FBF_indexed_color;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_rgb_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_rgb_color(bool n) {
  if (n) {
    _flags |= FBF_rgb_color;
  } else {
    _flags &= ~FBF_rgb_color;
  }
  _flags_specified |= FBF_rgb_color;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_stereo
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_stereo(bool n) {
  if (n) {
    _flags |= FBF_stereo;
  } else {
    _flags &= ~FBF_stereo;
  }
  _flags_specified |= FBF_stereo;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_force_hardware
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_force_hardware(bool n) {
  if (n) {
    _flags |= FBF_force_hardware;
  } else {
    _flags &= ~FBF_force_hardware;
  }
  _flags_specified |= FBF_force_hardware;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_force_software
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_force_software(bool n) {
  if (n) {
    _flags |= FBF_force_software;
  } else {
    _flags &= ~FBF_force_software;
  }
  _flags_specified |= FBF_force_software;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_srgb_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_srgb_color(bool n) {
  if (n) {
    _flags |= FBF_srgb_color;
  } else {
    _flags &= ~FBF_srgb_color;
  }
  _flags_specified |= FBF_srgb_color;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_float_color
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_float_color(bool n) {
  if (n) {
    _flags |= FBF_float_color;
  } else {
    _flags &= ~FBF_float_color;
  }
  _flags_specified |= FBF_float_color;
}

////////////////////////////////////////////////////////////////////
//     Function: FrameBufferProperties::set_float_depth
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE void FrameBufferProperties::
set_float_depth(bool n) {
  if (n) {
    _flags |= FBF_float_depth;
  } else {
    _flags &= ~FBF_float_depth;
  }
  _flags_specified |= FBF_float_depth;
}
