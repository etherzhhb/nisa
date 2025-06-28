//===- NisaDialect.h - Nisa dialect -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef NISA_NISADIALECT_H
#define NISA_NISADIALECT_H

#include "mlir/Bytecode/BytecodeOpInterface.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#include "nisa/IR/NisaEnums.h.inc"

#define GET_ATTRDEF_CLASSES
#include "nisa/IR/NisaAttrDefs.h.inc"

#define GET_TYPEDEF_CLASSES
#include "nisa/IR/NisaTypeDefs.h.inc"

#include "nisa/IR/NisaDialect.h.inc"

#define GET_OP_CLASSES
#include "nisa/IR/NisaOps.h.inc"

#endif // NISA_NISADIALECT_H
