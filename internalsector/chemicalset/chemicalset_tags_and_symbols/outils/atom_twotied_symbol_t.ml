(** {3 A Symbol for a Atom_twotied.} *)


(** {6 Modules.} *)

module A2sss_t = Atom_twotied_single_single_symbol_t
module A2scs_t = Atom_twotied_single_conjugated_symbol_t
module A2sds_t = Atom_twotied_single_double_symbol_t
module A2sts_t = Atom_twotied_single_triple_symbol_t
module A2ccs_t = Atom_twotied_conjugated_conjugated_symbol_t
module A2cds_t = Atom_twotied_conjugated_double_symbol_t
module A2dds_t = Atom_twotied_double_double_symbol_t


(** {6 Typing.} *)

type atom_twotied_symbol =
  | Atom_twotied_single_single_symbol of A2sss_t.atom_twotied_single_single_symbol
  | Atom_twotied_single_conjugated_symbol of A2scs_t.atom_twotied_single_conjugated_symbol
  | Atom_twotied_single_double_symbol of A2sds_t.atom_twotied_single_double_symbol
  | Atom_twotied_single_triple_symbol of A2sts_t.atom_twotied_single_triple_symbol
  | Atom_twotied_conjugated_conjugated_symbol of A2ccs_t.atom_twotied_conjugated_conjugated_symbol
  | Atom_twotied_conjugated_double_symbol of A2cds_t.atom_twotied_conjugated_double_symbol
  | Atom_twotied_double_double_symbol of A2dds_t.atom_twotied_double_double_symbol
;;


(** created by ./generator atom_twotied t symbol at 19:13 25 Apr 2011. *)



