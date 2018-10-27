(** {3 A Symbol for a Residue_nterminal_fragmented.} *)

(** {6 Modules.} *)

 (* molecule_aminoacid_proline is a bare constructor no module can be defined *)
module Mars_t = Molecule_aminoacid_regular_symbol_t

(** {6 Type.} *)

type residue_nterminal_fragmented_symbol =
  | Molecule_aminoacid_proline
  | Molecule_aminoacid_regular_symbol of Mars_t.molecule_aminoacid_regular_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh residue_nterminal_fragmented 12 January 2011. *)

