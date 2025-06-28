add_mlir_dialect_library(MLIRNisaIR
        NisaDialect.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Nisa

        DEPENDS
        NisaOpsIncGen
        NisaEnumsIncGen
        NisaAttributesIncGen
        NisaTypesIncGen

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRInferTypeOpInterface
        MLIRFuncDialect
        )
