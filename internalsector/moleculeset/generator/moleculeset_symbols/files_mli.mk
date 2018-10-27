FILES_T_MLI :=  \
  molecule_polymer_symbol_t.mli \
   molecule_linear_overdiatomic_symbol_t.mli \
   molecule_linear_diatomic_symbol_t.mli \
  molecule_linear_symbol_t.mli \
  molecule_forked_symbol_t.mli \
 molecule_symbol_t.mli \
 grouping_symbol_t.mli \
 fragment_symbol_t.mli \
moleculeset_symbol_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#moleculeset_symbol_by_sole_index_production_provider_v.mli \

