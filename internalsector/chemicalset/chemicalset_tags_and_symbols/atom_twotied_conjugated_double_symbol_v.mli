(** {3 A Symbol for a Atom_twotied_conjugated_double.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_cd from Atom_twotied_conjugated_double.} *)

(* No Extraction from doublet c_cd. *)

(** {6 Querying.} *)

(** {6 Querying C_cd in Atom_twotied_conjugated_double.} *)

(* No Query from c_cd 0. *)

(** {6 Upgrading from C_cd to Atom_twotied_conjugated_double.} *)

val c_cd : Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_conjugated_double 12 January 2011. *)

