#!/bin/bash

# 用法 xgdb.sh a 
prog_bin=$1
running_name=$(basename ${prog_bin})
pid=$(pidof ${running_name})
echo "running_name: ${running_name}"
echo "pid: ${pid}"

gdb attach $pid

echo "${running_name} pid: ${pid}"
