(** {3 A Symbol for a Molecule_aminoacid_fragmented.} *)

(** {6 Modules.} *)

 (* proline is a bare constructor no module can be defined *)
module Mars_t = Molecule_aminoacid_regular_symbol_t

(** {6 Type.} *)

type molecule_aminoacid_fragmented_symbol =
  | Proline
  | Molecule_aminoacid_regular_symbol of Mars_t.molecule_aminoacid_regular_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_aminoacid_fragmented 12 January 2011. *)

