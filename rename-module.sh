#!/bin/bash

# 定义旧的前缀和新的前缀
OLD_PREFIX="ruoyi-"
NEW_PREFIX="cdb-"

# 1. 查找以旧前缀命名的文件夹和文件
find . -depth -name "${OLD_PREFIX}*" | while read -r FILE; do
  # 获取新的文件名
  NEW_NAME=$(echo "$FILE" | sed "s/${OLD_PREFIX}/${NEW_PREFIX}/")
  
  # 重命名文件或文件夹
  mv "$FILE" "$NEW_NAME"
  echo "Renamed: $FILE -> $NEW_NAME"
done

echo "All 'ruoyi-' prefixed files and directories have been renamed to 'cdb-'."
