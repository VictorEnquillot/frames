(** {3 A Symbol for a Molecule_polymer.} *)


(** {6 Modules.} *)

module Pds_t = Polypeptide_symbol_t
module Nus_t = Nucleicacid_symbol_t


(** {6 Typing.} *)

type molecule_polymer_symbol =
  | Polypeptide_symbol of Pds_t.polypeptide_symbol
  | Nucleicacid_symbol of Nus_t.nucleicacid_symbol
;;


(** created by ./generator molecule_polymer t symbol at 19:13 25 Apr 2011. *)



