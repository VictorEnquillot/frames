include files_fake_t_mli.mk

FILES_T_MLI:= \
Mendeleev_tag_t.mli \
$(FAKE_T_MLI) \
 
FILES_V_MLI:=$(subst tag_t,tag_v,$(FILES_T_MLI))

#concatenate
FILES_MLI:=$(FILES_T_MLI) $(FILES_V_MLI)\
