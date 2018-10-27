include ../propertyset_symbols/files_property_symbols_mli.mk
 
CONTAINERS_T_MLI := $(subst symbol_t,container_t,$(PROPERTY_T_MLI)) 
CONTAINERS_V_MLI := $(subst container_t,container_v,$(CONTAINERS_T_MLI)) 
CONTAINERS_TV_MLI := $(CONTAINERS_T_MLI) $(CONTAINERS_V_MLI)
 
FILES_MLI := \
$(CONTAINERS_T_MLI) \
$(CONTAINERS_V_MLI) \
 