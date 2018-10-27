include files_skeleton_containers_mli.mk
 
CONTAINERS_V_MLI := $(subst container_t,container_v,$(CONTAINERS_T_MLI)) 
 
FILES_MLI := \
$(CONTAINERS_T_MLI) \
$(CONTAINERS_V_MLI) \
