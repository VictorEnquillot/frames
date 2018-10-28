# Makes and executes frames.bin
# 
EXECUTABLE := frames.bin 
# 

# *.ml files from *.mli files
FILES_ML := $(UNITARY_TESTS_FILES_ML) 

# Object files *.cmx
OBJECT_FILES_CMX := $(patsubst %.ml, %.cmx, $(FILES_ML) )

# All code files *.mli and *.ml
FILES := $(FILES_ML)

# All *.cmxa libraries names needed for linking.
# FCC WITH_BIN_LIBS = $(WITHBIN_UNIX) $(WITHBIN_STR) $(WITHBIN_GRAPHICS) $(NEEDED_CMXA)
WITH_BIN_LIBS = $(WITHBIN_UNIX) $(WITHBIN_STR) $(NEEDED_CMXA)

# All Frames directories used for compiling.
CODE_INCLUDED_I_DIRS = $(patsubst %,-I %,$(INCLUDED_DIRS))

# ------------------------ Checkings --------------------

ifndef OBJECT_FILES_CMX
$(error variable "OBJECT_FILES_CMX" is not defined.\
Check Makefile "Bin_executable.mk")
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
.SUFFIXES: .mli .ml .cmi .cmo .cmx .cmxa

.ml.cmx:
	$(CAMLBIN) -c $<

# Compilation of *.mli *.ml using Caml.mk rules
compile: $(OBJECT_FILES_CMX)
	for i in $(NEEDED_DIRS) ; do \
	  (cd $$i; \
	  echo ""; \
	  echo "Bin_executable.mk:compiling to make cmx for directory >$$i<";\
	  echo "" ; \
	  $(MAKE) $@ ); \
	done; 

echo "";echo "Bin_executable.mk:compilation done."; echo "";

# Frames *.cmxa libraries at one level lower.

# building recursively cmxa libraries including UP_LIB
#binlib: $(NEEDED_CMXA)
# for i in $(NEEDED_DIRS) ; do \
#   (cd $$i; \
#   echo ""; \
#   echo "Bin_executable.mk:making cmx for directory >$$i<";\
#   echo "" ; \
#   $(MAKE) $@ ); \
# done; 

# building executable bincode 
frames.bin: $(OBJECT_FILES_CMX) 
	$(CAMLBIN) -o $(EXECUTABLE) $(WITH_BIN_LIBS) $(OBJECT_FILES_CMX); \
	echo "";\
	echo 'Bin_executable.mk: file >$(shell pwd)/$(EXECUTABLE)< built';\
	echo ""; 

