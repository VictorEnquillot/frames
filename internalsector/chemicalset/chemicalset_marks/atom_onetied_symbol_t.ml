(** {3 The Symbol for a Atom_onetied.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type atom_onetied_symbol =
  | Atom_onetied_conjugated_symbol of Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol
  | Atom_onetied_double_symbol of Atom_onetied_double_symbol_t.atom_onetied_double_symbol
  | Atom_onetied_single_symbol of Atom_onetied_single_symbol_t.atom_onetied_single_symbol
  | Atom_onetied_triple_symbol of Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol
;;


(** created by ./generator atom_onetied implementation symbol at 15:0 13 Mar 2012. *)



