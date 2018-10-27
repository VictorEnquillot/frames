# ------ Fence ------

# fence_branch units

do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_action      eaa
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_angle       eaa
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_charge      eac
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_energy      eae
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_length      eal 
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_mass        eam 
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_none        ean
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_temperature eat
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_actual_time        eat 


do_container_as_uno_fence_branch_v.sh  elementary_fence_units_canonical_classical ecc
do_container_as_uno_fence_branch_v.sh  elementary_fence_units_canonical_quantum ecq 

# fence_branch color

do_container_as_uno_fence_branch_v.sh  elementary_fence_color  efc

# fence_trunc units

do_container_as_uno_fence_trunc_9sibling_v.sh \
elementary_fence_units_actual eua \
elementary_fence_units_actual_action eaa \
elementary_fence_units_actual_angle eaa \
elementary_fence_units_actual_charge eac \
elementary_fence_units_actual_energy eae \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_mass eam \
elementary_fence_units_actual_temperature eat \
elementary_fence_units_actual_time eat \
elementary_fence_units_actual_none ean

do_container_as_uno_fence_trunc_2sibling_v.sh  \
elementary_fence_units_canonical euc \
elementary_fence_units_canonical_classical ecc \
elementary_fence_units_canonical_quantum ecq 

do_container_as_uno_fence_trunc_2sibling_v.sh  \
elementary_fence_units efu \
elementary_fence_units_actual eua \
elementary_fence_units_canonical euc 


# fence_stalk basic

do_container_as_uno_fence_stalk_basic_v.sh  elementary_fence_basic_boolean  ebb 
do_container_as_uno_fence_stalk_basic_v.sh  elementary_fence_basic_float    ebf 
do_container_as_uno_fence_stalk_basic_v.sh  elementary_fence_basic_integer  ebi 
do_container_as_uno_fence_stalk_basic_v.sh  elementary_fence_basic_string   ebs 

# fence_trunc basic 

do_container_as_uno_fence_trunc_4sibling_v.sh \
elementary_fence_basic         efb \
elementary_fence_basic_boolean ebb \
elementary_fence_basic_float   ebf \
elementary_fence_basic_integer ebi \
elementary_fence_basic_string  ebs 

# fence_trunc basic 

do_container_as_uno_fence_trunc_3sibling_v.sh  \
elementary_fence efe \
elementary_fence_basic efb \
elementary_fence_color efc \
elementary_fence_units efu

# ------ Border ------

# border_bud coordinate_homogeneous

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_cartesian_x  hcx elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_cartesian_y  hcy elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_cartesian_z  ecz elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_linear_x  elx elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_planar_x  epx elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_homogeneous_planar_y  epy elementary_fence_units_actual_length eal

# border_trunc_1containee coordinate_homogeneous

do_container_as_uno_border_trunc_1sibling_1containee_v.sh \
elementary_border_coordinate_homogeneous_linear   chl \
elementary_border_coordinate_homogeneous_linear_x elx \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_2sibling_1containee_v.sh \
elementary_border_coordinate_homogeneous_planar   chp \
elementary_border_coordinate_homogeneous_planar_x epx \
elementary_border_coordinate_homogeneous_planar_y epx \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_3sibling_1containee_v.sh \
elementary_border_coordinate_homogeneous_cartesian   chc \
elementary_border_coordinate_homogeneous_cartesian_x ecx \
elementary_border_coordinate_homogeneous_cartesian_y ecy \
elementary_border_coordinate_homogeneous_cartesian_z ecz \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_3sibling_1containee_v.sh \
elementary_border_coordinate_homogeneous bch \
elementary_border_coordinate_homogeneous_cartesian chc \
elementary_border_coordinate_homogeneous_planar    chp \
elementary_border_coordinate_homogeneous_linear    chl \
elementary_fence_units_actual_length eal

# border_bud coordinate_heterogeneous

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical_phi ecp elementary_fence_units_actual_angle eaa 

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical_rho ecr elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical_zed ecz elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_polar_rho      epr elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_polar_theta    ept elementary_fence_units_actual_angle eaa

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_spherical_phi  esp elementary_fence_units_actual_angle eaa

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_spherical_rho  esr elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_coordinate_heterogeneous_spherical_theta  est elementary_fence_units_actual_angle eaa


# border_trunc_1containee coordinate_heterogeneous

do_container_as_uno_border_trunc_3sibling_2containee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical   ehc \
elementary_border_coordinate_heterogeneous_cylindrical_rho ecr \
elementary_border_coordinate_heterogeneous_cylindrical_phi ecp \
elementary_border_coordinate_heterogeneous_cylindrical_zed ecz \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_angle  eaa \
elementary_fence_units        efu

do_container_as_uno_border_trunc_3sibling_2containee_v.sh \
elementary_border_coordinate_heterogeneous_spherical       ehc \
elementary_border_coordinate_heterogeneous_spherical_rho   ecr \
elementary_border_coordinate_heterogeneous_spherical_phi   ecp \
elementary_border_coordinate_heterogeneous_spherical_theta ect \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_angle  eaa \
elementary_fence_units        efu

do_container_as_uno_border_trunc_2sibling_2containee_v.sh \
elementary_border_coordinate_heterogeneous_polar       ehc \
elementary_border_coordinate_heterogeneous_polar_rho   ecr \
elementary_border_coordinate_heterogeneous_polar_theta ect \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_angle  eaa \
elementary_fence_units        efu

do_container_as_uno_border_trunc_3sibling_2containee_v.sh \
elementary_border_coordinate_heterogeneous             bch \
elementary_border_coordinate_heterogeneous_cylindrical ehc \
elementary_border_coordinate_heterogeneous_spherical   ehs \
elementary_border_coordinate_heterogeneous_polar       ehp \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_angle  eaa \
elementary_fence_units        efu

# coordinate as_uno border

do_container_as_uno_border_trunc_2sibling_2containee_v.sh \
elementary_border_coordinate             ebc \
elementary_border_coordinate_heterogeneous ehe \
elementary_border_coordinate_homogeneous   eho \
elementary_fence_units_actual_length eal \
elementary_fence_units_actual_angle  eaa \
elementary_fence_units        efu

# parameter as_uno border

# parameter aopef

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_parameter_aopef_coefficient eac \
elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh  \
elementary_border_parameter_aopef_exponent    eae \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_2sibling_1containee_v.sh \
elementary_border_parameter_aopef             epa \
elementary_border_parameter_aopef_coefficient eac \
elementary_border_parameter_aopef_exponent    eae \
elementary_fence_units_actual_length eal

# parameter ecppef

do_container_as_uno_border_bud_1containee_v.sh \
elementary_border_parameter_ecppef_coefficient eec \
elementary_fence_units_actual_length eal

do_container_as_uno_border_bud_1containee_v.sh  \
elementary_border_parameter_ecppef_exponent eee \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_2sibling_1containee_v.sh \
elementary_border_parameter_ecppef             epe \
elementary_border_parameter_ecppef_coefficient eec \
elementary_border_parameter_ecppef_exponent eee \
elementary_fence_units_actual_length eal

do_container_as_uno_border_trunc_2sibling_1containee_v.sh \
elementary_border_parameter        ebp \
elementary_border_parameter_aopef  epa \
elementary_border_parameter_ecppef epe \
elementary_fence_units_actual_length eal

# --- Border Top ---

do_container_as_uno_border_trunc_2sibling_1containee_v.sh \
elementary_border        ebo \
elementary_border_parameter  ebp \
elementary_border_coordinate ebc \
elementary_fence_units_actual_length eal

# --- Body --------------

# --- parameter_tuple ---

# as_nplet_body_bud 

do_container_as_doublet_body_bud_2containee_v.sh \
elementary_body_parameter_tuple_aopef         eta \
elementary_border_parameter_aopef_exponent    eae \
elementary_border_parameter_aopef_coefficient eac \
elementary_border_parameter_aopef             epa

do_container_as_triplet_body_bud_3containee_v.sh \
elementary_body_parameter_tuple_ecppef         etc \
elementary_border_parameter_ecppef_exponent    eee \
elementary_border_parameter_ecppef_coefficient eec \
elementary_border_parameter_ecppef_coefficient eec \
elementary_border_parameter_ecppef             epe

do_container_as_tuple_body_trunc_2sibling_1containee_v.sh \
elementary_body_parameter_tuple        ept \
elementary_body_parameter_tuple_aopef  eta \
elementary_body_parameter_tuple_ecppef ete \
elementary_border_parameter            ebp

# coordinate_tuple body_bud

do_container_as_triplet_body_bud_3containee_v.sh \
elementary_body_coordinate_tuple_homogeneous_cartesian ehc \
elementary_border_coordinate_homogeneous_cartesian_x   ecx \
elementary_border_coordinate_homogeneous_cartesian_y   ecy \
elementary_border_coordinate_homogeneous_cartesian_z   ecz \
elementary_border_coordinate_homogeneous_cartesian     ehc

do_container_as_doublet_body_bud_2containee_v.sh \
elementary_body_coordinate_tuple_homogeneous_planar ehp \
elementary_border_coordinate_homogeneous_planar_x   epx \
elementary_border_coordinate_homogeneous_planar_y   epy \
elementary_border_coordinate_homogeneous_planar     ehp

do_container_as_singlet_body_bud_1containee_v.sh \
elementary_body_coordinate_tuple_homogeneous_linear ehl \
elementary_border_coordinate_homogeneous_linear_x   elx \
elementary_border_coordinate_homogeneous_linear     ehl

do_container_as_triplet_body_bud_3containee_v.sh \
elementary_body_coordinate_tuple_heterogeneous_cylindrical ehc \
elementary_border_coordinate_heterogeneous_cylindrical_rho ecr \
elementary_border_coordinate_heterogeneous_cylindrical_phi ecp \
elementary_border_coordinate_heterogeneous_cylindrical_zed ecz \
elementary_border_coordinate_heterogeneous_cylindrical     ehc

do_container_as_triplet_body_bud_3containee_v.sh \
elementary_body_coordinate_tuple_heterogeneous_spherical   ehs \
elementary_border_coordinate_heterogeneous_spherical_rho   esr \
elementary_border_coordinate_heterogeneous_spherical_phi   esp \
elementary_border_coordinate_heterogeneous_spherical_theta est \
elementary_border_coordinate_heterogeneous_spherical       ehs

do_container_as_doublet_body_bud_2containee_v.sh \
elementary_body_coordinate_tuple_heterogeneous_polar   ehp \
elementary_border_coordinate_heterogeneous_polar_rho   epr \
elementary_border_coordinate_heterogeneous_polar_theta ept \
elementary_border_coordinate_heterogeneous_polar

do_container_as_tuple_body_trunc_3sibling_1containee_v.sh \
elementary_body_coordinate_tuple_heterogeneous             ehe \
elementary_body_coordinate_tuple_heterogeneous_cylindrical ehc \
elementary_body_coordinate_tuple_heterogeneous_spherical   ehs \
elementary_body_coordinate_tuple_heterogeneous_polar       ehp \
elementary_body_coordinate_tuple_heterogeneous             eth

do_container_as_tuple_body_trunc_3sibling_1containee_v.sh \
elementary_body_coordinate_tuple_homogeneous               eho \
elementary_body_coordinate_tuple_homogeneous_cartesian     ehc \
elementary_body_coordinate_tuple_homogeneous_planar        ehp \
elementary_body_coordinate_tuple_homogeneous_linear        ehl \
elementary_body_coordinate_tuple_homogeneous               eth \
 
do_container_as_tuple_body_trunc_2sibling_1containee_v.sh \
elementary_body_coordinate_tuple                           ect \
elementary_body_coordinate_tuple_heterogeneous             ehe \
elementary_body_coordinate_tuple_homogeneous               eho \
elementary_body_coordinate_tuple                           ect

# --- Body Top ---

do_container_as_tuple_body_trunc_2sibling_1containee_v.sh \
elementary_body                    ebo \
elementary_body_coordinate_tuple   ect \
elementary_body_parameter_tuple    ept \
elementary_body                    ebo
 
# context_bud 

do_container_as_list_context_bud_1containee_v.sh \
elementary_context_databox_figuredata edf \
elementary_body_coordinate_tuple

do_container_as_list_context_bud_1containee_v.sh \
elementary_context_databox_skeletondata edf \
elementary_body_parameter_tuple

do_container_as_list_context_bud_1containee_v.sh \
elementary_context_database ecd \
elementary_context_databox

do_container_as_list_context_bud_1containee_v.sh \
elementary_context_domain   ecd \
elementary_context_database

# context_trunc 

do_container_as_list_context_trunc_2sibling_1containee_v.sh \
elementary_context_databox ebo \
elementary_context_databox_figuredata edf \
elementary_context_databox_skeletondata eds \
elementary_context_databox 

# --- Context Top ---

do_container_as_list_context_trunc_3sibling_1containee_v.sh \
elementary_context eco \
elementary_context_domain edo \
elementary_context_database edb \
elementary_context_databox eda \
elementary_context 

# --- Top ---

do_container_as_list_top_trunc_4sibling_1containee_v.sh \
elementary ele \
elementary_context eco \
elementary_body    ebo \
elementary_border  ebo \
elementary_fence   efe \
elementary

echo " "
echo " mv Elementary_*container_v.ml ../"
echo " "

exit




