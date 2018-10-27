(** {3 A Symbol for a Molecule_polymer.} *)

(** {6 Modules.} *)

module Pls_t = Polypeptide_symbol_t
module Nas_t = Nucleicacid_symbol_t

(** {6 Type.} *)

type molecule_polymer_symbol =
  | Polypeptide_symbol of Pls_t.polypeptide_symbol
  | Nucleicacid_symbol of Nas_t.nucleicacid_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_polymer 12 January 2011. *)

