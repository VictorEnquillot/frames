# Makes and executes runtest.byt

# *.ml files from *.mli files
FILES_ML := $(UNITARY_TESTS_FILES_ML) 

# Object files *.cmo
OBJECT_FILES_CMO := $(patsubst %.ml, %.cmo, $(FILES_ML) )

# All code files *.mli and *.ml
FILES := $(FILES_ML)

# All Frames *.cma libraries names needed from LIBRARIES_DIRS.
LIBRARIES_CMA := $(foreach dir, \
	$(LIBRARIES_DIRS), $(dir)/$(lastword $(subst /, , $(dir))).cma )

# All *.cma libraries names needed for linking.
# FCC WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(WITHBYT_GRAPHICS) $(LIBRARIES_CMA)
WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(LIBRARIES_CMA)

# All Frames directories used for compiling.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ Checkings --------------------

ifndef OBJECT_FILES_CMO
$(error variable "OBJECT_FILES_CMO" is not defined.\
Check Makefile "Byt_executable.mk and files_mli.mk or files_ml.mk")
endif

ifndef LIBRARIES_DIRS 
$(error variable "LIBRARIES_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

ifndef LIBRARIES_CMA 
$(error variable "LIBRARIES_CMA" is not defined.\
Check Makefile "Byt_executable.mk")
endif

ifndef INCLUDED_DIRS
$(error variable "INCLUDED_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

ifndef NEEDED_DIRS
$(error variable "NEEDED_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

# ------------------------ actions --------------------

# Compilation of *.mli *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	echo "";echo "Byt_executable.mk:compilation done."; echo "";


# building executable bytecode with test code.
runtest.byt: $(LIBRARIES_CMA) $(OBJECT_FILES_CMO) 
	$(CAMLBYT) -o runtest.byt $(WITH_BYT_LIBS) $(OBJECT_FILES_CMO); \
	echo "";\
	echo 'Byt_executable.mk: file >$(shell pwd)/runtest.byt< built';\
	echo ""; 

testing: runtest.byt
	./runtest.byt
