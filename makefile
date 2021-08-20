SUBDIR = songwenshen motherbless

.PHONY : all help $(SUBDIR)
all : $(SUBDIR)

help :
	@echo make [SUBDIR]
	@echo SUBDIR = $(SUBDIR)

$(SUBDIR) : % : 
	make -C $@
