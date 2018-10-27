# include ../coordinateset_symbols/files_coordinate_symbols_mli.mk
COORDINATE_T_MLI :=  \
      Coordinate_set_fence_homogeneous_planar_y_symbol_t.mli \
      Coordinate_set_fence_homogeneous_planar_x_symbol_t.mli \
     Coordinate_set_fence_homogeneous_planar_symbol_t.mli \
      Coordinate_set_fence_homogeneous_linear_x_symbol_t.mli \
     Coordinate_set_fence_homogeneous_linear_symbol_t.mli \
      Coordinate_set_fence_homogeneous_cartesian_z_symbol_t.mli \
      Coordinate_set_fence_homogeneous_cartesian_y_symbol_t.mli \
      Coordinate_set_fence_homogeneous_cartesian_x_symbol_t.mli \
     Coordinate_set_fence_homogeneous_cartesian_symbol_t.mli \
    Coordinate_set_fence_homogeneous_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.mli \
     Coordinate_set_fence_heterogeneous_spherical_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_polar_theta_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_polar_rho_symbol_t.mli \
     Coordinate_set_fence_heterogeneous_polar_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.mli \
      Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.mli \
     Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.mli \
    Coordinate_set_fence_heterogeneous_symbol_t.mli \
   Coordinate_set_fence_symbol_t.mli \
        Coordinate_set_body_tuple_homogeneous_planar_symbol_t.mli \
        Coordinate_set_body_tuple_homogeneous_linear_symbol_t.mli \
        Coordinate_set_body_tuple_homogeneous_cartesian_symbol_t.mli \
      Coordinate_set_body_tuple_homogeneous_symbol_t.mli \
        Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.mli \
        Coordinate_set_body_tuple_heterogeneous_polar_symbol_t.mli \
        Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.mli \
       Coordinate_set_body_tuple_heterogeneous_symbol_t.mli \
     Coordinate_set_body_tuple_symbol_t.mli \
   Coordinate_set_body_symbol_t.mli \
  Coordinate_set_symbol_t.mli \
   Coordinate_context_sector_symbol_t.mli \
   Coordinate_context_domain_symbol_t.mli \
   Coordinate_context_databox_symbol_t.mli \
   Coordinate_context_database_symbol_t.mli \
  Coordinate_context_symbol_t.mli \
 Coordinate_symbol_t.mli \
 
CONTAINERS_T_MLI := $(subst _symbol_t.mli,_container_t.mli,$(COORDINATE_T_MLI))
CONTAINERS_V_MLI := $(subst _container_t.mli,_container_v.mli,$(CONTAINERS_T_MLI))
CONTAINERS_TV_MLI := $(CONTAINERS_T_MLI) $(CONTAINERS_V_MLI)
 
FILES_MLI := \
$(CONTAINERS_TV_MLI) \

