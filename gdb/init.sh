#!/bin/bash -f

if [ ! -d "gdb-dashboard" ]; then
  git clone git@github.com:cyrus-and/gdb-dashboard.git
fi
mkdir -p ~/.config/gdb
git -C gdb-dashboard pull origin master
cp gdb-dashboard/.gdbinit ~/.config/gdb/gdbinit

mkdir -p ~/.gdbinit.d
cp init ~/.gdbinit.d
