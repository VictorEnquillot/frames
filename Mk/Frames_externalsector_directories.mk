# externalsector directory content :

CHEMICALDATA_DIR := $(EXTERNALSECTOR_DIR)/chemicaldata
FIGUREDATA_DIR := $(EXTERNALSECTOR_DIR)/figuredata
SKELETONDATA_DIR := $(EXTERNALSECTOR_DIR)/skeletondata

include $(MAK)/Frames_chemicaldata_directories.mk
include $(MAK)/Frames_figuredata_directories.mk
include $(MAK)/Frames_skeletondata_directories.mk
