(** {3 A Symbol for a Residue_nterminal_fragmented.} *)


(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t


(** {6 Typing.} *)

type residue_nterminal_fragmented_symbol =
  | Molecule_aminoacid_proline
  | Molecule_aminoacid_regular_symbol of Mars_t.molecule_aminoacid_regular_symbol
;;


(** created by ./generator residue_nterminal_fragmented t symbol at 19:13 25 Apr 2011. *)



