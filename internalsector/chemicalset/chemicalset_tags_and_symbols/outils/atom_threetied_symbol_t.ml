(** {3 A Symbol for a Atom_threetied.} *)


(** {6 Modules.} *)

module A3ssss_t = Atom_threetied_single_single_single_symbol_t
module A3ssds_t = Atom_threetied_single_single_double_symbol_t
module A3sccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module A3cccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module A3ddds_t = Atom_threetied_double_double_double_symbol_t


(** {6 Typing.} *)

type atom_threetied_symbol =
  | Atom_threetied_single_single_single_symbol of A3ssss_t.atom_threetied_single_single_single_symbol
  | Atom_threetied_single_single_double_symbol of A3ssds_t.atom_threetied_single_single_double_symbol
  | Atom_threetied_single_conjugated_conjugated_symbol of A3sccs_t.atom_threetied_single_conjugated_conjugated_symbol
  | Atom_threetied_conjugated_conjugated_conjugated_symbol of A3cccs_t.atom_threetied_conjugated_conjugated_conjugated_symbol
  | Atom_threetied_double_double_double_symbol of A3ddds_t.atom_threetied_double_double_double_symbol
;;


(** created by ./generator atom_threetied t symbol at 19:13 25 Apr 2011. *)



