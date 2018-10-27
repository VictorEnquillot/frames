FILES_T_MLI :=  \
  Operation_value_t.mli \
 Token_value_t.mli \
   Expression_atomic_digit_value_t.mli \
  Expression_atomic_value_t.mli \
 Expression_value_t.mli \
Natural_value_t.mli \

FILES_V_MLI := $(subst value_t,value_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figure_value_by_sole_index_provider_v.mli \

