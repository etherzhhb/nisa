//===- NisaTypes.td - Nisa dialect types -------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef NISA_TYPES
#define NISA_TYPES

include "mlir/IR/AttrTypeBase.td"
include "nisa/NisaDialect.td"

//===----------------------------------------------------------------------===//
// Nisa type definitions
//===----------------------------------------------------------------------===//

class Nisa_Type<string name, string typeMnemonic, list<Trait> traits = []>
    : TypeDef<Nisa_Dialect, name, traits> {
  let mnemonic = typeMnemonic;
}

def Nisa_CustomType : Nisa_Type<"Custom", "custom"> {
    let summary = "Nisa custom type";
    let description = "Custom type in nisa dialect";
    let parameters = (ins StringRefParameter<"the custom value">:$value);
    let assemblyFormat = "`<` $value `>`";
}

#endif // NISA_TYPES
