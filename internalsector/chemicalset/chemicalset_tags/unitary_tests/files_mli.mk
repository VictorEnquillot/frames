FILES_T_MLI :=  \
      atom_zerotied_zerotied_cation_plusthree_tag_t.mli \
      atom_zerotied_zerotied_cation_plustwo_tag_t.mli \
      atom_zerotied_zerotied_cation_plusone_tag_t.mli \
     atom_zerotied_zerotied_cation_tag_t.mli \
      atom_zerotied_zerotied_anion_minustwo_tag_t.mli \
      atom_zerotied_zerotied_anion_minusone_tag_t.mli \
     atom_zerotied_zerotied_anion_tag_t.mli \
     atom_zerotied_zerotied_raregas_tag_t.mli \
    atom_zerotied_zerotied_tag_t.mli \
      atom_zerotied_zerotied_cation_plusthree_tag_t.mli \
      atom_zerotied_zerotied_cation_plustwo_tag_t.mli \
      atom_zerotied_zerotied_cation_plusone_tag_t.mli \
     atom_zerotied_zerotied_cation_tag_t.mli \
      atom_zerotied_zerotied_anion_minustwo_tag_t.mli \
      atom_zerotied_zerotied_anion_minusone_tag_t.mli \
     atom_zerotied_zerotied_anion_tag_t.mli \
     atom_zerotied_zerotied_raregas_tag_t.mli \
    atom_zerotied_zerotied_tag_t.mli \
     atom_zerotied_zerotied_cation_plusthree_tag_t.mli \
     atom_zerotied_zerotied_cation_plustwo_tag_t.mli \
     atom_zerotied_zerotied_cation_plusone_tag_t.mli \
    atom_zerotied_zerotied_cation_tag_t.mli \
     atom_zerotied_zerotied_anion_minustwo_tag_t.mli \
     atom_zerotied_zerotied_anion_minusone_tag_t.mli \
    atom_zerotied_zerotied_anion_tag_t.mli \
    atom_zerotied_zerotied_raregas_tag_t.mli \
   atom_zerotied_zerotied_tag_t.mli \
    atom_zerotied_zerotied_cation_plusthree_tag_t.mli \
    atom_zerotied_zerotied_cation_plustwo_tag_t.mli \
    atom_zerotied_zerotied_cation_plusone_tag_t.mli \
   atom_zerotied_zerotied_cation_tag_t.mli \
    atom_zerotied_zerotied_anion_minustwo_tag_t.mli \
    atom_zerotied_zerotied_anion_minusone_tag_t.mli \
   atom_zerotied_zerotied_anion_tag_t.mli \
   atom_zerotied_zerotied_raregas_tag_t.mli \
  atom_zerotied_zerotied_tag_t.mli \

FILES_V_MLI := $(subst tag_t,tag_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#chemicalset_tag_by_sole_index_production_provider_v.mli \

