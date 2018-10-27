
# fence bud 

./do_container_as_uno_fence_bud_1containee_v.sh parameter_set_fence_aopef_coefficient  pac
./do_container_as_uno_fence_bud_1containee_v.sh parameter_set_fence_aopef_exponent     pae
./do_container_as_uno_fence_bud_1containee_v.sh parameter_set_fence_ecppef_coefficient pec
./do_container_as_uno_fence_bud_1containee_v.sh parameter_set_fence_ecppef_exponent    pee

# fence trunc 

./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh parameter_set_fence_aopef pfa parameter_set_fence_aopef_coefficient pac parameter_set_fence_aopef_exponent pae

./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh parameter_set_fence_ecppef pfe parameter_set_fence_ecppef_coefficient pae parameter_set_fence_ecppef_exponent pee

./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh parameter_set_fence pfe parameter_set_fence_aopef pfa parameter_set_fence_ecppef pfe

# body bud 

./do_container_as_doublet_body_bud_2containee_v.sh \
parameter_set_body_tuple_aopef pta \
parameter_set_fence_aopef_exponent pae \
parameter_set_fence_aopef_coefficient pac \
parameter_set_fence_aopef 

./do_container_as_triplet_body_bud_3containee_v.sh \
parameter_set_body_tuple_ecppef pte \
parameter_set_fence_ecppef_exponent pee \
parameter_set_fence_ecppef_coefficient pec \
parameter_set_fence_ecppef_coefficient pec \
parameter_set_fence_ecppef

# body trunc 

./do_container_as_tuple_body_trunc_2sibling_1containee_v.sh \
parameter_set_body_tuple pbt \
parameter_set_body_tuple_aopef pta \
parameter_set_body_tuple_ecppef pte \
parameter_set_fence psf

./do_container_as_tuple_body_trunc_1sibling_1containee_v.sh \
parameter_set_body pbo \
parameter_set_body_tuple pbt \
parameter_set_fence psf

# context bud 

./do_container_as_list_context_bud_1containee_v.sh \
parameter_context_sector pcs \
parameter_context_domain 

./do_container_as_list_context_bud_1containee_v.sh \
parameter_context_domain pcd \
parameter_context_database

./do_container_as_list_context_bud_1containee_v.sh \
parameter_context_database pba \
parameter_context_databox

./do_container_as_list_context_bud_1containee_v.sh \
parameter_context_databox pbo \
parameter_set_body_tuple

# context trunc

./do_container_as_list_context_trunc_4sibling_1containee_v.sh \
parameter_context pco \
parameter_context_sector pcs \
parameter_context_domain pcd \
parameter_context_database pba \
parameter_context_databox pbo \
parameter_set_body_tuple 

# set trunc

./do_container_as_list_context_trunc_2sibling_1containee_v.sh \
parameter_set pse \
parameter_set_body psb \
parameter_set_fence psf \
parameter_set_fence

# top trunc 

./do_container_as_list_top_trunc_2sibling_1containee_v.sh \
parameter par \
parameter_context pco \
parameter_set pse \
parameter_set_fence
