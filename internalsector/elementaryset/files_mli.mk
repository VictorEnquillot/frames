ONLY_SYMBOLS_T_MLI := \
   Units_time_symbol_t.mli \
   Units_temperature_symbol_t.mli \
   Units_mass_symbol_t.mli \
   Units_length_symbol_t.mli \
   Units_energy_symbol_t.mli \
   Units_charge_symbol_t.mli \
   Units_angle_symbol_t.mli \
   Units_action_symbol_t.mli \
  Units_symbol_t.mli \
  Color_symbol_t.mli \
 Elementary_symbol_t.mli \
 
SYMBOLS_T_MLI := \
   Coordinate_spherical_symbol_t.mli \
   Coordinate_polar_symbol_t.mli \
   Coordinate_cylindrical_symbol_t.mli \
   Coordinate_cartesian_symbol_t.mli \
  Coordinate_symbol_t.mli \
 
INTERFACES_V_MLI := \
Coordinate_units_by_coordinate_tag_provider_v.mli \
# Measure_by_coordinate_tag_provider_v.mli \

MAIN_REGISTER_MLI := \
Elementary_symbol_by_sole_index_register_v.mli \
Elementary_symbol_main_register_v.mli \
Elementary_symbol_by_sole_index_extractor_v.mli \
Elementary_symbol_by_sole_index_provider_v.mli \
 
ONLY_SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(ONLY_SYMBOLS_T_MLI)) 
ONLY_SYMBOLS_TV_MLI := $(ONLY_SYMBOLS_T_MLI) $(ONLY_SYMBOLS_V_MLI)

SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)

TAGS_TV_MLI := $(subst _symbol_,_tag_,$(SYMBOLS_TV_MLI))
FORMULAS_TV_MLI := $(subst _symbol_,_formula_,$(SYMBOLS_TV_MLI))
VALUES_TV_MLI := $(subst _symbol_,_value_,$(SYMBOLS_TV_MLI))


FILES_MLI := \
$(SYMBOLS_TV_MLI) \
$(ONLY_SYMBOLS_TV_MLI) \
$(TAGS_TV_MLI) \
$(MAIN_REGISTER_MLI) \
$(INTERFACES_V_MLI) \
$(FORMULAS_TV_MLI) \
#$(VALUES_TV_MLI) \

 