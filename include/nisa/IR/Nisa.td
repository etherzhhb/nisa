//===- NisaDialect.td - Nisa dialect -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef NISA_DIALECT
#define NISA_DIALECT

include "mlir/IR/OpBase.td"
include "mlir/IR/EnumAttr.td"


//===----------------------------------------------------------------------===//
// Nisa dialect definition.
//===----------------------------------------------------------------------===//

def Nisa_Dialect : Dialect {
    let name = "nisa";
    let summary = "A MLIR dialect for nki.isa.";
    let description = [{
        MLIR dialect to represent the instruction set of AWS Trainium architecture.
    }];
    let cppNamespace = "::mlir::nisa";

    let useDefaultTypePrinterParser = 1;
}


//===----------------------------------------------------------------------===//
// Nisa Attribute Definitions
//===----------------------------------------------------------------------===//

def MemSpacePSum : I32EnumAttrCase<"MEM_PSUM", 0, "psum">;
def MemSpaceSBuf  : I32EnumAttrCase<"MEM_SBUF", 1, "sbuf">;
def MemSpaceHbm  : I32EnumAttrCase<"MEM_HBM", 2, "hbm">;
def MemSpaceKind : I32EnumAttr<"MemSpaceKind", "Memory space",
  [ MemSpacePSum, MemSpaceSBuf, MemSpaceHbm ]> {
  let genSpecializedAttr = 0;
  let cppNamespace = "::mlir::nisa";
}

//===----------------------------------------------------------------------===//
// Base nisa operation definition.
//===----------------------------------------------------------------------===//

class Nisa_Op<string mnemonic, list<Trait> traits = []> :
        Op<Nisa_Dialect, mnemonic, traits>;

#endif // NISA_DIALECT
