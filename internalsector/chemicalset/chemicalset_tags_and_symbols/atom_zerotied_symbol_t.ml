(** {3 A Symbol for a Atom_zerotied.} *)

(** {6 Modules.} *)

module Args_t = Atom_zerotied_raregas_symbol_t
module Aans_t = Atom_zerotied_anion_symbol_t
module Acns_t = Atom_zerotied_cation_symbol_t
module Hbs_t = Halfbridge_symbol_t

(** {6 Type.} *)

type atom_zerotied_symbol =
  | Atom_zerotied_raregas_symbol of Args_t.atom_zerotied_raregas_symbol
  | Atom_zerotied_anion_symbol of Aans_t.atom_zerotied_anion_symbol
  | Atom_zerotied_cation_symbol of Acns_t.atom_zerotied_cation_symbol
  | Halfbridge_symbol of Hbs_t.halfbridge_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_zerotied 12 January 2011. *)

