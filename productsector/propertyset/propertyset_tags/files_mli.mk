include ../propertyset_symbols/files_property_symbols_mli.mk
 
SYMBOLS_T_MLI := $(PROPERTY_T_MLI) 

TAGS_T_MLI := $(subst _symbol_t.mli,_tag_t.mli,$(SYMBOLS_T_MLI))
TAGS_V_MLI := $(subst _tag_t.mli,_tag_v.mli,$(TAGS_T_MLI))
TAGS_TV_MLI := $(TAGS_T_MLI) $(TAGS_V_MLI)
 
FILES_MLI:= \
$(TAGS_TV_MLI) \
 
