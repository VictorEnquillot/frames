FILES_T_MLI :=  \
 Molecule_polymer_symbol_t.mli \
  Molecule_linear_polyatomic_symbol_t.mli \
  Molecule_linear_pentatomic_symbol_t.mli \
  Molecule_linear_tetratomic_symbol_t.mli \
  Molecule_linear_triatomic_symbol_t.mli \
  Molecule_linear_diatomic_symbol_t.mli \
  Molecule_linear_monoatomic_symbol_t.mli \
 Molecule_linear_symbol_t.mli \
  molecule_forked_moreforked_symbol_t.mli \
  molecule_forked_threeforked_symbol_t.mli \
  molecule_forked_twoforked_symbol_t.mli \
  molecule_forked_oneforked_symbol_t.mli \
 Molecule_forked_symbol_t.mli \
 Molecule_dendrimer_symbol_t.mli \
 Molecule_bridged_symbol_t.mli \
   Molecule_aminoacid_fragmented_regular_symbol_t.mli \
  Molecule_aminoacid_fragmented_symbol_t.mli \
  Molecule_aminoacid_segmented_symbol_t.mli \
 Molecule_aminoacid_symbol_t.mli \
Molecule_symbol_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#chemicalset_symbol_by_sole_index_production_provider_v.mli \

