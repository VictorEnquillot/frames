# Makes and executes runtest.byt
# 
# 
# 

# *.ml files from *.mli files
FILES_ML := $(TEST_FILES_ML) 

# Object files *.cmo
OBJECT_FILES_CMO := $(patsubst %.ml, %.cmo, $(FILES_ML) )

# All code files *.mli and *.ml
FILES := $(FILES_ML)

# All Frames *.cma libraries names needed from NEEDED_DIRS.
NEEDED_CMA := $(foreach dir, \
	$(NEEDED_DIRS), $(dir)/$(lastword $(subst /, , $(dir))).cma )

# All *.cma libraries names needed for linking.
WITH_BYT_LIBS = $(WITHBYTUNIX) $(WITHBYTSTR) $(NEEDED_CMA)

# All Frames directories used for compiling.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ Checkings --------------------

ifndef OBJECT_FILES_CMO
$(error variable "OBJECT_FILES_CMO" is not defined.\
Check Makefile "Byt_executable.mk")
endif

ifndef NEEDED_DIRS 
$(error variable "NEEDED_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

ifndef NEEDED_CMA 
$(error variable "NEEDED_CMA" is not defined.\
Check Makefile "Byt_executable.mk")
endif

ifndef INCLUDED_DIRS
$(error variable "INCLUDED_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

# ------------------------ actions --------------------

# Compilation of *.mli *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	echo "";echo "Byt_executable.mk:compilation done."; echo "";

# Frames *.cma libraries at one level lower.
#$(NEEDED_CMA) : bytlib

# building recursively cma libraries including UP_LIB
bytlib: $(NEEDED_CMA)
	for i in $(NEEDED_DIRS) ; do \
	  (cd $$i; \
          echo ""; \
	  echo "Byt_executable.mk:making cma for directory >$$i<";\
	  echo "" ; \
	  $(MAKE) $@ ); \
	done; 

# building executable bytecode with test code.
runtest.byt: $(NEEDED_CMA) $(OBJECT_FILES_CMO) 
	$(CAMLBYT) -o runtest.byt $(WITH_BYT_LIBS) $(OBJECT_FILES_CMO); \
	echo "";\
	echo 'Byt_executable.mk: file >$(shell pwd)/runtest.byt< built';\
	echo ""; 

testing: runtest.byt
	./runtest.byt
# to be removed
# trace:
# 	echo ""; echo "Byt_executable.mk:";echo "";
# 	for i in $(CODE_INCLUDED_I_DIRS) ; do \
# 		echo ""; echo "Byt_executable.mk: included I dir >$$i<";echo "" ;\
# 	done; 
# to be removed
