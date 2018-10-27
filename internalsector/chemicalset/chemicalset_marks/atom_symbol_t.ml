(** {3 The Symbol for a Atom.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type atom_symbol =
  | Atom_core_symbol of Atom_core_symbol_t.atom_core_symbol
  | Atom_onetied_symbol of Atom_onetied_symbol_t.atom_onetied_symbol
  | Atom_zerotied_symbol of Atom_zerotied_symbol_t.atom_zerotied_symbol
;;


(** created by ./generator atom implementation symbol at 15:0 13 Mar 2012. *)



