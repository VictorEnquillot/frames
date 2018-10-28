# Frames directory content :

GENERALSECTOR_DIR := $(FRAMES_DIR)/generalsector

ENTRYSECTOR_DIR := $(FRAMES_DIR)/entrysector
EXTERNALSECTOR_DIR := $(FRAMES_DIR)/externalsector
INTERNALSECTOR_DIR := $(FRAMES_DIR)/internalsector
PRODUCTSECTOR_DIR := $(FRAMES_DIR)/productsector

# sectors
include $(MAK)/Frames_generalsector_directories.mk

include $(MAK)/Frames_entrysector_directories.mk
include $(MAK)/Frames_externalsector_directories.mk
include $(MAK)/Frames_internalsector_directories.mk
include $(MAK)/Frames_productsector_directories.mk
 
