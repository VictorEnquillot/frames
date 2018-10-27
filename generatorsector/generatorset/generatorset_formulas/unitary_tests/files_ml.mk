include unitary_tests_files_figureset_ml.mk
include unitary_tests_files_moleculeset_ml.mk
include unitary_tests_files_musicset_ml.mk  

TEST_FILES_GENERAL_ML:= \
Domainset_formula_u_any.ml \
 
UNITARY_TESTS_FILES_ML := \
$(UNITARY_TESTS_FILES_FIGURESET_ML) \
# $(UNITARY_TESTS_FILES_MOLECULESET_ML) \
# $(UNITARY_TESTS_FILES_MUSICSET_ML) \
# $(UNITARY_TESTS_FILES_CHEMICALSET_ML) \
# include unitary_tests_files_chemicalset_ml.mk


