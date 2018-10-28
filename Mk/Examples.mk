 .PHONY: print
all: print

FULL_HERE_DIR = $(realpath .)
HERE_DIR = $(lastword $(subst /, , $(realpath $(FULL_HERE_DIR)) )  )


paths = $(subst /, , $(realpath $(FULL_HERE_DIR)) )

setup_position:
	for i in $(pathss) ; do \
	  ifeq $(word i, $(paths)) "setup"  
		POSITION = $i 
	  else
	        POSITION = 0
	  endif
	done; 
	echo ""; echo "POISITION = $(POSITION)"; echo ""; 



reverse = $(2) $(1)
foo = $(call reverse,a,b)
map = $(foreach a,$(2),$(call $(1),$(a)))

pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
LS := $(call pathsearch, ls)

dirsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst /, ,$(FULL_HERE_DIR)))))
SETUP_DIR := $(call dirsearch, "setup")

$(error This directory "$(HERE_DIR)" is not a test directory)

s=$(if $(wildcard $(SRCS)),,$(fatal You have not generated source code...))

CURRENT_DIRECTORY := $(shell pwd)
CURRENT_MAKEFILE := $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
MAKEFILE_DIRECTORY := $(dir $(CURRENT_MAKEFILE))

ifndef X
X := "truc"
else
X := "faux"
endif

#TOP ?= $(shell pwd)

here := $(lastword $(MAKEFILE_LIST))
TOP := $(dir $(here) )
A1=$(subst ee,EE,feet on the street)
A2:=$(subst ee,EE,feet on the street)
B=$(basename $(TOP))
L=$(subst /," ",$(TOP))
N=$(wordlist 1, $(words $(L)),$(L) )

R=$(realpath $(UP_DIR))
L=$(subst /," ",$(R))
UP_LIB = $(lastword $(L))
UP_CMA = $(patsubst %,%,$(UP_LIB))
UP_LIB = $(lastword $(subst /, , $(realpath $(UP_DIR)) )  )

I = $(patsubst %,-I %,$(UP_DIR))
FA1 = $(flavor A1)
FA2 = $(flavor A2)
FX = $(flavor X)

dirs := a b c d
files := $(foreach dir, $(dirs), "x$(dir)bla$(dir)")

dirs = 	setup/frames/paths/atomsystems_path/ \
	setup/frames/paths/primitives_path \
	setup/frames/datas/simulations_data

lib_names := $(foreach dir, $(dirs), $(lastword $(subst /, , $(realpath $(dir)))) )
lib_names := \
 $(foreach dir, $(dirs), $(dir)$(lastword $(subst /, , $(dir))) )

# compute the current directory level relative to setup

setup_directory_level := $(words $(subst /, , $(realpath $(SETUP_DIR)) ) )
code_directory_level := $(words $(subst /, , $(realpath $(FULL_CODE_DIR)) ) ) 
diff_directory_list := \
	$(wordlist $(setup_directory_level), $(code_directory_level), \
	$(subst /, , $(realpath $(FULL_CODE_DIR)) ) )
diff_directory_level := $(words $(diff_directory_list) )

ifeq "$(findstring $(CODE_DIR), $(NODE_LIST))" "find"

z=$(shell wc .depend)

print:
	echo ""; echo "PATH = $(PATH)"; echo ""; 
	echo ""; echo "HERE_DIR = $(HERE_DIR)"; echo ""; 
	echo ""; echo "FULL_HERE_DIR = $(FULL_HERE_DIR)"; echo "";
	echo ""; echo "MAKEFILE_LIST = $(MAKEFILE_LIST)"; echo "";
	echo ""; echo "dirsearch = $(dirsearch)"; echo "";  
	echo ""; echo "SETUP_UP = $(SETUP_UP)"; echo "";  
	echo ""; echo "here = $(here)"; echo ""; \
	echo ""; echo "TOP = $(TOP)"; echo ""; \
	echo ""; echo "A = $(A)"; echo ""; \
	echo ""; echo "B = $(B)"; echo ""; \
	echo ""; echo "L = $(L)"; echo ""; \
	echo ""; echo "I = $(I)"; echo ""; \
	echo ""; echo "z = $(z)"; echo ""; \
	echo ""; echo "flavor of A1 = $(FA1)"; echo ""; \
	echo ""; echo "flavor of A2 = $(FA2)"; echo ""; \
	echo ""; echo "flavor of X = $(FX)"; echo ""; \
	echo ""; echo "UP_LIB = $(UP_LIB)"; echo ""; \
	echo ""; echo "UP_CMA = $(UP_CMA)"; echo ""; 
	echo ""; echo "files = $(files)"; echo ""; \
	echo ""; echo "dirs = $(dirs)"; echo ""; \
	echo ""; echo "lib_names = $(lib_names)"; echo "";
	echo ""; echo " directories_list = $(directories_list)"; echo ""; 
	echo ""; echo " directories_level = $(directories_level)"; echo ""; 
	echo ""; echo " setup_directory_level = $(setup_directory_level)"; echo ""; 
	echo ""; echo " diff_directory_list = $(diff_directory_list)"; echo ""; 
	echo ""; echo " diff_directory_level = $(diff_directory_level)"; echo ""; 
condition:
	echo ""; echo "X = $(X)"; echo ""; \

