(** {3 A Symbol for a Atom_fivetied.} *)

(** {6 Displaying.} *)

val name :
  Atom_fivetied_symbol_t.atom_fivetied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_fivetied_symbol_t.atom_fivetied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Cl_5s from Atom_fivetied.} *)

(* No Extraction from doublet cl_5s. *)

(** {6 Querying.} *)

(** {6 Querying Cl_5s in Atom_fivetied.} *)

(* No Query from cl_5s 0. *)

(** {6 Upgrading from Cl_5s to Atom_fivetied.} *)

val cl_5s : Atom_fivetied_symbol_t.atom_fivetied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_fivetied 12 January 2011. *)

