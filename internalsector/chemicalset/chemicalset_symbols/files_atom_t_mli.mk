FILES_T_MLI :=  \
  Atom_sixtied_formula_t.mli \
  Atom_fivetied_formula_t.mli \
   Atom_fourtied_singlesinglesinglesingle_ax4e1_tetrahedral_formula_t.mli \
  Atom_fourtied_formula_t.mli \
   Atom_threetied_singlesinglesingle_formula_t.mli \
   Atom_threetied_singlesingledouble_formula_t.mli \
     Atom_threetied_singledoublesingle_ax3e0_trigonalplanar_formula_t.mli \
    Atom_threetied_singledoublesingle_ax3_formula_t.mli \
   Atom_threetied_singledoublesingle_formula_t.mli \
   Atom_threetied_singleconjugatedconjugated_formula_t.mli \
     Atom_threetied_doublesinglesingle_ax3e0_trigonalplanar_formula_t.mli \
    Atom_threetied_doublesinglesingle_ax3_formula_t.mli \
   Atom_threetied_doublesinglesingle_formula_t.mli \
   Atom_threetied_doubledoubledouble_formula_t.mli \
   Atom_threetied_conjugatedconjugatedconjugated_formula_t.mli \
  Atom_threetied_formula_t.mli \
     Atom_twotied_doubledouble_ax2_linear_formula_t.mli \
    Atom_twotied_doubledouble_ax2_formula_t.mli \
   Atom_twotied_doubledouble_formula_t.mli \
     Atom_twotied_conjugateddouble_ax2e0_linear_formula_t.mli \
    Atom_twotied_conjugateddouble_ax2_formula_t.mli \
   Atom_twotied_conjugateddouble_formula_t.mli \
     Atom_twotied_conjugatedconjugated_ax2e0_linear_formula_t.mli \
    Atom_twotied_conjugatedconjugated_ax2_formula_t.mli \
   Atom_twotied_conjugatedconjugated_formula_t.mli \
     Atom_twotied_singletriple_ax2e0_linear_formula_t.mli \
    Atom_twotied_singletriple_ax2_formula_t.mli \
   Atom_twotied_singletriple_formula_t.mli \
   Atom_twotied_singledouble_formula_t.mli \
   Atom_twotied_singleconjugated_formula_t.mli \
     Atom_twotied_singlesingle_ax2e3_linear_formula_t.mli \
     Atom_twotied_singlesingle_ax2e0_bent_formula_t.mli \
     Atom_twotied_singlesingle_ax2e0_linear_formula_t.mli \
    Atom_twotied_singlesingle_ax2_formula_t.mli \
    Atom_twotied_singlesingle_ax1_formula_t.mli \
   Atom_twotied_singlesingle_formula_t.mli \
  Atom_twotied_formula_t.mli \
   Atom_onetied_triple_formula_t.mli \
   Atom_onetied_double_formula_t.mli \
    Atom_onetied_conjugated_ax1en_diatomic_formula_t.mli \
   Atom_onetied_conjugated_formula_t.mli \
   Atom_onetied_single_formula_t.mli \
   Atom_onetied_halfbridge_formula_t.mli \
  Atom_onetied_formula_t.mli \
 Atom_formula_t.mli \
Chemical_formula_t.mli \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figure_symbol_by_sole_index_provider_v.mli \

