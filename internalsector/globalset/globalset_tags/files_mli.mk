FILES_T_MLI := \
Globalset_tag_t.mli \

FILES_V_MLI := $(subst tag_t,tag_v,$(FILES_T_MLI))

FILES_MLI := $(FILES_T_MLI)$(FILES_V_MLI)\
 