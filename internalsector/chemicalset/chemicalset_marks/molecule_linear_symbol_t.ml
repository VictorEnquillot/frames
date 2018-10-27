(** {3 The Symbol for a Molecule_linear.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type molecule_linear_symbol =
  | Molecule_linear_monoatomic_symbol of Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
  | Molecule_linear_diatomic_symbol of Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol
  | Molecule_linear_triatomic_symbol of Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol
  | Molecule_linear_tetratomic_symbol of Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol
  | Molecule_linear_pentatomic_symbol of Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol
  | Molecule_linear_overpentatomic_symbol of Molecule_linear_overpentatomic_symbol_t.molecule_linear_overpentatomic_symbol
;;


(** created by ./generator molecule_linear implementation symbol at 15:1 13 Mar 2012. *)



