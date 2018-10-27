(** {3 A Symbol for a Atom_twotied_single_double.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting N_sd from Atom_twotied_single_double.} *)

(* No Extraction from doublet n_sd. *)

(** {6 Querying.} *)

(** {6 Querying N_sd in Atom_twotied_single_double.} *)

(* No Query from n_sd 0. *)

(** {6 Upgrading from N_sd to Atom_twotied_single_double.} *)

val n_sd : Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_single_double 12 January 2011. *)

