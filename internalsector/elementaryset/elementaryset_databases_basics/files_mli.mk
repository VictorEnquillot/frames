REGISTERS_V_MLI := \
Measure_by_elementary_fence_units_tag_register_v.mli \
Readee_by_elementary_fence_tag_register_v.mli \

MEASURE_CANONICALS_T_MLI := \
Measure_canonical_t.mli \
 
MEASURE_CANONICALS_V_MLI := $(subst _t,_v,$(MEASURE_CANONICALS_T_MLI)) 
MEASURE_CANONICALS_TV_MLI := $(MEASURE_CANONICALS_T_MLI) $(MEASURE_CANONICALS_V_MLI)
 
MEASURES_T_MLI := \
Measure_none_t.mli \
Measure_time_t.mli \
Measure_temperature_t.mli \
Measure_mass_t.mli \
Measure_length_t.mli \
Measure_energy_t.mli \
Measure_charge_t.mli \
Measure_angle_t.mli \
Measure_action_t.mli \
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

FILES_MLI := \
$(MEASURES_TV_MLI) \
$(MEASURE_CANONICALS_TV_MLI) \
$(READEES_TV_MLI) \
$(CLOSURES_TV_MLI) \
$(REGISTERS_V_MLI) \
Measure_by_elementary_fence_units_tag_provider_v.mli \
Measure_canonical_by_elementary_fence_units_tag_provider_v.mli \
Measure_canonical_list_by_elementary_fence_units_tag_provider_v.mli \
Readee_basic_by_elementary_fence_basic_tag_provider_v.mli \
Readee_by_elementary_fence_tag_provider_v.mli \
