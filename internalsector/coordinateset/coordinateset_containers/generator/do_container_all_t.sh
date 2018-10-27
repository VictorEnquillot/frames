#!/bin/bash

# fence bud 
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_cylindrical_phi
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_cylindrical_rho
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_cylindrical_zed
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_polar_rho
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_polar_theta
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_spherical_phi
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_spherical_rho
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_heterogeneous_spherical_theta
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_cartesian_x
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_cartesian_y
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_cartesian_z
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_linear_x
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_planar_x
./do_container_as_uno_fence_bud_1containee_t.sh coordinate_set_fence_homogeneous_planar_y

# body bud 

./do_container_as_singlet_body_bud_1containee_t.sh \
coordinate_set_body_tuple_homogeneous_linear \
coordinate_set_fence_homogeneous_linear_x \

./do_container_as_doublet_body_bud_2containee_t.sh \
coordinate_set_body_tuple_heterogeneous_polar \
coordinate_set_fence_heterogeneous_polar_rho \
coordinate_set_fence_heterogeneous_polar_theta \
 
./do_container_as_doublet_body_bud_2containee_t.sh \
coordinate_set_body_tuple_homogeneous_planar \
coordinate_set_fence_homogeneous_planar_x \
coordinate_set_fence_homogeneous_planar_y \
 
./do_container_as_triplet_body_bud_3containee_t.sh \
coordinate_set_body_tuple_heterogeneous_cylindrical \
coordinate_set_fence_heterogeneous_cylindrical_rho \
coordinate_set_fence_heterogeneous_cylindrical_phi \
coordinate_set_fence_heterogeneous_cylindrical_zed \
 
./do_container_as_triplet_body_bud_3containee_t.sh \
coordinate_set_body_tuple_heterogeneous_spherical \
coordinate_set_fence_heterogeneous_spherical_rho \
coordinate_set_fence_heterogeneous_spherical_phi \
coordinate_set_fence_heterogeneous_spherical_theta \
 
./do_container_as_triplet_body_bud_3containee_t.sh \
coordinate_set_body_tuple_homogeneous_cartesian \
coordinate_set_fence_homogeneous_cartesian_x \
coordinate_set_fence_homogeneous_cartesian_y \
coordinate_set_fence_homogeneous_cartesian_z \
 
# context bud 

./do_container_as_list_context_bud_1containee_t.sh coordinate_context_sector coordinate_context_domain
./do_container_as_list_context_bud_1containee_t.sh coordinate_context_domain coordinate_context_database
./do_container_as_list_context_bud_1containee_t.sh coordinate_context_database coordinate_context_databox
./do_container_as_list_context_bud_1containee_t.sh coordinate_context_databox coordinate_set_body_tuple

# all trunk

for i in `ls $SCOO/Coordinate*symbol_t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    s="supplement_${a}_container_t.ml"
    touch $s
    if [ `grep -c " of string" $i` == 0 ]
    then
	do_container_from_symbol_this_t.sh $a
    fi
done
