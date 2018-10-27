(** {3 A Symbol for a Molecule_aminoacid_fragmented.} *)


(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t


(** {6 Typing.} *)

type molecule_aminoacid_fragmented_symbol =
  | Proline
  | Molecule_aminoacid_regular_symbol of Mars_t.molecule_aminoacid_regular_symbol
;;


(** created by ./generator molecule_aminoacid_fragmented t symbol at 19:13 25 Apr 2011. *)



