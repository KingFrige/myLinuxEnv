export CC=/home/stc/tools/gcc/gcc-8.2.0/bin/gcc
export CXX=/home/stc/tools/gcc/gcc-8.2.0/bin/g++

module load gcc/gcc-8.2.0

./configure --prefix=/home/stc/tools/riscv/llvm --enable-multilib
make -j`nproc`
make linux -j`nproc`

make -j`nproc` build-qemu
