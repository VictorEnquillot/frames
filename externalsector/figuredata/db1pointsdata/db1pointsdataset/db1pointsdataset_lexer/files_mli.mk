include files_db1pointsdata_lexer_symbols_mli.mk

SYMBOLS_T_MLI := $(DB1FIGURE_LEXER_T_MLI)
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
 
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
Db1pointsdata_lexer_lexical_analysis_v.mli \
 