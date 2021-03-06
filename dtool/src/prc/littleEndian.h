// Filename: littleEndian.h
// Created by:  drose (09Feb00)
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

#ifndef LITTLEENDIAN_H
#define LITTLEENDIAN_H

#include "dtoolbase.h"

#include "numeric_types.h"
#include "nativeNumericData.h"
#include "reversedNumericData.h"

////////////////////////////////////////////////////////////////////
//       Class : LittleEndian
// Description : LittleEndian is a special class that automatically
//               reverses the byte-order of numeric values for
//               big-endian machines, and passes them through
//               unchanged for little-endian machines.
////////////////////////////////////////////////////////////////////

#ifdef WORDS_BIGENDIAN
typedef ReversedNumericData LittleEndian;
#else
typedef NativeNumericData LittleEndian;
#endif

#endif
