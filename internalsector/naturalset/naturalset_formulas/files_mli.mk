FILES_T_MLI :=  \
  Operation_formula_t.mli \
 Token_formula_t.mli \
   Expression_atomic_digit_formula_t.mli \
  Expression_atomic_formula_t.mli \
 Expression_formula_t.mli \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figure_formula_by_sole_index_provider_v.mli \

