@echo off
rem Google AI Pro 5TB 一键开通 —— Windows 双击这个文件就能用
rem 做两件事：进到脚本所在目录，运行向导 wizard.py。

chcp 65001 >nul
cd /d "%~dp0"

py -3 --version >nul 2>nul
if %errorlevel%==0 (
  py -3 wizard.py
) else (
  python --version >nul 2>nul
  if %errorlevel%==0 (
    python wizard.py
  ) else (
    echo [X] 没找到 Python。先装 Python 3.9 以上：https://www.python.org/downloads/
    echo     安装时请勾选 "Add python.exe to PATH"。
  )
)

echo.
echo （向导已结束，按任意键关闭窗口）
pause >nul
