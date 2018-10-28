# Frames internalsector content :

COMMONSET_DIR := $(INTERNALSECTOR_DIR)/commonset
CONTEXTSET_DIR := $(INTERNALSECTOR_DIR)/contextset

# Domains

FIGURESET_DIR := $(INTERNALSECTOR_DIR)/figureset
SKELETONSET_DIR := $(INTERNALSECTOR_DIR)/skeletonset
PARAMETERSET_DIR := $(INTERNALSECTOR_DIR)/parameterset
COORDINATESET_DIR := $(INTERNALSECTOR_DIR)/coordinateset
ELEMENTARYSET_DIR := $(INTERNALSECTOR_DIR)/elementaryset

include $(MAK)/Frames_commonset_directories.mk
include $(MAK)/Frames_contextset_directories.mk

include $(MAK)/Frames_figureset_directories.mk
include $(MAK)/Frames_skeletonset_directories.mk
include $(MAK)/Frames_elementaryset_directories.mk
include $(MAK)/Frames_coordinateset_directories.mk
include $(MAK)/Frames_parameterset_directories.mk

# not used 

NATURALSET_DIR := $(INTERNALSECTOR_DIR)/naturalset
CHEMICALSET_DIR := $(INTERNALSECTOR_DIR)/chemicalset
MOLECULESET_DIR := $(INTERNALSECTOR_DIR)/moleculeset
GLOBALSET_DIR := $(INTERNALSECTOR_DIR)/globalset
GHOSTSET_DIR := $(INTERNALSECTOR_DIR)/ghostset
MUSICSET_DIR := $(INTERNALSECTOR_DIR)/musicset
WIKITOOLSET_DIR := $(INTERNALSECTOR_DIR)/wikitoolset

