# Frames_figuredata_directories.mk

DB1POINTSDATA_DIR := $(FIGUREDATA_DIR)/db1pointsdata
DB2GEOMETRYDATA_DIR := $(FIGUREDATA_DIR)/db2geometrydata

include $(MAK)/Frames_db1pointsdata_directories.mk
include $(MAK)/Frames_db2geometrydata_directories.mk
