include files_elementary_symbols_mli.mk

SYMBOLS_T_MLI := $(ELEMENTARY_T_MLI)
 
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
 
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
