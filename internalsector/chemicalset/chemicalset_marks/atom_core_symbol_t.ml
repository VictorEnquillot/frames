(** {3 The Symbol for a Atom_core.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type atom_core_symbol =
  | Atom_twotied
  | Atom_threetied
  | Atom_core_fourtied_symbol of Atom_core_fourtied_symbol_t.atom_core_fourtied_symbol
  | Atom_core_fivetied_symbol of Atom_core_fivetied_symbol_t.atom_core_fivetied_symbol
  | Atom_core_sixtied_symbol of Atom_core_sixtied_symbol_t.atom_core_sixtied_symbol
;;


(** created by ./generator atom_core implementation symbol at 15:0 13 Mar 2012. *)



