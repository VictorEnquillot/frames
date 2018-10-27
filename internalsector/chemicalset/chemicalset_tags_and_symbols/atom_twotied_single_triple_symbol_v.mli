(** {3 A Symbol for a Atom_twotied_single_triple.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_st from Atom_twotied_single_triple.} *)

(* No Extraction from doublet c_st. *)

(** {6 Extracting N_st from Atom_twotied_single_triple.} *)

(* No Extraction from doublet n_st. *)

(** {6 Querying.} *)

(** {6 Querying C_st in Atom_twotied_single_triple.} *)

(* No Query from c_st 0. *)

(** {6 Querying N_st in Atom_twotied_single_triple.} *)

(* No Query from n_st 0. *)

(** {6 Upgrading from C_st to Atom_twotied_single_triple.} *)

val c_st : Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol;;

(** {6 Upgrading from N_st to Atom_twotied_single_triple.} *)

val n_st : Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_single_triple 12 January 2011. *)

