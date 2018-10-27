(** {3 A Symbol for a Atom_zerotied.} *)


(** {6 Modules.} *)

module A0rs_t = Atom_zerotied_raregas_symbol_t
module A0as_t = Atom_zerotied_anion_symbol_t
module A0cs_t = Atom_zerotied_cation_symbol_t
module Has_t = Halfbridge_symbol_t


(** {6 Typing.} *)

type atom_zerotied_symbol =
  | Atom_zerotied_raregas_symbol of A0rs_t.atom_zerotied_raregas_symbol
  | Atom_zerotied_anion_symbol of A0as_t.atom_zerotied_anion_symbol
  | Atom_zerotied_cation_symbol of A0cs_t.atom_zerotied_cation_symbol
  | Halfbridge_symbol of Has_t.halfbridge_symbol
;;


(** created by ./generator atom_zerotied t symbol at 19:13 25 Apr 2011. *)



