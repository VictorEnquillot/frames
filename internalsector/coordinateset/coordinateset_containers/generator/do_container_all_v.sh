
# fence bud 

./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_cylindrical_rho ccr 
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_cylindrical_phi ccp
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_cylindrical_zed ccz
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_polar_rho       cpr
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_polar_theta     cpt
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_spherical_rho   csr
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_spherical_phi   csp
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_spherical_theta cst
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_cartesian_x       ccx
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_cartesian_y       ccy
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_cartesian_z       ccz
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_linear_x          clx
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_planar_x          cpx
./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_homogeneous_planar_y          cpy

# fence trunc 

./do_container_as_uno_fence_trunc_1sibling_1containee_v.sh \
coordinate_set_fence_homogeneous_linear   chl \
coordinate_set_fence_homogeneous_linear_x clx

./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh \
coordinate_set_fence   csf \
coordinate_set_fence_heterogeneous che \
coordinate_set_fence_homogeneous cho

./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh \
coordinate_set_fence_homogeneous   cfh \
coordinate_set_fence_homogeneous_cartesian chc \
coordinate_set_fence_homogeneous_planar    chp \
coordinate_set_fence_homogeneous_linear    chl

./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh \
coordinate_set_fence_homogeneous_planar   chp \
coordinate_set_fence_homogeneous_planar_x cpx \
coordinate_set_fence_homogeneous_planar_y cpy

./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh \
coordinate_set_fence_heterogeneous   cfh \
coordinate_set_fence_heterogeneous_cylindrical chc \
coordinate_set_fence_heterogeneous_polar       chp \
coordinate_set_fence_heterogeneous_spherical   chs
 
./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh \
coordinate_set_fence_heterogeneous_polar       chp \
coordinate_set_fence_heterogeneous_polar_rho   cpr \
coordinate_set_fence_heterogeneous_polar_theta cpt

./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh \
coordinate_set_fence_homogeneous_cartesian     chc \
coordinate_set_fence_homogeneous_cartesian_x   ccx \
coordinate_set_fence_homogeneous_cartesian_y   ccy \
coordinate_set_fence_homogeneous_cartesian_z   ccz

./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh \
coordinate_set_fence_heterogeneous_cylindrical       chc \
coordinate_set_fence_heterogeneous_cylindrical_rho   ccr \
coordinate_set_fence_heterogeneous_cylindrical_phi   ccp \
coordinate_set_fence_heterogeneous_cylindrical_zed   ccz

./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh \
coordinate_set_fence_heterogeneous_spherical       chs \
coordinate_set_fence_heterogeneous_spherical_rho   csr \
coordinate_set_fence_heterogeneous_spherical_phi   csp \
coordinate_set_fence_heterogeneous_spherical_theta cst

# body bud 

./do_container_as_singlet_body_bud_1containee_v.sh \
coordinate_set_body_tuple_homogeneous_linear chl \
coordinate_set_fence_homogeneous_linear_x clx \
coordinate_set_fence_homogeneous_linear

./do_container_as_doublet_body_bud_2containee_v.sh \
coordinate_set_body_tuple_homogeneous_planar chp \
coordinate_set_fence_homogeneous_planar_x    cpx \
coordinate_set_fence_homogeneous_planar_y    cpy \
coordinate_set_fence_homogeneous_planar

./do_container_as_doublet_body_bud_2containee_v.sh \
coordinate_set_body_tuple_heterogeneous_polar   chp \
coordinate_set_fence_heterogeneous_polar_rho    cpr \
coordinate_set_fence_heterogeneous_polar_theta  cpt \
coordinate_set_fence_heterogeneous_polar

./do_container_as_triplet_body_bud_3containee_v.sh \
coordinate_set_body_tuple_homogeneous_cartesian chc \
coordinate_set_fence_homogeneous_cartesian_x    ccx \
coordinate_set_fence_homogeneous_cartesian_y    ccy \
coordinate_set_fence_homogeneous_cartesian_z    ccz \
coordinate_set_fence_homogeneous_cartesian

./do_container_as_triplet_body_bud_3containee_v.sh \
coordinate_set_body_tuple_heterogeneous_cylindrical chc \
coordinate_set_fence_heterogeneous_cylindrical_rho    ccr \
coordinate_set_fence_heterogeneous_cylindrical_phi    ccp \
coordinate_set_fence_heterogeneous_cylindrical_zed    ccz \
coordinate_set_fence_heterogeneous_cylindrical

./do_container_as_triplet_body_bud_3containee_v.sh \
coordinate_set_body_tuple_heterogeneous_spherical chs \
coordinate_set_fence_heterogeneous_spherical_rho   csr \
coordinate_set_fence_heterogeneous_spherical_phi   csp \
coordinate_set_fence_heterogeneous_spherical_theta cst \
coordinate_set_fence_heterogeneous_spherical

# body trunc 

./do_container_as_tuple_body_trunc_3sibling_upcontainee_v.sh \
coordinate_set_body_tuple_homogeneous           cth \
coordinate_set_body_tuple_homogeneous_cartesian chc \
coordinate_set_body_tuple_homogeneous_planar    chp \
coordinate_set_body_tuple_homogeneous_linear    chl \
coordinate_set_fence csf

./do_container_as_tuple_body_trunc_3sibling_upcontainee_v.sh \
coordinate_set_body_tuple_heterogeneous             cth \
coordinate_set_body_tuple_heterogeneous_cylindrical chc \
coordinate_set_body_tuple_heterogeneous_spherical   chs \
coordinate_set_body_tuple_heterogeneous_polar       chp \
coordinate_set_fence csf

./do_container_as_tuple_body_trunc_2sibling_upcontainee_v.sh \
coordinate_set_body_tuple cbt \
coordinate_set_body_tuple_heterogeneous che \
coordinate_set_body_tuple_homogeneous cho \
coordinate_set_fence csf

./do_container_as_tuple_body_trunc_1sibling_upcontainee_v.sh \
coordinate_set_body cbo \
coordinate_set_body_tuple cbt \
coordinate_set_fence csf

# context bud 

./do_container_as_list_context_bud_1containee_v.sh \
coordinate_context_sector ccs \
coordinate_context_domain 

./do_container_as_list_context_bud_1containee_v.sh \
coordinate_context_domain ccd \
coordinate_context_database

./do_container_as_list_context_bud_1containee_v.sh \
coordinate_context_database dba \
coordinate_context_databox

./do_container_as_list_context_bud_1containee_v.sh \
coordinate_context_databox dbo \
coordinate_set_body_tuple

# context trunc

./do_container_as_list_context_trunc_4sibling_1containee_v.sh \
coordinate_context cco \
coordinate_context_sector ccs \
coordinate_context_domain ccd \
coordinate_context_database dba \
coordinate_context_databox dbo \
coordinate_set_body_tuple 

# set trunc

./do_container_as_list_context_trunc_2sibling_1containee_v.sh \
coordinate_set cse \
coordinate_set_body csb \
coordinate_set_fence csf \
coordinate_set_fence

# top trunc 

./do_container_as_list_top_trunc_2sibling_1containee_v.sh \
coordinate car \
coordinate_context cco \
coordinate_set cse \
coordinate_set_fence

echo ""
echo " mv Coordinate*ml ../"
echo ""