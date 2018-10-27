(** {3 A Symbol for a Atom.} *)

(** {6 Modules.} *)

module Azes_t = Atom_zerotied_symbol_t
module Aons_t = Atom_onetied_symbol_t
module Atws_t = Atom_twotied_symbol_t
module Aths_t = Atom_threetied_symbol_t
module Afos_t = Atom_fourtied_symbol_t
module Afvs_t = Atom_fivetied_symbol_t
module Asxs_t = Atom_sixtied_symbol_t

(** {6 Type.} *)

type atom_symbol =
  | Atom_zerotied_symbol of Azes_t.atom_zerotied_symbol
  | Atom_onetied_symbol of Aons_t.atom_onetied_symbol
  | Atom_twotied_symbol of Atws_t.atom_twotied_symbol
  | Atom_threetied_symbol of Aths_t.atom_threetied_symbol
  | Atom_fourtied_symbol of Afos_t.atom_fourtied_symbol
  | Atom_fivetied_symbol of Afvs_t.atom_fivetied_symbol
  | Atom_sixtied_symbol of Asxs_t.atom_sixtied_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom 12 January 2011. *)
