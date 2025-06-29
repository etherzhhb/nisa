//===- NisaOps.td - Nisa dialect ops -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef NISA_OPS
#define NISA_OPS

include "nisa/IR/Nisa.td"
include "nisa/IR/NisaTypes.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def DmaCopy : Nisa_Op<"dma_copy", [AttrSizedOperandSegments]> {
  let summary = "Copy data from `src` to `dst` using DMA engine.";
  let description = [{
      Copy data from `src` to `dst` using DMA engine.
      Both `src` and `dst` tiles can be in device memory (HBM) or SBUF.
      However, if both src and dst tiles are in SBUF,
      consider using nisa.tensor_copy instead for better performance.
  }];


  let arguments = (ins Arg<MemLocType, "the memloc to copy from",
                           [MemReadAt<0, FullEffect>]>:$src_memloc,
                       Variadic<Index>:$src_indices,
                       AffineMapAttr:$src_ap,

                       Arg<MemLocType, "the memloc to copy to",
                           [MemWriteAt<0, FullEffect>]>:$dst_memloc,
                       Variadic<Index>:$dst_indices,
                       AffineMapAttr:$dst_ap
                  );

  let assemblyFormat = [{
    $src_memloc `[` $src_indices `]` `,` $dst_memloc `[` $dst_indices `]` attr-dict `:` type($src_memloc) `to` type($dst_memloc)
  }];
}


#endif // NISA_OPS
