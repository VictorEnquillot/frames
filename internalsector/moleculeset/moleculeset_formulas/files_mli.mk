FILES_T_MLI :=  \
   molecule_polymer_fromid_formula_t.mli \
   polypeptide_fromid_formula_t.mli \
  molecule_polymer_formula_t.mli \
   molecule_linear_overdiatomic_formula_t.mli \
   molecule_linear_diatomic_formula_t.mli \
  molecule_linear_formula_t.mli \
   molecule_forked_fromid_formula_t.mli \
  molecule_forked_formula_t.mli \
 molecule_formula_t.mli \
  grouping_fromid_formula_t.mli \
 grouping_formula_t.mli \
moleculeset_formula_t.mli \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) \
# $(FILES_V_MLI) \

