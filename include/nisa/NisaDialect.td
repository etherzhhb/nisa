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

//===----------------------------------------------------------------------===//
// Nisa dialect definition.
//===----------------------------------------------------------------------===//

def Nisa_Dialect : Dialect {
    let name = "nisa";
    let summary = "A nisa out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::nisa";

    let useDefaultTypePrinterParser = 1;
    let extraClassDeclaration = [{
        void registerTypes();
    }];
}

//===----------------------------------------------------------------------===//
// Base nisa operation definition.
//===----------------------------------------------------------------------===//

class Nisa_Op<string mnemonic, list<Trait> traits = []> :
        Op<Nisa_Dialect, mnemonic, traits>;

#endif // NISA_DIALECT
