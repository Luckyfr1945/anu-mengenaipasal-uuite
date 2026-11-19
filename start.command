#!/bin/bash
# Google AI Pro 5TB 一键开通 —— Mac 双击这个文件就能用
# 做两件事：进到脚本所在目录，运行向导 wizard.py。

cd "$(dirname "$0")" || exit 1

if ! command -v python3 >/dev/null 2>&1; then
  echo "❌ 没找到 python3。先装 Python 3.9 以上：https://www.python.org/downloads/"
  echo "按回车关闭。"
  read -r _
  exit 1
fi

python3 wizard.py
code=$?

echo
echo "（向导已结束，按回车关闭这个窗口）"
read -r _
exit $code
