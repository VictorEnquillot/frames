FIRST_T_MLI := \
Kind_symbol_t.mli \
Category_symbol_t.mli \
Statustype_symbol_t.mli \
Contentfile_symbol_t.mli \
 
include files_camlline_t_mli.mk
include files_entity_t_mli.mk
include files_camlparagraph_t_mli.mk
include files_group_t_mli.mk
include files_item_t_mli.mk
include files_section_t_mli.mk
include files_usagefile_t_mli.mk

FILES_T_MLI:= \
$(ENTITY_T_MLI) \
$(FIRST_T_MLI) \
$(CAMLLINE_T_MLI) \
$(CAMLPARAGRAPH_T_MLI) \
$(GROUP_T_MLI) \
$(ITEM_T_MLI) \
$(SECTION_T_MLI) \
$(USAGEFILE_T_MLI) \
 \
Generatorset_symbol_t.mli \
 
FILES_V_MLI:=$(subst symbol_t,symbol_v,$(FILES_T_MLI))

#concatenate
FILES_MLI:=$(FILES_T_MLI) $(FILES_V_MLI)\
Abbreviation_argument_v.mli \
Abbreviation_module_v.mli \
 