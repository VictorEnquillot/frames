READEE_T_MLI :=  \
Readee_measure_t.mli \
Readee_color_t.mli \
Readee_basic_boolean_t.mli \
Readee_basic_float_t.mli \
Readee_basic_integer_t.mli \
Readee_basic_string_t.mli \
Readee_basic_t.mli \
Readee_t.mli \
Closure_t.mli \
 
READEE_V_MLI := $(subst _t.ml,_v.ml,$(READEE_T_MLI)) 
READEE_TV_MLI := $(READEE_T_MLI) $(READEE_V_MLI)
 
FILES_MLI := \
$(READEE_TV_MLI) \
