# Makes LIBRARY_CMA for a Node Directory 
#       by linking all libraries of Sons Directory. 
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

# All Frames directories used for compiling.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))
print_debug:
# to be removed
	for i in $(CODE_INCLUDED_I_DIRS) ; do \
	  echo ""; echo "Node_library.mk: included I dir >$$i<";echo "" ;\
	done; 
# to be removed

# ------------------------ actions --------------------

# Compilation of *.mli *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	echo "";echo "Node_library.mk:compilation done."; echo "";

# Frames *.cma libraries at one level lower.
# building LIBRARY_CMA

$(LIBRARY_CMA): $(OBJECT_FILES_CMO) $(NEEDED_CMA)
	$(CAMLBYTLIBR) -o $(LIBRARY_CMA) $(WITH_BYT_LIBS) $(OBJECT_FILES_CMO); \
	ls -alt $(LIBRARY_CMA); \
	echo "";echo "Byt_library.mk >$(LIBRARY_CMA)< done."; echo ""; \

# building libraries at one level lower.
$(NEEDED_CMA):
	for node in $(NEEDED_DIRS) ; do \
	  (cd $$node; $(MAKE) ); \
	done 

# ------------------------ Checkings --------------------
ifndef LIBRARY_CMA
$(error library "LIBRARY_CMA" is not built. Check this Makefile)
endif
