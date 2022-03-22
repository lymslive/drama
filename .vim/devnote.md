# 开发备忘

## md 转 PDF 方案

pandoc + xelatex 方案。 Ubuntu 下可以直接安装所需程序

```
sudo apt-get install pandoc
sudo apt-get install texlive-xetex texlive-latex-recommended texlive-latex-extra
```

使用示例：

```
pandoc -s --toc --smart --latex-engine=xelatex  -VCJKoptions=BoldFont="WenQuanYi Zen Hei" -VCJKmainfont="WenQuanYi Micro Hei" -V geometry:margin=1in main.md  -o output.pdf
```

参考： https://www.zhihu.com/question/20849824

查看系统可用的字体：

```
fc-list :lang=zh-cn
```

安装所需字体示例：

```
sudo apt install -y --force-yes --no-install-recommends fonts-wqy-microhei
```

参考： https://www.cnblogs.com/Jimc/p/10302267.html

如此可生成 pdf 了，但默认模板生成的 pdf 格式未必美观，还需研究。

## html 转 pdf

```
sudo apt install wkhtmltopdf
```

使用示例：

```
wkhtmltopdf songwenshen.html songwenshen.pdf
wkhtmltopdf toc --toc-header-text "目录" motherbless.html --allow . motherbless.pdf
```

安装时 qt 不完全，没法生成 toc 与 outline. 可去官网下载 static 版本：
https://wkhtmltopdf.org/downloads.html

```
dpkg -i xxx.deb
```

从 html 转 pdf 时可用 sed 删除导航 div 元素

```
sed '/^    <div id="navigator">/, /^    <\/div>/ d' songwenshen.html | less
# 模板加上尾注释更方便
sed '/<div id="navigator">/,/--navigator--/d' juben.html | less
```
