# Makes LIBRARY_CMXA 
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

# All Frames directories used for compiling with -I option.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ actions --------------------

# Compilation of *.mli and *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMX)
	echo "";echo "Bin_library.mk:compilation done."; echo "";

# Recursively on each directory of NEEDED_DIRS

# building LIBRARY_CMXA

$(LIBRARY_CMXA): $(NEEDED_CMXA) $(OBJECT_FILES_CMX) 
	$(CAMLBINLIBR) -o $(LIBRARY_CMXA) $(WITH_BIN_LIBS) $(OBJECT_FILES_CMX); \
	ls -alt $(LIBRARY_CMXA); echo ""; \
	echo "";echo "Bin_library.mk >$(LIBRARY_CMXA)< done."; echo ""; \

# building libraries at one level lower.
$(NEEDED_CMXA):
	for lib in $(NEEDED_DIRS) ; do \
	  (cd $$lib; $(MAKE) );\
	done 

# ------------------------ Checkings --------------------
ifndef LIBRARY_CMXA
$(error library "$(LIBRARY_CMXA)" is not defined. Check >Bin_library.mk<)
endif
