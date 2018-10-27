include files_camlline_t_mli.mk
include files_group_t_mli.mk
include files_section_t_mli.mk
include files_camlparagraph_t_mli.mk
include files_item_t_mli.mk
include files_usagefile_t_mli.mk
include files_entity_t_mli.mk

FILES_T_MLI:= \
$(CAMLLINE_T_MLI) \
$(GROUP_T_MLI) \
$(SECTION_T_MLI) \
$(CAMLPARAGRAPH_T_MLI) \
$(ITEM_T_MLI) \
$(USAGEFILE_T_MLI) \
Contentfile_formula_t.mli \
$(ENTITY_T_MLI) \
Category_formula_t.mli \
Domain_formula_t.mli \
 
FILES_V_MLI:=$(subst formula_t.mli,formula_v.mli,$(FILES_T_MLI))

FILES_MLI:= \
$(FILES_T_MLI) \
Tools_fgnr_v.mli \
$(FILES_V_MLI) \

