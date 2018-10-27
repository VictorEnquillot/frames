FILES_T_MLI :=  \
  Zerotied_forked_formula_t.mli \
   Zerotied_fragment_fourblocks_formula_t.mli \
   Zerotied_fragment_threeblocks_formula_t.mli \
   Zerotied_fragment_twoblocks_formula_t.mli \
  Zerotied_fragment_formula_t.mli \
    Zerotied_block_none_none_ax4e1_tetrahedral_formula_t.mli \
   Zerotied_block_none_none_ax4_formula_t.mli \
    Zerotied_block_none_none_ax3e1_trigonalpyramidal_formula_t.mli \
    Zerotied_block_none_none_ax3e0_trigonalplanar_formula_t.mli \
   Zerotied_block_none_none_ax3_formula_t.mli \
    Zerotied_block_none_none_ax2e3_linear_formula_t.mli \
    Zerotied_block_none_none_ax2e2_bent_formula_t.mli \
    Zerotied_block_none_none_ax2e1_bent_formula_t.mli \
    Zerotied_block_none_none_ax2e0_linear_formula_t.mli \
   Zerotied_block_none_none_ax2_formula_t.mli \
   Zerotied_block_none_none_ax1_formula_t.mli \
  Zerotied_block_formula_t.mli \
  Zerotied_atom_formula_t.mli \
 Molecule_formula_t.mli \
Chemical_formula_t.mli \

FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#figureset_symbol_by_sole_index_provider_v.mli \

