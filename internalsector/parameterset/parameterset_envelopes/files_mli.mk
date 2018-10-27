ENVELOPEE_TV_MLI := \
Parameter_envelopee_t.mli \
Parameter_envelopee_v.mli \
Parameter_envelopee_tuple_t.mli \
Parameter_envelopee_tuple_v.mli \
 
ENVELOPES_T_MLI := \
Parameter_set_fence_envelope_t.mli \
Parameter_set_body_tuple_envelope_t.mli \
Parameter_set_body_envelope_t.mli \
Parameter_envelope_t.mli \
 
ENVELOPES_V_MLI := $(subst _envelope_t.mli,_envelope_v.mli,$(ENVELOPES_T_MLI))
ENVELOPES_TV_MLI := $(ENVELOPES_T_MLI) $(ENVELOPES_V_MLI)
 
FILES_MLI:= \
$(ENVELOPEE_TV_MLI) \
$(ENVELOPES_TV_MLI) \
Measured_float_tuple_by_parameter_set_body_tag_provider_v.mli \
Measured_float_tuple_by_parameter_tag_provider_v.mli