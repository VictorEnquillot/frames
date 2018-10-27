(** {3 A Symbol for a Atom_sixtied.} *)

(** {6 Displaying.} *)

val name :
  Atom_sixtied_symbol_t.atom_sixtied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_sixtied_symbol_t.atom_sixtied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting S_6s from Atom_sixtied.} *)

(* No Extraction from doublet s_6s. *)

(** {6 Querying.} *)

(** {6 Querying S_6s in Atom_sixtied.} *)

(* No Query from s_6s 0. *)

(** {6 Upgrading from S_6s to Atom_sixtied.} *)

val s_6s : Atom_sixtied_symbol_t.atom_sixtied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_sixtied 12 January 2011. *)

