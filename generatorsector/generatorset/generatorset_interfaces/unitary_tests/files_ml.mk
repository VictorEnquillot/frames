include unitary_tests_files_generatorset_ml.mk
include unitary_tests_files_chemicalset_ml.mk
include unitary_tests_files_figureset_ml.mk
include unitary_tests_files_naturalset_ml.mk
include unitary_tests_files_moleculeset_ml.mk  
include unitary_tests_files_musicset_ml.mk  

FILES_GENERAL_ML := \
Usagefile_symbol_list_by_contentfile_quatup_provider_u_any.ml \
Kind_symbol_list_by_category_symbol_provider_u_any.ml \
   
UNITARY_TESTS_FILES_ML := \
$(UNITARY_TESTS_FILES_FIGURESET_ML) \
# $(UNITARY_TESTS_FILES_NATURALSET_ML) \
# $(UNITARY_TESTS_FILES_CHEMICALSET_ML) \
# $(UNITARY_TESTS_FILES_GENERATORSET_ML) \
# $(UNITARY_TESTS_FILES_MUSICSET_ML) \
# $(FILES_GENERAL_ML) \
  