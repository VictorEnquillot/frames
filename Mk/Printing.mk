# /mnt/huge_disk/users/colonna/keep/sources/FRAMES_CW/src/Makefile

.PHONY: print_test_dirs print_needed_dirs print_needed_libs \
	print_needed_cma print_up_dir print_done print_kind

print_camlbin: 
	echo ""; echo "Printing.mk: CAMLBIN is >$(CAMLBIN)<";

print_camlbin_libr: 
	echo ""; echo "Printing.mk: CAMLBIN_LIBR is >$(CAMLBIN_LIBR)<";

print_camlbyt: 
	echo ""; echo "Printing.mk: CAMLBYT is >$(CAMLBYT)<";

print_camlbyt_libr: 
	echo ""; echo "Printing.mk: CAMLBYT_LIBR is >$(CAMLBYT_LIBR)<";

print_code_dir: 
	echo ""; echo "Printing.mk: CODE_DIR is >$(CODE_DIR)<";

print_directories_depend:
	echo ""; echo "Printing.mk: DIRECTORIES_DEPEND are >$(DIRECTORIES_DEPEND)<"; 

print_directories_to_clean: 
	echo ""; echo "Printing.mk: DIRECTORIES_TO_CLEAN are >$(DIRECTORIES_TO_CLEAN)<";

print_done: 
	echo ""; echo "Printing.mk: directory >$(done)< has been made.";echo "" ;\

print_kind: 
	@echo ""; echo "Printing.mk: directory kind is >$(kind)<.";\

print_files: 
	for i in $(FILES) ; do \
	  echo ""; echo "Printing.mk: FILES >$$i<";\
	done; 

print_files_to_clean: 
	echo ""; echo "Printing.mk: FILES_TO_CLEAN are >$(FILES_TO_CLEAN)<";

print_files_to_very_clean: 
	echo ""; echo "Printing.mk: FILES_TO_VERY_CLEAN are >$(FILES_TO_VERY_CLEAN)<";

print_files_to_touch: 
	echo "Printing.mk: FILES_TO_TOUCH are >$(FILES_TO_TOUCH)<";

print_files_depend: 
	echo "Printing.mk: FILES_DEPEND are >$(FILES_DEPEND)<";

print_files_ml: 
	for i in $(FILES_ML) ; do \
	 echo "Printing.mk: FILES_ML >$$i<";\
	done; 

print_files_mli: 
	for i in $(FILES_MLI) ; do \
	  echo "Printing.mk: FILES_MLI >$$i<";\
	done; 

print_full_code_dir: 
	echo ""; echo "Printing.mk: FULL_CODE_DIR is >$(FULL_CODE_DIR)<";

print_libraries_cma: 
	echo ""; echo "Printing.mk: LIBRARIES_CMA is >$(LIBRARIES_CMA)<";

print_libraries_dirs: 
	echo ""; echo "Printing.mk: LIBRARIES_DIRS is >$(LIBRARIES_DIRS)<";

print_object_files_cmo: 
	for i in $(OBJECT_FILES_CMO) ; do \
	  echo ""; echo "Printing.mk: OBJECT_FILES_CMO >$$i<";\
	done; 

print_object_files_cmx: 
	for i in $(OBJECT_FILES_CMX) ; do \
	  echo ""; echo "Printing.mk: OBJECT_FILES_CMX >$$i<";\
	done; 

print_needed_dirs: 
	for i in $(NEEDED_DIRS) ; do \
	  echo ""; echo "Printing.mk: NEEDED_DIRS >$$i<";\
	done; 

print_included_dirs: 
	for i in $(INCLUDED_DIRS) ; do \
	  echo ""; echo "Printing.mk: INCLUDED_DIRS >$$i<";\
	done; 

print_included_i_dirs: 
	for i in $(CODE_INCLUDED_I_DIRS) ; do \
	  echo ""; echo "Printing.mk: CODE_INCLUDED_I_DIRS >$$i<";\
	done; 

print_needed_libs: 
	for i in $(NEEDED_LIBS) ; do \
	  echo ""; echo "Printing.mk: NEEDED_LIBS >$$i<";\
	done; 

print_needed_cma: 
	for i in $(NEEDED_CMA) ; do \
	  echo ""; echo "Printing.mk: NEEDED_CMA >$$i<";\
	done; 

print_node_list: 
	for i in $(NODE_LIST) ; do \
	  echo ""; echo "Printing.mk: NODE_LIST >$$i<";\
	done; 

print_runtest_byts: 
	for i in $(RUNTEST_BYTS) ; do \
	  echo ""; echo "Printing.mk: RUNTEST_BYTS >$$i<";\
	done; 

print_library:
	echo ""; echo "Printing.mk: LIBRARY is >$(LIBRARY)<";\

print_library_cma:
	echo ""; echo "Printing.mk: LIBRARY_CMA is >$(LIBRARY_CMA)<";\

print_up_dir:
	echo ""; echo "Printing.mk: UP_DIR is >$(UP_DIR)<";\

print_test_dir: 
	echo ""; echo "Printing.mk: UNITARY_TESTS_DIR >$(UNITARY_TESTS_DIR)<";\

