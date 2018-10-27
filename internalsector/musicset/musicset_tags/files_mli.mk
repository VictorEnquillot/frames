include files_music_t_mli.mk

FILES_T_MLI := \
$(MUSIC_T_MLI) \

FILES_V_MLI := $(subst tag_t.ml,tag_v.ml,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \

