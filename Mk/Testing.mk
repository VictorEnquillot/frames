# Making all tests from source directory

# Object files *.cmo

testing:
	cd $(UNITARY_TESTS_DIR); \
	  echo "";\
	  echo "Testing.mk: directory >$(UNITARY_TESTS_DIR)<";\
	  echo "" ;\
	$(MAKE) $@
