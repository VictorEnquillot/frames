(** {3 A Symbol for a Atom_twotied_conjugated_conjugated.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting N_cc from Atom_twotied_conjugated_conjugated.} *)

(* No Extraction from doublet n_cc. *)

(** {6 Extracting O_cc from Atom_twotied_conjugated_conjugated.} *)

(* No Extraction from doublet o_cc. *)

(** {6 Querying.} *)

(** {6 Querying N_cc in Atom_twotied_conjugated_conjugated.} *)

(* No Query from n_cc 0. *)

(** {6 Querying O_cc in Atom_twotied_conjugated_conjugated.} *)

(* No Query from o_cc 0. *)

(** {6 Upgrading from N_cc to Atom_twotied_conjugated_conjugated.} *)

val n_cc : Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol;;

(** {6 Upgrading from O_cc to Atom_twotied_conjugated_conjugated.} *)

val o_cc : Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_conjugated_conjugated 12 January 2011. *)

