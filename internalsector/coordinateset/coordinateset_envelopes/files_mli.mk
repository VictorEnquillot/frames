ENVELOPEE_TV_MLI := \
Coordinate_envelopee_t.mli \
Coordinate_envelopee_v.mli \
Coordinate_envelopee_tuple_t.mli \
Coordinate_envelopee_tuple_v.mli \
 
ENVELOPES_T_MLI := \
Coordinate_set_fence_envelope_t.mli \
Coordinate_set_body_envelope_t.mli \
Coordinate_envelope_t.mli \
 
ENVELOPES_V_MLI := $(subst _envelope_t.mli,_envelope_v.mli,$(ENVELOPES_T_MLI))
ENVELOPES_TV_MLI := $(ENVELOPES_T_MLI) $(ENVELOPES_V_MLI)
 
FILES_MLI:= \
$(ENVELOPEE_TV_MLI) \
$(ENVELOPES_TV_MLI) \
Coordinate_set_body_tuple_measure_actual_conversions_v.mli \
Coordinate_set_fence_symbol_tuple_conversions_v.mli \
Coordinate_set_body_tuple_homogeneous_envelope_tuple_by_coordinate_set_body_tuple_tag_provider_v.mli \
Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v.mli \
Measured_float_tuple_by_coordinate_tag_provider_v.mli \
 