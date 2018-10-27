include files_localinput_lexer_symbols_t_mli.mk

SYMBOL_T_MLI := $(LOCALINPUT_LEXER_T_MLI) 
SYMBOL_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOL_T_MLI))
SYMBOL_TV_MLI := $(SYMBOL_T_MLI) $(SYMBOL_V_MLI)\
 
FILES_MLI := \
$(SYMBOL_TV_MLI) \
