# Universal Makefile to be used in a test directory

# ------  Check variables built in local Makefile  -----

ifndef MAKEFILES_DIR
$(error directory "setup/Mk" for Makefiles is not defined)
endif

ifndef FULL_CODE_DIR
$(error variable "FULL_CODE_DIR" is not defined. \
Check file "Makefile")
endif

ifndef UP_DIR
$(error variable "UP_DIR" is not defined. \
Check file "Makefile")
endif

# Frames 
include $(MAKEFILES_DIR)/Frames.mk

# ------ Read variables specific to this directory from disk -----

# variable NEEDED_DIRS 
# to generate LIBRARY_NEEDED_CMA *cma files
include $(FULL_CODE_DIR)/needed_dirs.mk

ifndef NEEDED_DIRS
$(error variable "NEEDED_DIRS" is not defined. \
Check file "$(FULL_CODE_DIR)/needed_dirs.mk")
endif

# generic setup for Caml applications.
include $(MAKEFILES_DIR)/Config.mk

# variable UNITARY_TESTS_FILES_ML
include $(FULL_CODE_DIR)/files_ml.mk

ifndef UNITARY_TESTS_FILES_ML
$(error variable "UNITARY_TESTS_FILES_ML" is not defined. \
Check file "$(FULL_CODE_DIR)/files_ml.mk")
endif

# variable INCLUDED_DIRS
include $(FULL_CODE_DIR)/included_dirs.mk

ifndef INCLUDED_DIRS
$(error variable "INCLUDED_DIRS" is not defined. \
Check file "$(FULL_CODE_DIR)/included_dirs.mk")
endif

# --- variable LIBRARIES_DIRS
include $(FULL_CODE_DIR)/libraries_dirs.mk

ifndef LIBRARIES_DIRS
$(error variable "LIBRARIES_DIRS" is not defined. \
Check file "$(FULL_CODE_DIR)/libraries_dirs.mk")
endif

# ------ Byt_executable  Testing  Printing  Caml.mk ------ 

all: runtest.byt testing

# Create executable runtest.byt
include $(MAKEFILES_DIR)/Byt_executable.mk

# Testing
#include $(MAKEFILES_DIR)/Testing.mk

# Cleaning
DIRECTORIES_TO_CLEAN :=
include $(MAKEFILES_DIR)/Clean.mk

# Depending
DIRECTORIES_DEPEND := $(NEEDED_DIRS) 
FILES_DEPEND := $(wildcard t*.ml .depend)
include $(MAKEFILES_DIR)/Depend.mk

# Include the generic setup for Caml applications. 
# SUFFIXES 
# Compilation Rules 
include $(MAKEFILES_DIR)/Caml.mk

