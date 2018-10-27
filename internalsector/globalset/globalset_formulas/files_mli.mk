FILES_T_MLI := \
Domainset_formula_t.mli \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

FILES_MLI := $(FILES_T_MLI)$(FILES_V_MLI)\
 