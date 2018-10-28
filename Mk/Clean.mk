.PHONY: clean clean_all very_clean very_clean_all

# to skip "for" loop.
ifeq ($(strip $(DIRECTORIES_TO_CLEAN)), "")
DIRECTORIES_TO_CLEAN :=
endif

FILES_TO_TOUCH := $(wildcard *_t.ml *_p.ml *_p.mli *_v.ml *_v.mli )
FILES_TO_CLEAN := $(wildcard *.cm[aiox] *.o *.a *.byt *.annot)
FILES_TO_VERY_CLEAN := $(wildcard  *.cm[aiox] *.o *.a *.byt .depend *.info *.err *.annot [a-z] )

ifeq ($(strip $(FILES_TO_TOUCH)), "")
FILES_TO_TOUCH :=
endif

ifeq ($(strip $(FILES_TO_CLEAN)), "")
FILES_TO_CLEAN :=
endif

ifeq ($(strip $(FILES_TO_VERY_CLEAN)), "")
FILES_TO_VERY_CLEAN :=
endif

clean_all very_clean_all::
	for i in $(DIRECTORIES_TO_CLEAN); do \
		(cd $$i; echo ""; \
		echo "Clean.mk:cleaning dir >$$i<"; \
		$(MAKE) $@); \
	done; 

clean_all:: clean

very_clean_all:: very_clean

clean: 
ifdef FILES_TO_CLEAN
	$(RM) $(FILES_TO_CLEAN)
#	$(RM) .depend 
#	$(TOUCH) .depend; sync; sleep 1
#	$(TOUCH) .depend-rebuild; sync
#ifdef FILES_TO_TOUCH
#	$(TOUCH) $(FILES_TO_TOUCH); sleep 1
#endif
endif

very_clean:: 
ifdef FILES_TO_VERY_CLEAN
	Clean
	$(RM) $(FILES_TO_VERY_CLEAN)
	$(RM) .depend 
	$(TOUCH) .depend; sync; sleep 1
	$(TOUCH) .depend-rebuild; sync
ifdef FILES_TO_TOUCH
	$(TOUCH) $(FILES_TO_TOUCH); sleep 1
endif	
endif

