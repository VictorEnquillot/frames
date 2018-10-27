include ../nwchemdataset_symbols/files_nwchemdata_symbols_mli.mk

SYMBOLS_T_MLI := $(NWCHEMDATA_T_MLI) 

TAGS_T_MLI := $(subst _symbol_t.mli,_tag_t.mli,$(SYMBOLS_T_MLI))
TAGS_V_MLI := $(subst _tag_t.mli,_tag_v.mli,$(TAGS_T_MLI))
TAGS_TV_MLI := $(TAGS_T_MLI) $(TAGS_V_MLI)
 
FILES_MLI:= \
$(TAGS_TV_MLI) \
 