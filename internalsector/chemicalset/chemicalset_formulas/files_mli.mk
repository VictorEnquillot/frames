include files_fake_t_mli.mk

FILES_T_MLI:= \
$(MOLECULE_T_MLI) \
 
FILES_V_MLI:=$(subst formula_t,formula_v,$(FILES_T_MLI))

#concatenate
FILES_MLI:=$(FILES_T_MLI) $(FILES_V_MLI)\
