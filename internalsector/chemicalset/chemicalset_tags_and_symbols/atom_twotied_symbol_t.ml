(** {3 A Symbol for a Atom_twotied.} *)

(** {6 Modules.} *)

module Asss_t = Atom_twotied_single_single_symbol_t
module Ascs_t = Atom_twotied_single_conjugated_symbol_t
module Asds_t = Atom_twotied_single_double_symbol_t
module Asts_t = Atom_twotied_single_triple_symbol_t
module Accs_t = Atom_twotied_conjugated_conjugated_symbol_t
module Acds_t = Atom_twotied_conjugated_double_symbol_t
module Adds_t = Atom_twotied_double_double_symbol_t

(** {6 Type.} *)

type atom_twotied_symbol =
  | Atom_twotied_single_single_symbol of Asss_t.atom_twotied_single_single_symbol
  | Atom_twotied_single_conjugated_symbol of Ascs_t.atom_twotied_single_conjugated_symbol
  | Atom_twotied_single_double_symbol of Asds_t.atom_twotied_single_double_symbol
  | Atom_twotied_single_triple_symbol of Asts_t.atom_twotied_single_triple_symbol
  | Atom_twotied_conjugated_conjugated_symbol of Accs_t.atom_twotied_conjugated_conjugated_symbol
  | Atom_twotied_conjugated_double_symbol of Acds_t.atom_twotied_conjugated_double_symbol
  | Atom_twotied_double_double_symbol of Adds_t.atom_twotied_double_double_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh atom_twotied 12 January 2011. *)

