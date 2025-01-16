#!/bin/bash

# 检查参数个数
if [ $# -ne 2 ]; then
  echo "用法: $0 <文件名> <删除的关键字>"
  exit 1
fi

# 获取文件名
filename=$1

# 检查文件是否存在
if [ ! -f "$filename" ]; then
  echo "文件 $filename 不存在"
  exit 1
fi

# 使用 awk 命令删除包含关键字 'rvv_cpu' 的行
awk "!/${2}/" "$filename" > temp_file && mv temp_file "$filename"

echo "处理完成，已删除包含 ${2} 的行"
