#%Module -*- tcl -*-

conflict        llvm/v10.x
conflict        llvm/mgpusim

set             tool_home        /home/korben/tools/llvm/v16.x

setenv          LLVM_HOME        $tool_home/bin

prepend-path    PATH             $tool_home/bin
prepend-path    LIBRARY_PATH     $tool_home/lib
prepend-path    LD_LIBRARY_PATH  $tool_home/lib
prepend-path    LD_INCLUDE_PATH  $tool_home/include
prepend-path    MANPATH          $tool_home/share/man
