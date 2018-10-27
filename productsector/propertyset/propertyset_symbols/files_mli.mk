include files_property_symbols_mli.mk
 
SYMBOLS_T_MLI := $(PROPERTY_T_MLI)
SYMBOLS_V_MLI := $(subst _symbol_t.mli,_symbol_v.mli,$(SYMBOLS_T_MLI))
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
 
FILES_MLI:= \
$(SYMBOLS_TV_MLI) \
 
