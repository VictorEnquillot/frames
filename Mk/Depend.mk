.PHONY: depend print_files_sorted depend_all 

# to skip "for" loop.
ifeq ($(strip $(DIRECTORIES_DEPEND)), "")
	DIRECTORIES_DEPEND :=
endif

depend_all::
	for i in $(DIRECTORIES_DEPEND); do \
		(cd $$i; echo ""; \
		echo "Depend.mk:depending directory >$$i<"; \
		$(MAKE) $@); \
	done; 

depend_all:: depend

# Rebuilding dependencies if .depend is empty.
size := $(firstword $(shell wc .depend))
#ifeq ($(size), 0)
depend:: 
	$(CAMLDEP) $(INCLUDED_DIRS) $(FILES) > .depend; \
	echo "Depend.mk:.depend done"; 
#else
#depend::
#	echo "Depend.mk:.depend is uptodate"
#endif
include .depend

