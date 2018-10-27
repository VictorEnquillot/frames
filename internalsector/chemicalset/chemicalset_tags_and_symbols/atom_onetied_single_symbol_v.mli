(** {3 A Symbol for a Atom_onetied_single.} *)

(** {6 Displaying.} *)

val name :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting H_s from Atom_onetied_single.} *)

(* No Extraction from doublet h_s. *)

(** {6 Extracting F_s from Atom_onetied_single.} *)

(* No Extraction from doublet f_s. *)

(** {6 Querying.} *)

(** {6 Querying H_s in Atom_onetied_single.} *)

(* No Query from h_s 0. *)

(** {6 Querying F_s in Atom_onetied_single.} *)

(* No Query from f_s 0. *)

(** {6 Upgrading from H_s to Atom_onetied_single.} *)

val h_s : Atom_onetied_single_symbol_t.atom_onetied_single_symbol;;

(** {6 Upgrading from F_s to Atom_onetied_single.} *)

val f_s : Atom_onetied_single_symbol_t.atom_onetied_single_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_onetied_single 12 January 2011. *)

