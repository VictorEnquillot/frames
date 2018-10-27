include ../elementaryset_symbols/files_elementary_symbols_mli.mk

SYMBOLS_T_MLI := $(ELEMENTARY_T_MLI) 

TAGS_T_MLI := $(subst symbol_t,tag_t,$(SYMBOLS_T_MLI)) 
 
TAGS_V_MLI := $(subst tag_t,tag_v,$(TAGS_T_MLI)) 
TAGS_TV_MLI := $(TAGS_T_MLI) $(TAGS_V_MLI)

FILES_MLI := \
$(TAGS_TV_MLI) \
  