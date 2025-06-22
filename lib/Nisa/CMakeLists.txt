add_mlir_dialect_library(MLIRNisa
        NisaTypes.cpp
        NisaDialect.cpp
        NisaOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Nisa

        DEPENDS
        MLIRNisaOpsIncGen

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRInferTypeOpInterface
        MLIRFuncDialect
        )
