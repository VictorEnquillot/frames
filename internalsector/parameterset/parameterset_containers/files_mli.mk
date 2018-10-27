include ../parameterset_symbols/files_parameter_symbols_mli.mk

CONTAINERS_T_MLI := $(subst _symbol_t.mli,_container_t.mli,$(PARAMETER_T_MLI))
CONTAINERS_V_MLI := $(subst _container_t.mli,_container_v.mli,$(CONTAINERS_T_MLI))
CONTAINERS_TV_MLI := $(CONTAINERS_T_MLI) $(CONTAINERS_V_MLI)
 
FILES_MLI := \
$(CONTAINERS_TV_MLI) \
 
