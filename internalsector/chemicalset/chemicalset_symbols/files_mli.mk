include files_fake_t_mli.mk

FILES_T_MLI:= \
Mendeleev_symbol_t.mli \
$(FAKE_T_MLI) \
 
FILES_V_MLI:=$(subst symbol_t,symbol_v,$(FILES_T_MLI))

#concatenate
FILES_MLI:=$(FILES_T_MLI) $(FILES_V_MLI)\
