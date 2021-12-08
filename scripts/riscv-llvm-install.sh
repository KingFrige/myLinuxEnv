export CC=/home/stc/tools/gcc/gcc-8.2.0/bin/gcc
export CXX=/home/stc/tools/gcc/gcc-8.2.0/bin/g++

module load gcc/gcc-8.2.0

cmake -G Ninja -DCMAKE_BUILD_TYPE="Release" \
  -DLLVM_ENABLE_PROJECTS="clang" \
  -DBUILD_SHARED_LIBS=True -DLLVM_USE_SPLIT_DWARF=True \
  -DCMAKE_INSTALL_PREFIX="/home/stc/tools/riscv/llvm" \
  -DLLVM_OPTIMIZED_TABLEGEN=True -DLLVM_BUILD_TESTS=False \
  -DDEFAULT_SYSROOT="/home/stc/tools/riscv/llvm/riscv64-unknown-elf" \
  -DLLVM_DEFAULT_TARGET_TRIPLE="riscv64-unknown-elf" \
  -DLLVM_TARGETS_TO_BUILD="RISCV" \
  ../llvm

ninja

# ninja install

# if centos
# sudo yum install -y devtoolset-9-gcc devtoolset-9-gcc-c++
