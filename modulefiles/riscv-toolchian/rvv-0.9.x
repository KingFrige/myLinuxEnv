#%Module -*- tcl -*-

conflict        riscv_toolchain/freedomstudio-version
conflict        riscv_toolchain/compile-version
conflict        riscv_toolchain/sifive-toolchain

set             tool_home        /opt/riscv/rvv-0.9.x
setenv          RISCV            $tool_home
setenv          RISCV_PATH       $tool_home

prepend-path    PATH             $tool_home/bin
prepend-path    LIBRARY_PATH     $tool_home/lib
prepend-path    LD_LIBRARY_PATH  $tool_home/lib
prepend-path    LD_INCLUDE_PATH  $tool_home/include
prepend-path    MANPATH          $tool_home/share/man
