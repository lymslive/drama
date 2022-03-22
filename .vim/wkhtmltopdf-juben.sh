#!/bin/bash

INPUT_HTML=$1
OUTPUT_PDF=$2

wkhtmltopdf toc --toc-header-text "目录" ${INPUT_HTML} --header-left "[title]" --header-right "https://github.com/lymslive/drama" --footer-center "知识共享 署名-非商业性使用-禁止演绎 4.0 国际 许可协议" --footer-right "[page]" --footer-spacing 2 --header-spacing 2 --footer-font-size 10 --header-font-size 10 --allow . ${OUTPUT_PDF}
