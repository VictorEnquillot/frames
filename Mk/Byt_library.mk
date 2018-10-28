# Makes LIBRARY_CMA 
# LIBRARY = CODE_DIR is Current Byte Library name 
# LIBRARY_CMA = CODE_DIR.cma is file a Current Byt Library
# CODE_DIR is Current Directory name 

# *.ml files from *.mli files
FILES_ML = $(patsubst %.mli, %.ml, $(FILES_MLI) )

# Object files *.cmo
OBJECT_FILES_CMO = $(patsubst %.ml, %.cmo, $(FILES_ML) )

# All code files *.mli and *.ml
FILES = $(FILES_MLI) $(FILES_ML) 

# All Frames *.cma libraries names needed from NEEDED_DIRS.
NEEDED_CMA := $(foreach dir, $(NEEDED_DIRS), $(dir)/$(lastword $(subst /, , $(dir))).cma )

# All *.cma libraries names needed for linking.
# FCC WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(WITHBYT_GRAPHICS) $(NEEDED_CMA)
WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(NEEDED_CMA)

# All Frames directories used for compiling with -I option.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ actions --------------------

# .PHONY : compile neededdirs $(NEEDED_DIRS) $(NEEDED_CMA)
.PHONY : compile neededdirs $(NEEDED_DIRS) 

# Compilation of *.mli and *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	echo "";echo "Byt_library.mk:compilation of .cmo files done."; echo "";


# $@ contient le nom de la cible $(NEEDED_DIRS) ;
# $< le nom de la première source ; et
# $^ le nom de toutes les sources.

# $(NEEDED_CMA): neededdirs
# neededdirs: $(NEEDED_DIRS)
$(NEEDED_CMA): $(NEEDED_DIRS)
$(NEEDED_DIRS):
	$(MAKE) -C $@

# @echo "";echo "Byt_library.mk Needed Directory >$(NEEDED_DIRS)< has been revisited.";
# @echo "";echo "Byt_library.mk Target is >$@<"; 
# @echo "";

# building LIBRARY_CMA.
$(LIBRARY_CMA): $(NEEDED_CMA) $(OBJECT_FILES_CMO);
	$(CAMLBYT_LIBR) -o $(LIBRARY_CMA) $(OBJECT_FILES_CMO); 
	@echo "";echo "Byt_library.mk >$(LIBRARY_CMA)< has been done.";
	ls -alt $(LIBRARY_CMA); 
	@echo ""; 
#	@echo "";echo "Byt_library.mk Prerequisites >$?<"; echo "";

# checking if needed LIBRARY_CMAs are uptodate.
# $(NEEDED_CMA): 
# 	for dir in $(NEEDED_DIRS) ; do \
# 	  (cd $$dir; $(MAKE));\
# 	done; \
# 	echo "";echo "Byt_library.mk NEEDED_CMA >$(NEEDED_CMA)< are going to be checked."; echo "";

# ------------------------ Checkings --------------------
ifndef LIBRARY_CMA
$(error library "$(LIBRARY_CMA)" is not defined. Check >Byt_library.mk<)
endif
