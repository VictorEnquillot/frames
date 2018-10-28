# Makes LIBRARY_CMXA for a Node Directory 
#       by linking all libraries of Sons Directory. 
# LIBRARY = CODE_DIR is Current Bine Library name 
# LIBRARY_CMXA = CODE_DIR.cmxa is file a Current Bine Library
# CODE_DIR is Current Directory name 

# *.ml files from *.mli files
FILES_ML = $(patsubst %.mli, %.ml, $(FILES_MLI) )

# Object files *.cmx
OBJECT_FILES_CMX = $(patsubst %.ml, %.cmx, $(FILES_ML) )

# All code files *.mli and *.ml
FILES = $(FILES_MLI) $(FILES_ML)

# All Frames *.cmxa libraries names needed from NEEDED_DIRS.
NEEDED_CMXA := $(foreach dir, \
	$(NEEDED_DIRS), $(dir)/$(lastword $(subst /, , $(dir))).cmxa )

# All *.cmxa libraries names needed for linking.
WITH_BIN_LIBS = $(WITHBINUNIX) $(WITHBINSTR) $(NEEDED_CMXA)

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
compile: $(OBJECT_FILES_CMX)
	echo "";echo "Node_library.mk:compilation done."; echo "";

# Frames *.cmxa libraries at one level lower.
# building LIBRARY_CMXA

$(LIBRARY_CMXA): $(OBJECT_FILES_CMX) $(NEEDED_CMXA)
	$(CAMLBINLIBR) -o $(LIBRARY_CMXA) $(WITH_BIN_LIBS) $(OBJECT_FILES_CMX); \
	ls -alt $(LIBRARY_CMXA); \
	echo "";echo "Bin_library.mk >$(LIBRARY_CMXA)< done."; echo ""; \

# building libraries at one level lower.
$(NEEDED_CMXA):
	for node in $(NEEDED_DIRS) ; do \
	  (cd $$node; $(MAKE) ); \
	done 

# ------------------------ Checkings --------------------
ifndef LIBRARY_CMXA
$(error library "LIBRARY_CMXA" is not built. Check this Makefile)
endif
