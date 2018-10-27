FIGURE_CLOSURE_T_MLI := \
         Figure_point_envelope_t.mli \
       Figure_segment_envelope_t.mli \
       Figure_triangle_scalene_envelope_t.mli \
       Figure_triangle_isosceles_envelope_t.mli \
     Figure_fence_envelope_t.mli \
     Figure_triangle_envelope_t.mli \
     Figure_body_envelope_t.mli \
   Figure_set_envelope_t.mli \
     Figure_database_envelope_t.mli \
     Figure_inputfile_envelope_t.mli \
   Figure_createdby_envelope_t.mli \
     Figure_domain_envelope_t.mli \
   Figure_context_envelope_t.mli \
 Figure_envelope_t.mli \

FIGURE_CLOSURE_V_MLI := $(subst _t.mli,_v.mli,$(FIGURE_CLOSURE_T_MLI)) 
FIGURE_CLOSURE_TV_MLI := $(FIGURE_CLOSURE_T_MLI) $(FIGURE_CLOSURE_V_MLI)
