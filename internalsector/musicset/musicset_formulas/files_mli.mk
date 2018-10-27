include files_music_t_mli.mk

FILES_T_MLI := \
$(MUSIC_T_MLI) \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= \
$(FILES_T_MLI) \
$(FILES_V_MLI) \
#Musicset_formula_by_sole_index_provider_v.mli \

