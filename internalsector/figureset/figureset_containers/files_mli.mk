include ../figureset_symbols/files_figure_symbols_mli.mk
 
CONTAINERS_T_MLI := $(subst symbol_t,container_t,$(FIGURE_T_MLI)) 
CONTAINERS_V_MLI := $(subst container_t,container_v,$(CONTAINERS_T_MLI)) 
CONTAINERS_TV_MLI := $(CONTAINERS_T_MLI) $(CONTAINERS_V_MLI)
 
FILES_MLI := \
$(CONTAINERS_T_MLI) \
$(CONTAINERS_V_MLI) \
 