include files_camlline_t_mli.mk
include files_group_t_mli.mk
include files_section_t_mli.mk
include files_camlparagraph_t_mli.mk
include files_item_t_mli.mk
include files_usagefile_t_mli.mk

FILES_T_MLI := \
$(CAMLLINE_T_MLI) \
$(GROUP_T_MLI) \
$(SECTION_T_MLI) \
$(CAMLPARAGRAPH_T_MLI) \
$(ITEM_T_MLI) \
$(USAGEFILE_T_MLI) \
Contentfile_value_t.mli \
Entity_proper_value_t.mli \
Entity_value_t.mli \
Category_value_t.mli \
Domain_value_t.mli \

FILES_V_MLI := $(subst value_t,value_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= \
$(FILES_T_MLI) \
Tools_vgnr_v.mli \
$(FILES_V_MLI) \

 