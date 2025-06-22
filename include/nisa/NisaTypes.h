//===- NisaTypes.h - Nisa dialect types -------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef NISA_NISATYPES_H
#define NISA_NISATYPES_H

#include "mlir/IR/BuiltinTypes.h"

#define GET_TYPEDEF_CLASSES
#include "nisa/NisaOpsTypes.h.inc"

#endif // NISA_NISATYPES_H
