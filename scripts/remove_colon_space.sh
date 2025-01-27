#!/bin/bash

# 检查是否提供输入文件
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

input_file=$1

# 检查文件是否存在
if [ ! -f "$input_file" ]; then
  echo "Error: File $input_file not found."
  exit 1
fi

# 处理文件，删除冒号和空格
sed 's/[: ",]//g' "$input_file" > "${input_file}_modified"

echo "Processed file saved as ${input_file}_modified"

