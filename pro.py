#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Google AI Pro 5TB —— 0 元试用一键开通

和 ultra0.py 是同一套注入流程，只换了商品 ID：
    g1.2tb.ai.subs_variant  12months-eft   12 个月免费
    g1.play.2tb.ai          eft-3mo         3 个月免费

用法:
    python3 pro.py --check            # 环境自检
    python3 pro.py accounts.txt       # 批量
    python3 pro.py --account "a@b.com:密码:2FA密钥"

其余参数与 ultra0.py 完全一致（--no-add / --no-switch / --serial）。
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import ultra0  # noqa: E402


def main():
    if "--plan" not in sys.argv:
        sys.argv += ["--plan", "pro"]
    ultra0.main()
    return 0


if __name__ == "__main__":
    sys.exit(main())
