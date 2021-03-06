# Universal Makefile for a Node directory 
# 1. Reading variables specific to the current directory
# 2. Checking
# 3. Calling execution Makefiles.

# ------ Check variables built in local Makefile -----

ifndef CODE_DIR
$(error variable "CODE_DIR" is not defined. \
Check file "Makefile")
endif

ifndef MAKEFILES_DIR
$(error directory "setup/Mk" for Makefiles is not defined)
endif

# Frames directories
include $(MAKEFILES_DIR)/Frames_directories.mk

# ------ Read variables specific to this directory from disk -----

# variable NEEDED_DIRS 
include $(FULL_CODE_DIR)/needed_dirs.mk

ifeq ($(CODE_DIR),basics)
else
ifndef NEEDED_DIRS
$(error variable "NEEDED_DIRS" is not defined. \
Check file "$(FULL_CODE_DIR)/needed_dirs.mk")
endif
endif

# generic setup for Caml applications.
include $(MAKEFILES_DIR)/Config.mk

# --- variable FILES_MLI
ifeq ($(shell $(MAK)/file_exists $(FULL_CODE_DIR)/files_mli.mk ),Y)
include $(FULL_CODE_DIR)/files_mli.mk

ifndef FILES_MLI
$(error variable "FILES_MLI" is not defined. \
Check file "$(FULL_CODE_DIR)/files_mli.mk")
endif
endif

# --- variable INCLUDED_DIRS
ifeq ($(kind), "code")
include $(FULL_CODE_DIR)/included_dirs.mk

ifndef INCLUDED_DIRS
$(error variable "INCLUDED_DIRS" is not defined. \
Check file "$(FULL_CODE_DIR)/included_dirs.mk")
endif
endif

# ------ Library making  -----

all:: $(LIBRARY_CMA) testing

# Create Library needed_libs bytlib and/or run test
include $(MAKEFILES_DIR)/Byt_library.mk

# Testing
TEST_DIR := $(FULL_CODE_DIR)/test 
RUNTEST_BYT := $(patsubst %, %/runtest.byt, $(TEST_DIR) )
include $(MAKEFILES_DIR)/Testing.mk

# Cleaning  (or deep_clean ?)
DIRECTORIES_TO_CLEAN := $(NEEDED_DIRS) $(realpath ./test)
include $(MAKEFILES_DIR)/Clean.mk

# Depending
DIRECTORIES_DEPEND := $(NEEDED_DIRS) 
FILES_DEPEND := $(wildcard *.ml *.mli .depend)
include $(MAKEFILES_DIR)/Depend.mk

# Include the generic setup for Caml applications. 
# SUFFIXES 
# Compilation Rules 
include $(MAKEFILES_DIR)/Caml.mk

print_debug:
	@echo ""; echo " pwd = >$(PWD)<";
	@echo " frm = >$(FRA)<";
	@echo " EXISTS = >$(EXISTS)<";