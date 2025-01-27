#!/bin/python3

import struct
import argparse

def endian_conversion(data: str):
    byte_data = bytes.fromhex(data)
    byte_data = byte_data[::-1]
    return byte_data.hex()

def merge_lines(input_lines, merge_count=2):
    merged_lines = []
    for i in range(0, len(input_lines), merge_count):
        merged_line = ''.join(input_lines[i:i+merge_count])
        merged_lines.append(merged_line)
    return merged_lines

# 主程序：处理文件
def process_file(input_file, output_file, merge_count=2):
    with open(input_file, 'r') as infile:
        lines = infile.read().splitlines()

    # 合并行
    merged_lines = merge_lines(lines, merge_count)

    # 对每一行进行大小端转换并写入输出文件
    with open(output_file, 'w') as outfile:
        for line in merged_lines:
            converted_line = endian_conversion(line)
            outfile.write(converted_line + '\n')

# 主函数：从命令行读取参数
def main():
    parser = argparse.ArgumentParser(description='文件处理工具：大小端转换与合并行')
    parser.add_argument('--input_file', type=str, help='输入文件路径')
    parser.add_argument('--output_file', type=str, help='输出文件路径')
    parser.add_argument('--merge_count', type=int, default=2, help='指定合并的行数（默认：2）')

    args = parser.parse_args()

    process_file(args.input_file, args.output_file,  merge_count=args.merge_count)

# 执行主函数
if __name__ == '__main__':
    main()

