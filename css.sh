#!/bin/bash
# 用法: ./font2css.sh 字型檔案
# 範例: ./font2css.sh myfont.woff2   → 產生 myfont_base64_v1.css

set -euo pipefail

if [ $# -ne 1 ]; then
    echo "用法: $0 <字型檔案>"
    exit 1
fi

INFILE="$1"
if [ ! -f "$INFILE" ]; then
    echo "檔案不存在: $INFILE"
    exit 1
fi

# 取得主檔名（不含副檔名）
BASENAME=$(basename "$INFILE")
NAME_NO_EXT="${BASENAME%.*}"

# 若主檔名以 _v1 結尾則移除，成為「原名」
# 例如：myfont_v1 → myfont；若無 _v1 則保留原樣
BASE_NAME="${NAME_NO_EXT%_v1}"

# 最終輸出檔名：原名_base64_v1.css
OUTFILE="${BASE_NAME}_base64_v1.css"

# 將字型檔案編碼為單行 base64（不換行）
# Linux: base64 -w 0  |  macOS: base64 -b 0  |  通用方案: base64 | tr -d '\n'
B64=$(base64 -w 0 "$INFILE" 2>/dev/null || base64 -b 0 "$INFILE" 2>/dev/null || base64 "$INFILE" | tr -d '\n')

# 寫入完整的 @font-face 規則
cat <<EOF > "$OUTFILE"
@font-face {
	font-family: Seal Sans base64;
	src:
		url(data:font/woff2;charset=utf-8;base64,${B64}) format(woff2);
	font-style: normal;
	font-weight: normal;
	font-width: normal;
	unicode-range:
		U+3D000-3FC3F,
		U+302A-302F, U+FE00;
	font-display: swap;
	font-language-override: normal;
	ascent-override: 50%;
	descent-override: 50%;
	line-gap-override: 0%;
}
EOF

echo "已產生: $OUTFILE"