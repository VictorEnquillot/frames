FILES_T_MLI :=  \
      atom_zerotied_zerotied_cation_plusthree_mark_t.mli \
      atom_zerotied_zerotied_cation_plustwo_mark_t.mli \
      atom_zerotied_zerotied_cation_plusone_mark_t.mli \
     atom_zerotied_zerotied_cation_mark_t.mli \
      atom_zerotied_zerotied_anion_minustwo_mark_t.mli \
      atom_zerotied_zerotied_anion_minusone_mark_t.mli \
     atom_zerotied_zerotied_anion_mark_t.mli \
     atom_zerotied_zerotied_raregas_mark_t.mli \
    atom_zerotied_zerotied_mark_t.mli \
      atom_zerotied_zerotied_cation_plusthree_mark_t.mli \
      atom_zerotied_zerotied_cation_plustwo_mark_t.mli \
      atom_zerotied_zerotied_cation_plusone_mark_t.mli \
     atom_zerotied_zerotied_cation_mark_t.mli \
      atom_zerotied_zerotied_anion_minustwo_mark_t.mli \
      atom_zerotied_zerotied_anion_minusone_mark_t.mli \
     atom_zerotied_zerotied_anion_mark_t.mli \
     atom_zerotied_zerotied_raregas_mark_t.mli \
    atom_zerotied_zerotied_mark_t.mli \
     atom_zerotied_zerotied_cation_plusthree_mark_t.mli \
     atom_zerotied_zerotied_cation_plustwo_mark_t.mli \
     atom_zerotied_zerotied_cation_plusone_mark_t.mli \
    atom_zerotied_zerotied_cation_mark_t.mli \
     atom_zerotied_zerotied_anion_minustwo_mark_t.mli \
     atom_zerotied_zerotied_anion_minusone_mark_t.mli \
    atom_zerotied_zerotied_anion_mark_t.mli \
    atom_zerotied_zerotied_raregas_mark_t.mli \
   atom_zerotied_zerotied_mark_t.mli \
    atom_zerotied_zerotied_cation_plusthree_mark_t.mli \
    atom_zerotied_zerotied_cation_plustwo_mark_t.mli \
    atom_zerotied_zerotied_cation_plusone_mark_t.mli \
   atom_zerotied_zerotied_cation_mark_t.mli \
    atom_zerotied_zerotied_anion_minustwo_mark_t.mli \
    atom_zerotied_zerotied_anion_minusone_mark_t.mli \
   atom_zerotied_zerotied_anion_mark_t.mli \
   atom_zerotied_zerotied_raregas_mark_t.mli \
  atom_zerotied_zerotied_mark_t.mli \

FILES_V_MLI := $(subst mark_t,mark_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#chemicalset_mark_by_sole_index_production_provider_v.mli \

