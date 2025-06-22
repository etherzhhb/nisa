//===- NisaDialect.cpp - Nisa dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "nisa/NisaDialect.h"
#include "nisa/NisaOps.h"
#include "nisa/NisaTypes.h"

using namespace mlir;
using namespace mlir::nisa;

#include "nisa/NisaOpsDialect.cpp.inc"

//===----------------------------------------------------------------------===//
// Nisa dialect.
//===----------------------------------------------------------------------===//

void NisaDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "nisa/NisaOps.cpp.inc"
      >();
  registerTypes();
}
