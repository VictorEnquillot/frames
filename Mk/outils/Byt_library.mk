# Makes LIBRARY_CMA 
# LIBRARY = CODE_DIR is Current Byte Library name 
# LIBRARY_CMA = CODE_DIR.cma is file a Current Byte Library
# CODE_DIR is Current Directory name 

# *.ml files from *.mli files
FILES_ML = $(patsubst %.mli, %.ml, $(FILES_MLI) )

# Object files *.cmo
OBJECT_FILES_CMO = $(patsubst %.ml, %.cmo, $(FILES_ML) )

# All code files *.mli and *.ml
FILES = $(FILES_MLI) $(FILES_ML) 

# All Frames *.cma libraries names needed from NEEDED_DIRS.
NEEDED_CMA := $(foreach dir, \
	$(NEEDED_DIRS), $(dir)/$(lastword $(subst /, , $(dir))).cma )

# All *.cma libraries names needed for linking.
WITH_BYT_LIBS = $(WITHBYTUNIX) $(WITHBYTSTR) $(NEEDED_CMA)

# All Frames directories used for compiling with -I option.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ actions --------------------

# Compilation of *.mli and *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	echo "";echo "Byt_library.mk:compilation done."; echo "";

# Recursively on each directory of NEEDED_DIRS

# building LIBRARY_CMA

$(LIBRARY_CMA): $(NEEDED_CMA) $(OBJECT_FILES_CMO) 
	$(CAMLBYTLIBR) -o $(LIBRARY_CMA) $(WITH_BYT_LIBS) $(OBJECT_FILES_CMO); \
	ls -alt $(LIBRARY_CMA); echo ""; \
	echo "";echo "Byt_library.mk >$(LIBRARY_CMA)< done."; echo ""; \

# building libraries at one level lower.
$(NEEDED_CMA):
	for lib in $(NEEDED_DIRS) ; do \
	  (cd $$lib; $(MAKE) );\
	done 

# ------------------------ Checkings --------------------
ifndef LIBRARY_CMA
$(error library "$(LIBRARY_CMA)" is not defined. Check >Byt_library.mk<)
endif
