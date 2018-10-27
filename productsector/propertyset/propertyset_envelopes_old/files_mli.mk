ENVELOPES_T_MLI := \
    Property_operand_fence_external_envelope_t.mli \
    Property_operand_body_target_created_envelope_t.mli \
#    Property_operand_body_target_calculated_envelope_t.mli \
#   Property_operand_body_target_measured_envelope_t.mli \
#   Property_operand_body_target_envelope_t.mli \
# Property_operand_body_envelope_t.mli \
# Property_envelope_t.mli \
 
ENVELOPES_V_MLI := $(subst _envelope_t.mli,_envelope_v.mli,$(ENVELOPES_T_MLI))
ENVELOPES_TV_MLI := $(ENVELOPES_T_MLI) $(ENVELOPES_V_MLI)
 
FILES_MLI:= \
$(ENVELOPES_TV_MLI) \
