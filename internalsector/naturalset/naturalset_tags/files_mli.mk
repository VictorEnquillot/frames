FILES_T_MLI :=  \
  Operation_tag_t.mli \
 Token_tag_t.mli \
   Expression_atomic_digit_tag_t.mli \
  Expression_atomic_tag_t.mli \
 Expression_tag_t.mli \
Natural_tag_t.mli \

FILES_V_MLI := $(subst tag_t,tag_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figure_tag_by_sole_index_provider_v.mli \

