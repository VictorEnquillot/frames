include files_operator_t_mli.mk
 
SYMBOLS_T_MLI := $(OPERATOR_T_MLI)
SYMBOLS_V_MLI := $(subst _symbol_t.mli,_symbol_v.mli,$(SYMBOLS_T_MLI))
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
TAGS_TV_MLI := $(subst _symbol_,_tag_,$(SYMBOLS_TV_MLI))
 
FILES_MLI:= \
$(SYMBOLS_TV_MLI) \
$(TAGS_TV_MLI) \
 
