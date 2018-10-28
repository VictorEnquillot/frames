# Makes and executes frames.byt
# 
EXECUTABLE := frames.byt 
# 

# *.ml files from *.mli files
FILES_ML := $(UNITARY_TESTS_FILES_ML) 

# Object files *.cmo
OBJECT_FILES_CMO := $(patsubst %.ml, %.cmo, $(FILES_ML) )

# All code files *.mli and *.ml
FILES := $(FILES_ML)

# All *.cma libraries names needed for linking.
# FCC WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(WITHBYT_GRAPHICS) $(NEEDED_CMA)
WITH_BYT_LIBS = $(WITHBYT_UNIX) $(WITHBYT_STR) $(NEEDED_CMA)

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

ifndef INCLUDED_DIRS
$(error variable "INCLUDED_DIRS" is not defined.\
Check "$(FULL_CODE_DIR)/Makefile")
endif

# ------------------------ actions --------------------
# .SUFFIXES: .mli .ml .cmi .cmo .cmo .cma

# Compilation of *.mli *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMO)
	for i in $(NEEDED_DIRS) ; do \
	  (cd $$i; \
	  echo ""; \
	  echo "Byt_executable.mk:compiling to make cmo for directory >$$i<";\
	  echo "" ; \
	  $(MAKE) $@ ); \
	done;
	echo "";echo "Byt_executable.mk:compilation done."; echo "";

# Frames *.cma libraries at one level lower.

# building recursively cma libraries including UP_LIB
#bytlib: $(NEEDED_CMA)
# for i in $(NEEDED_DIRS) ; do \
#   (cd $$i; \
#   echo ""; \
#   echo "Byt_executable.mk:making cmo for directory >$$i<";\
#   echo "" ; \
#   $(MAKE) $@ ); \
# done; 

# building executable bytcode 
frames.byt: $(OBJECT_FILES_CMO) 
	$(CAMLBYT) -o $(EXECUTABLE) $(WITH_BYT_LIBS) $(OBJECT_FILES_CMO); \
	echo "";\
	echo 'Byt_executable.mk: file >$(shell pwd)/$(EXECUTABLE)< built';\
	echo ""; 

