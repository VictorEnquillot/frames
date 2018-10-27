(** {3 A Symbol for a Atom_onetied_conjugated.} *)

(** {6 Displaying.} *)

val name :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting O_c from Atom_onetied_conjugated.} *)

(* No Extraction from doublet o_c. *)

(** {6 Querying.} *)

(** {6 Querying O_c in Atom_onetied_conjugated.} *)

(* No Query from o_c 0. *)

(** {6 Upgrading from O_c to Atom_onetied_conjugated.} *)

val o_c : Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_onetied_conjugated 12 January 2011. *)

