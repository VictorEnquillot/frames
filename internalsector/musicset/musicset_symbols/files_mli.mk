include files_music_t_mli.mk

FILES_T_MLI := \
$(MUSIC_T_MLI) \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#musicset_symbol_by_sole_index_provider_v.mli \

