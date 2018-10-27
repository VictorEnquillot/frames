FILES_T_MLI := \
Globalset_symbol_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

FILES_MLI := $(FILES_T_MLI)$(FILES_V_MLI)\
Globalset_symbol_by_sole_index_register_v.mli \
Globalset_symbol_by_sole_index_provider_v.mli \
Abbreviation_argument_v.mli \
Abbreviation_module_v.mli \
 