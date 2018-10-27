FILES_T_MLI :=  \
  Operation_symbol_t.mli \
 Token_symbol_t.mli \
   Expression_atomic_digit_symbol_t.mli \
  Expression_atomic_symbol_t.mli \
 Expression_symbol_t.mli \
Natural_symbol_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figure_symbol_by_sole_index_provider_v.mli \

