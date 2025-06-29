//===- NisaTypes.td - Nisa dialect types -------*- tablegen -*-===//

include "mlir/IR/AttrTypeBase.td"
include "nisa/IR/Nisa.td"

// Base type def for the dialect
class Nisa_Type<string name, string typeMnemonic, list<Trait> traits = []>
    : TypeDef<Nisa_Dialect, name, traits> {
  let mnemonic = typeMnemonic;
}


// Your custom memref-like type
def MemLocType : Nisa_Type<"MemLoc", "memloc"> {
  let summary = "Nisa buffer reference type with address space";
  let description = [{
    Similar to MLIR MemRefType: has shape, element type,
    and a fixed set of address spaces.
  }];

  // Constructor parameters: shape list, element type, layout, and addressSpace
  let parameters = (
    ins
      ArrayRefParameter<"int64_t">:$shape,
      "Type":$elementType,
      EnumParameter<MemSpaceKind>:$memspace
  );

  // Assembly printer: use the mnemonic followed by <shape x elementType, addrSpace>
  let assemblyFormat = [{
    `<` $memspace $elementType $shape `>`
  }];
}