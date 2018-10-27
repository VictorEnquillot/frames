BELTS_T_MLI := \
     Elementary_fence_units_actual_none_belt_t.mli \
     Elementary_fence_units_actual_time_belt_t.mli \
     Elementary_fence_units_actual_temperature_belt_t.mli \
     Elementary_fence_units_actual_mass_belt_t.mli \
     Elementary_fence_units_actual_length_belt_t.mli \
     Elementary_fence_units_actual_energy_belt_t.mli \
     Elementary_fence_units_actual_charge_belt_t.mli \
     Elementary_fence_units_actual_angle_belt_t.mli \
     Elementary_fence_units_actual_action_belt_t.mli \
    Elementary_fence_units_actual_belt_t.mli \
     Elementary_fence_units_canonical_quantum_belt_t.mli \
     Elementary_fence_units_canonical_classical_belt_t.mli \
    Elementary_fence_units_canonical_belt_t.mli \
   Elementary_fence_units_belt_t.mli \
   Elementary_fence_color_belt_t.mli \
    Elementary_fence_basic_string_belt_t.mli \
    Elementary_fence_basic_integer_belt_t.mli \
    Elementary_fence_basic_float_belt_t.mli \
    Elementary_fence_basic_boolean_belt_t.mli \
   Elementary_fence_basic_belt_t.mli \
  Elementary_fence_belt_t.mli \
     Elementary_border_parameter_ecppef_exponent_belt_t.mli \
     Elementary_border_parameter_ecppef_coefficient_belt_t.mli \
    Elementary_border_parameter_ecppef_belt_t.mli \
     Elementary_border_parameter_aopef_exponent_belt_t.mli \
     Elementary_border_parameter_aopef_coefficient_belt_t.mli \
    Elementary_border_parameter_aopef_belt_t.mli \
   Elementary_border_parameter_belt_t.mli \
      Elementary_border_coordinate_homogeneous_planar_y_belt_t.mli \
      Elementary_border_coordinate_homogeneous_planar_x_belt_t.mli \
      Elementary_border_coordinate_homogeneous_linear_x_belt_t.mli \
      Elementary_border_coordinate_homogeneous_cartesian_z_belt_t.mli \
      Elementary_border_coordinate_homogeneous_cartesian_y_belt_t.mli \
      Elementary_border_coordinate_homogeneous_cartesian_x_belt_t.mli \
     Elementary_border_coordinate_homogeneous_planar_belt_t.mli \
     Elementary_border_coordinate_homogeneous_linear_belt_t.mli \
     Elementary_border_coordinate_homogeneous_cartesian_belt_t.mli \
    Elementary_border_coordinate_homogeneous_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_t.mli \
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_t.mli \
     Elementary_border_coordinate_heterogeneous_spherical_belt_t.mli \
     Elementary_border_coordinate_heterogeneous_polar_belt_t.mli \
     Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.mli \
    Elementary_border_coordinate_heterogeneous_belt_t.mli \
   Elementary_border_coordinate_belt_t.mli \
  Elementary_border_belt_t.mli \
  

BELTS_V_MLI := $(subst belt_t,belt_v,$(BELTS_T_MLI)) 
BELTS_TV_MLI := $(BELTS_T_MLI) $(BELTS_V_MLI)
 
FILES_MLI := \
$(BELTS_TV_MLI) \
 