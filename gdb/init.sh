#!/bin/bash -f

git clone git@github.com:cyrus-and/gdb-dashboard.git
mkdir -p ~/.config/gdb
cp gdb-dashboard/.gdbinit ~/.config/gdb/gdbinit

mkdir -p ~/.gdbinit.d
cp init ~/.gdbinit.d
