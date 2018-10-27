include files_item_t_mli.mk
include files_camlparagraph_t_mli.mk
include files_section_t_mli.mk
include files_group_t_mli.mk
include files_camlline_t_mli.mk
include files_entity_t_mli.mk
include files_usagefile_t_mli.mk

FILES_V_MLI := $(subst tag_t.ml,tag_v.ml,$(FILES_T_MLI))
 

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
 
FILES_T_MLI := \
Generatorset_tag_t.mli \
Category_tag_t.mli \
Kind_tag_t.mli \
$(ENTITY_T_MLI) \
Contentfile_tag_t.mli \
$(USAGEFILE_T_MLI) \
$(ITEM_T_MLI) \
$(CAMLPARAGRAPH_T_MLI) \
$(SECTION_T_MLI) \
$(GROUP_T_MLI) \
$(CAMLLINE_T_MLI) \
  
FILES_V_MLI := $(subst tag_t.mli,tag_v.mli,$(FILES_T_MLI))

# concatenate
FILES_MLI := \
$(FILES_T_MLI) \
Generatorset_symbol_by_sole_index_register_v.mli \
Generatorset_symbol_by_sole_index_provider_v.mli \
Tools_tgen_v.mli \
$(FILES_V_MLI) \
 
