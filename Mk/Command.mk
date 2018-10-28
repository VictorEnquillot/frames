# Running a shell command
# Usage : make command Command=<shell command>

ALL_DIRS = $(NEEDED_DIRS) 

command: $(ALL_DIRS)
	for i in $(ALL_DIRS) ; do \
	  (cd $$i; echo ""; echo "Command.mk:command dir $$i";echo "" ;\
	$(MAKE) command=Command ); \
	done; 
