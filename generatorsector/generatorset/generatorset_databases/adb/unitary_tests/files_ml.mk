include unitary_tests_files_chemicalset_ml.mk 
include unitary_tests_files_figureset_ml.mk 
include unitary_tests_files_naturalset_ml.mk 
include unitary_tests_files_generatorset_item_ml.mk 
include unitary_tests_files_musicset_ml.mk  

UNITARY_TESTS_FILES_ANY_ML := \
Database_filename_by_category_trail_provider_u_any.ml \
 
UNITARY_TESTS_FILES_ML := \
$(UNITARY_TESTS_FILES_FIGURESET_ML) \
# $(UNITARY_TESTS_FILES_NATURALSET_ML) \
# $(UNITARY_TESTS_FILES_FIGURESET_ML) \
# $(UNITARY_TESTS_FILES_MUSICSET_ML)
# $(UNITARY_TESTS_FILES_CHEMICALSET_ML) \
# $(UNITARY_TESTS_FILES_GENERATORSET_ITEM_ML) \
# $(UNITARY_TESTS_FILES_ANY_ML) \
