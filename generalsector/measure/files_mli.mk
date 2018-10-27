MEASURE_T_MLI := \
Measure_actual_action_t.mli \
Measure_actual_angle_t.mli \
Measure_actual_charge_t.mli \
Measure_actual_energy_t.mli \
Measure_actual_length_t.mli \
Measure_actual_mass_t.mli \
Measure_actual_none_t.mli \
Measure_actual_temperature_t.mli \
Measure_actual_time_t.mli \
Measure_actual_t.mli \
Measure_canonical_classical_t.mli \
Measure_canonical_quantum_t.mli \
Measure_canonical_t.mli \
Measure_t.mli \
Measure_tuple_t.mli \
Measured_float_list_t.mli \
Measured_float_tuple_t.mli \
United_float_t.mli \
United_float_list_t.mli \
United_float_tuple_t.mli \
United_float_tuple_list_t.mli \
 
MEASURE_V_MLI := $(subst _t.mli,_v.mli,$(MEASURE_T_MLI))
MEASURE_TV_MLI := $(MEASURE_T_MLI) $(MEASURE_V_MLI)
 
FILES_MLI:= \
$(MEASURE_TV_MLI) \
 
