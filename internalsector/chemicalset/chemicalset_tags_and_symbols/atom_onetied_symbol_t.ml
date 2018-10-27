(** {3 A Symbol for a Atom_onetied.} *)

(** {6 Modules.} *)

module Aocs_t = Atom_onetied_conjugated_symbol_t
module Aods_t = Atom_onetied_double_symbol_t
module Aoss_t = Atom_onetied_single_symbol_t
module Aots_t = Atom_onetied_triple_symbol_t

(** {6 Type.} *)

type atom_onetied_symbol =
  | Atom_onetied_conjugated_symbol of Aocs_t.atom_onetied_conjugated_symbol
  | Atom_onetied_double_symbol of Aods_t.atom_onetied_double_symbol
  | Atom_onetied_single_symbol of Aoss_t.atom_onetied_single_symbol
  | Atom_onetied_triple_symbol of Aots_t.atom_onetied_triple_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_onetied 12 January 2011. *)

