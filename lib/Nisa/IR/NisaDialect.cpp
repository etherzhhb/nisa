//===- NisaDialect.cpp - Nisa dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "nisa/IR/NisaDialect.h"

#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Diagnostics.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/TypeUtilities.h"
#include "mlir/IR/Verifier.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/TypeSwitch.h"

using namespace mlir;
using namespace mlir::nisa;

#include "nisa/IR/NisaOpsDialect.cpp.inc"

//===----------------------------------------------------------------------===//
// Nisa dialect.
//===----------------------------------------------------------------------===//

void NisaDialect::initialize() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "nisa/IR/NisaTypeDefs.cpp.inc"
      >();
  addAttributes<
#define GET_ATTRDEF_LIST
#include "nisa/IR/NisaAttrDefs.cpp.inc"
      >();
  addOperations<
#define GET_OP_LIST
#include "nisa/IR/NisaOps.cpp.inc"
      >();
}

//===----------------------------------------------------------------------===//
// TableGen'd dialect, type, and op definitions
//===----------------------------------------------------------------------===//

#define GET_ATTRDEF_CLASSES
#include "nisa/IR/NisaAttrDefs.cpp.inc"

#include "nisa/IR/NisaEnums.cpp.inc"

#define GET_OP_CLASSES
#include "nisa/IR/NisaOps.cpp.inc"

#define GET_TYPEDEF_CLASSES
#include "nisa/IR/NisaTypeDefs.cpp.inc"
