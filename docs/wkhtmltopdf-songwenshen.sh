#!/bin/bash

wkhtmltopdf toc --toc-header-text "目录" songwenshen.html --header-left "[title]" --header-right "https://github.com/lymslive/drama" --footer-center "知识共享 署名-非商业性使用-禁止演绎 4.0 国际 许可协议" --footer-right "[page]" --footer-spacing 2 --header-spacing 2 --footer-font-size 10 --header-font-size 10 --allow . songwenshen.pdf
