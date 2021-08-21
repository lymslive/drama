VIMDIR ?= ../.vim
DOCDIR ?= ../docs
MAIN   ?= main.html
TARGET := $(DOCDIR)/$(MAIN)

STATS = $(VIMDIR)/stats.vim
TOHTML = $(VIMDIR)/tohtml.vim
HTML_DEP = $(TOHTML) $(VIMDIR)/juben.html

.PHONY: all help stats html

all: stats html

help:
	@echo make stats 生成统计信息
	@echo make html  生成剧本网页

stats: stats.md

stats.md: main.md $(STATS)
	vim -E -s -c "source $(STATS)" -cxall main.md

html: $(TARGET)

# 脚本固定生成 main.html ，再移动到目标中
$(TARGET): main.md $(HTML_DEP)
	vim -E -s -c "source $(TOHTML)" -cxall main.md
	mv main.html $(TARGET)
