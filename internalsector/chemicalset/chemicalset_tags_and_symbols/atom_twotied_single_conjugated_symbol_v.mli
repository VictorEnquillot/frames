(** {3 A Symbol for a Atom_twotied_single_conjugated.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting N_sc from Atom_twotied_single_conjugated.} *)

(* No Extraction from doublet n_sc. *)

(** {6 Extracting O_sc from Atom_twotied_single_conjugated.} *)

(* No Extraction from doublet o_sc. *)

(** {6 Querying.} *)

(** {6 Querying N_sc in Atom_twotied_single_conjugated.} *)

(* No Query from n_sc 0. *)

(** {6 Querying O_sc in Atom_twotied_single_conjugated.} *)

(* No Query from o_sc 0. *)

(** {6 Upgrading from N_sc to Atom_twotied_single_conjugated.} *)

val n_sc : Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol;;

(** {6 Upgrading from O_sc to Atom_twotied_single_conjugated.} *)

val o_sc : Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_single_conjugated 12 January 2011. *)

