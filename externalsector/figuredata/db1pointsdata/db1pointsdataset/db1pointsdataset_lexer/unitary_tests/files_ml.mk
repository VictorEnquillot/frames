include ../files_db1pointsdata_lexer_symbols_mli.mk

SYMBOLS_T_MLI := $(DB1FIGURE_LEXER_T_MLI)
SYMBOLS_U_ML := $(subst symbol_t.mli,symbol_u_any.ml,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_U_ML)
 
FROM_FILES_MLI := \
$(SYMBOLS_U_ML) \
Db1pointsdata_lexer_lexical_analysis_u_any.ml \
 

EXTRA_FILES_ML := \
Db1pointsdata_lexer_lexical_analysis_u_6_31GSS_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_basis_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_cc_pVTZ_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_comment_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_ecp_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_LANL2DZ_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_point_a.ml \
Db1pointsdata_lexer_lexical_analysis_u_segment_BC.ml \
Db1pointsdata_lexer_lexical_analysis_u_test_debug.ml \
Db1pointsdata_lexer_lexical_analysis_u_triangle_isoright.ml \
Db1pointsdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_u_LANL2DZ_debug.ml \


UNITARY_TESTS_FILES_ML := \
$(FROM_FILES_MLI) \
$(EXTRA_FILES_ML) \

