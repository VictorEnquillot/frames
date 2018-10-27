(** {3 A Symbol for a Atom_threetied.} *)

(** {6 Modules.} *)

module Assss_t = Atom_threetied_single_single_single_symbol_t
module Assds_t = Atom_threetied_single_single_double_symbol_t
module Asccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module Acccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module Addds_t = Atom_threetied_double_double_double_symbol_t

(** {6 Type.} *)

type atom_threetied_symbol =
  | Atom_threetied_single_single_single_symbol of Assss_t.atom_threetied_single_single_single_symbol
  | Atom_threetied_single_single_double_symbol of Assds_t.atom_threetied_single_single_double_symbol
  | Atom_threetied_single_conjugated_conjugated_symbol of Asccs_t.atom_threetied_single_conjugated_conjugated_symbol
  | Atom_threetied_conjugated_conjugated_conjugated_symbol of Acccs_t.atom_threetied_conjugated_conjugated_conjugated_symbol
  | Atom_threetied_double_double_double_symbol of Addds_t.atom_threetied_double_double_double_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_threetied 12 January 2011. *)

