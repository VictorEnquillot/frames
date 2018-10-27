# This Universal Makefile is
# 1. getting information on current disk position.
# 2. dispatching execution depending on directory kind
#   i. code using Node_makefile.mk
#  ii. test using Code_makefile.mk
# iii. test using Test_makefile.mk

ifndef SUP
$(error variable "SUP" is not defined. Check this file "Mk/Makefile")
endif

# Define the Mk directory from local path.
ifndef SUP
$(error variable "SUP" is not defined. Check this file "Mk/Makefile")
endif

SETUP_DIR :=$(SUP)
MAKEFILES_DIR := $(SETUP_DIR)/Mk

# Define variables depending on local directory.
FULL_CODE_DIR := $(realpath .)
CODE_DIR := $(lastword $(subst /, , $(realpath $(FULL_CODE_DIR)) )  )
LIBRARY := $(CODE_DIR)
LIBRARY_CMA := $(CODE_DIR).cma

done := "no"
kind := "no"

ifndef CODE_DIR
$(error variable "CODE_DIR" is not defined. Check this file "Mk/Makefile")
endif

# ----------------  directory kind test  -----------------

ifeq ($(CODE_DIR), unitary_tests)
kind := "test"
UP_DIR = $(realpath ..)
include $(MAKEFILES_DIR)/Test_makefile.mk
done := "test"
endif

# ----------------  directory kind node  -----------------

# variable NODE_LIST
include $(MAKEFILES_DIR)/Frames_directories.mk

ifndef NODE_LIST
$(error variable "NODE_LIST" is not defined. \
Check file "$(MAKEFILES_DIR)/Frames_directories.mk".)
endif

ifeq ($(findstring $(CODE_DIR), $(NODE_LIST) ), $(CODE_DIR))
kind := "node" 
include $(MAKEFILES_DIR)/Byt_node_makefile.mk
done := "node"
endif

# ----------------  directory kind code  -----------------

ifeq ($(done), "no")
kind := "code" 
include $(MAKEFILES_DIR)/Byt_code_makefile.mk
done := "code"
endif

# ----------------  common tools  -----------------

# Printing
include $(MAKEFILES_DIR)/Printing.mk

# Command
include $(MAKEFILES_DIR)/Command.mk

