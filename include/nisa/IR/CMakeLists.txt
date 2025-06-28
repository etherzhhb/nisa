add_mlir_dialect(Nisa nisa)
add_mlir_doc(NisaDialect NisaDialect Nisa/ -gen-dialect-doc)
add_mlir_doc(NisaOps NisaOps Nisa/ -gen-op-doc)


set(LLVM_TARGET_DEFINITIONS NisaOps.td)
mlir_tablegen(NisaOps.h.inc -gen-op-decls)
mlir_tablegen(NisaOps.cpp.inc -gen-op-defs)
add_public_tablegen_target(NisaOpsIncGen)

set(LLVM_TARGET_DEFINITIONS Nisa.td)
mlir_tablegen(NisaEnums.h.inc -gen-enum-decls)
mlir_tablegen(NisaEnums.cpp.inc -gen-enum-defs)
add_public_tablegen_target(NisaEnumsIncGen)

set(LLVM_TARGET_DEFINITIONS Nisa.td)
mlir_tablegen(NisaAttrDefs.h.inc -gen-attrdef-decls)
mlir_tablegen(NisaAttrDefs.cpp.inc -gen-attrdef-defs)
add_public_tablegen_target(NisaAttributesIncGen)

set(LLVM_TARGET_DEFINITIONS NisaTypes.td)
mlir_tablegen(NisaTypeDefs.h.inc -gen-typedef-decls)
mlir_tablegen(NisaTypeDefs.cpp.inc -gen-typedef-defs)
add_public_tablegen_target(NisaTypesIncGen)