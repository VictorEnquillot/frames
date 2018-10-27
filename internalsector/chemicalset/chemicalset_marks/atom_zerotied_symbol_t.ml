(** {3 The Symbol for a Atom_zerotied.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type atom_zerotied_symbol =
  | Atom_zerotied_anion_symbol of Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
  | Atom_zerotied_cation_symbol of Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
  | Atom_zerotied_raregas_symbol of Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
  | Atom_zerotied_halfbridge_symbol of Atom_zerotied_halfbridge_symbol_t.atom_zerotied_halfbridge_symbol
;;


(** created by ./generator atom_zerotied implementation symbol at 15:1 13 Mar 2012. *)



