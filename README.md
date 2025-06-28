# An out-of-tree MLIR dialect


```sh
# llvm build like this

cmake -G Ninja ../llvm \
  -DLLVM_ENABLE_PROJECTS="mlir;clang;clang-tools-extra" \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_RTTI=ON \
  -DBUILD_SHARED_LIBS=ON \
  -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
  -DLLVM_INCLUDE_TESTS=ON \
  -DLLVM_INSTALL_UTILS=ON \
  -DPython3_EXECUTABLE=$(which python3) \
  -DLLVM_TARGETS_TO_BUILD=host \
  -DCMAKE_INSTALL_PREFIX=$HOME/llvm-install


# nisa build like this
cmake -G Ninja ..  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_PREFIX_PATH=$HOME/llvm-install
```
Here, `$LLVM_SRC_DIR` needs to point to the root of the monorepo.
