# ------ Fence ------

# fence_branch units

do_belt_as_doublet_fence_units_actual_branch_1sibling_2beltee_v.sh  elementary_fence_units_actual action  eaa  planck_constant mac
do_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.sh  elementary_fence_units_actual angle   eaa  degree radian man
do_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.sh  elementary_fence_units_actual charge  eac  coulomb electron_charge mch
do_belt_as_doublet_fence_units_actual_branch_6sibling_2beltee_v.sh  elementary_fence_units_actual energy  eae  \
hartree calorie electron_volt joule kilocalorie kilojoule men

do_belt_as_doublet_fence_units_actual_branch_13sibling_2beltee_v.sh  elementary_fence_units_actual length eal  \
angstrom bohr centimeter decameter decimeter foot inch kilometer light_year meter millimeter nanometer yard mle

do_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.sh  elementary_fence_units_actual mass eam   electron_mass gram  mma
do_belt_as_doublet_fence_units_actual_branch_1sibling_2beltee_v.sh  elementary_fence_units_actual none ean   unitless  mno  
do_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.sh  elementary_fence_units_actual temperature eat celsius kelvin  mte  
do_belt_as_doublet_fence_units_actual_branch_4sibling_2beltee_v.sh  elementary_fence_units_actual time eat  femtosecond nanosecond picosecond second  mti

do_belt_as_doublet_fence_units_canonical_branch_9sibling_2beltee_v.sh  elementary_fence_units_canonical classical ecc canonical_classical_action_kilocalorie_second canonical_classical_angle_radian canonical_classical_charge_coulomb canonical_classical_energy_kilocalorie canonical_classical_length_angstrom canonical_classical_mass_electron_mass canonical_classical_temperature_kelvin canonical_classical_time_femtosecond canonical_classical_none mcc

do_belt_as_doublet_fence_units_canonical_branch_9sibling_2beltee_v.sh  elementary_fence_units_canonical quantum ecq canonical_quantum_action_planck_constant canonical_quantum_angle_radian canonical_quantum_charge_electron_charge canonical_quantum_energy_hartree canonical_quantum_length_bohr canonical_quantum_mass_electron_mass canonical_quantum_temperature_kelvin canonical_quantum_time_femtosecond canonical_quantum_none mcq

# fence_branch color

do_belt_as_uno_fence_color_branch_v.sh  elementary_fence_color  efc

# fence_trunc units

do_belt_as_fence_units_canonical_trunc_2sibling_v.sh \
elementary_fence_units_canonical euc \
classical ecc quantum ecq

do_belt_as_fence_units_actual_trunc_9sibling_v.sh \
elementary_fence_units_actual eua \
action faa angle       faa charge fac energy fae length fal \
mass   fam temperature fat time   fat none   fan

do_belt_as_fence_units_trunc_2sibling_v.sh \
elementary_fence_units efu \
actual eua canonical euc

# fence_basic_stalk

do_belt_as_doublet_fence_basic_stalk_v.sh  elementary_fence_basic  boolean  ebb 
do_belt_as_doublet_fence_basic_stalk_v.sh  elementary_fence_basic  float    ebf 
do_belt_as_doublet_fence_basic_stalk_v.sh  elementary_fence_basic  integer  ebi 
do_belt_as_doublet_fence_basic_stalk_v.sh  elementary_fence_basic  string   ebs 

# fence_trunc basic 

do_belt_as_fence_basic_trunc_4sibling_v.sh \
elementary_fence_basic efb  boolean ebb  float ebf  integer ebi  string ebs 

# fence_trunc

do_belt_as_fence_trunc_3sibling_v.sh  \
elementary_fence efe basic efb color efc units efa

# ------ Border ------

# border_bud coordinate_homogeneous

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_cartesian ehc x  ecx elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_cartesian ehy y  ecy elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_cartesian ehz z  ecz elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_linear ehl x  elx elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_planar ehp x  epx elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_planar ehp y  epy elementary_fence_units_actual efa length fal mle

# border_trunc_1belte coordinate_homogeneous

do_belt_as_doublet_border_trunc_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_linear   ehl x elx \
elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_planar  ehp x epx y epy \
elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_trunc_3sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous_cartesian ehc x ecx y ecy z ecz \
elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_trunc_3sibling_1units_2beltee_v.sh \
elementary_border_coordinate_homogeneous ech cartesian ehc planar    ehp linear    ehl \
elementary_fence_units_actual efa length fal mle

# border_bud coordinate_heterogeneous

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical ehc phi   ecp elementary_fence_units_actual efa angle  faa man 

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical ehc rho   ecr elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical ehc zed   ecz elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_polar ehp rho   epr elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_polar ehp theta ept elementary_fence_units_actual efa angle  faa man

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_spherical ehs  phi   esp elementary_fence_units_actual efa angle  faa man

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_spherical ehs rho   esr elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_spherical eht  theta est elementary_fence_units_actual efa angle  faa man

# border_trunc  coordinate heterogeneous (2 units)

do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_cylindrical ehc rho ecr phi ecp zed ecz \
elementary_fence_units_actual efa angle  faa length fal 

do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_spherical ehs rho ecr phi ecp theta ect \
elementary_fence_units_actual        efa angle  faa length fal 

do_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous_polar  ehp rho ecr theta ect \
elementary_fence_units_actual        efa angle  faa length fal 

do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh \
elementary_border_coordinate_heterogeneous ech cylindrical ehc spherical ehs polar ehp \
elementary_fence_units_actual        efa angle  faa length fal 

# coordinate as_uno border

do_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.sh \
elementary_border_coordinate  ebc heterogeneous ehe homogeneous   eho \
elementary_fence_units_actual  efa angle  faa length fal 

# parameter aopef

# parameter as_doublet border_bud

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_parameter_aopef epa coefficient eac \
elementary_fence_units_actual efa length fal  mle 

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh  \
elementary_border_parameter_aopef epa exponent    eae \
elementary_fence_units_actual efa length fal mle

# parameter as_doublet border_trunc

do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh \
elementary_border_parameter_aopef epa coefficient eac exponent    eae \
elementary_fence_units_actual efa length fal mle

# parameter ecppef

# parameter as_doublet border_bud

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh \
elementary_border_parameter_ecppef epe coefficient eec \
elementary_fence_units_actual efa length fal mle

do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh  \
elementary_border_parameter_ecppef epe exponent eee \
elementary_fence_units_actual efa length fal mle

# parameter as_doublet border_trunc

do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh \
elementary_border_parameter_ecppef epe coefficient eec exponent eee \
elementary_fence_units_actual efa length fal mle

# parameter as_doublet border_trunc

do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh \
elementary_border_parameter ebp aopef  epa ecppef epe \
elementary_fence_units_actual efa length fal mle

# border_trunc

do_belt_as_doublet_border_self_2sibling_2units_2beltee_v.sh \
elementary_border ebo coordinate ebc parameter  ebp \
elementary_fence_units_actual efa angle fal length fal 

echo " "
echo " mv Elementary_*.ml ../"
echo " "

exit


