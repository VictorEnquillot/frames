MEASURES_T_MLI := \
Measure_canonical_quantum_t.mli \
Measure_canonical_classical_t.mli \
Measure_canonical_t.mli \
 \
Measure_actual_none_t.mli \
Measure_actual_time_t.mli \
Measure_actual_temperature_t.mli \
Measure_actual_mass_t.mli \
Measure_actual_length_t.mli \
Measure_actual_energy_t.mli \
Measure_actual_charge_t.mli \
Measure_actual_angle_t.mli \
Measure_actual_action_t.mli \
Measure_actual_t.mli \
 \
Measure_t.mli \
 
MEASURES_V_MLI := $(subst _t.mli,_v.mli,$(MEASURES_T_MLI)) 
MEASURES_TV_MLI := $(MEASURES_T_MLI) $(MEASURES_V_MLI)
 
READEES_T_MLI := \
Readee_basic_string_t.mli \
Readee_basic_float_t.mli \
Readee_basic_integer_t.mli \
Readee_basic_boolean_t.mli \
Readee_basic_t.mli \
Readee_t.mli \
 
READEES_V_MLI := $(subst _t,_v,$(READEES_T_MLI)) 
READEES_TV_MLI := $(READEES_T_MLI) $(READEES_V_MLI)
 
CLOSURES_T_MLI := \
Closure_color_t.mli \
Closure_basic_t.mli \
Closure_units_t.mli \
Closure_t.mli \
 
CLOSURES_V_MLI := $(subst _t,_v,$(CLOSURES_T_MLI)) 
CLOSURES_TV_MLI := $(CLOSURES_T_MLI) $(CLOSURES_V_MLI)
 
