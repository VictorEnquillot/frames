include files_localinput_symbols_mli.mk

SYMBOLS_T_MLI := $(LOCALINPUT_T_MLI)
 
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
 
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
