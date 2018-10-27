(** {3 A Symbol for a Atom_onetied_double.} *)

(** {6 Displaying.} *)

val name :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting O_d from Atom_onetied_double.} *)

(* No Extraction from doublet o_d. *)

(** {6 Querying.} *)

(** {6 Querying O_d in Atom_onetied_double.} *)

(* No Query from o_d 0. *)

(** {6 Upgrading from O_d to Atom_onetied_double.} *)

val o_d : Atom_onetied_double_symbol_t.atom_onetied_double_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_onetied_double 12 January 2011. *)

