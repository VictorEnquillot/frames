# skeletondata directories

G9XDATA_DIR := $(SKELETONDATA_DIR)/g9xdata
MOLPRODATA_DIR := $(SKELETONDATA_DIR)/molprodata
NWCHEMDATA_DIR := $(SKELETONDATA_DIR)/nwchemdata

include $(MAK)/Frames_g9xdata_directories.mk
include $(MAK)/Frames_molprodata_directories.mk
include $(MAK)/Frames_nwchemdata_directories.mk
