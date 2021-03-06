(** {3 A Symbol for a Atom.} *)


(** {6 Modules.} *)

module A6s_t = Atom_sixtied_symbol_t
module A5s_t = Atom_fivetied_symbol_t
module A4s_t = Atom_fourtied_symbol_t
module A3s_t = Atom_threetied_symbol_t
module A2s_t = Atom_twotied_symbol_t
module A1s_t = Atom_onetied_symbol_t
module A0s_t = Atom_zerotied_symbol_t



(** {6 Typing.} *)

type atom_symbol =
  | Atom_zerotied_symbol of A0s_t.atom_zerotied_symbol
  | Atom_onetied_symbol of A1s_t.atom_onetied_symbol
  | Atom_twotied_symbol of A2s_t.atom_twotied_symbol
  | Atom_threetied_symbol of A3s_t.atom_threetied_symbol
  | Atom_fourtied_symbol of A4s_t.atom_fourtied_symbol
  | Atom_fivetied_symbol of A5s_t.atom_fivetied_symbol
  | Atom_sixtied_symbol of A6s_t.atom_sixtied_symbol
;;


(** created by ./generator atom t symbol at 18:46 11 May 2011. *)



