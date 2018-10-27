(** {3 A Symbol for a Atom_onetied_triple.} *)

(** {6 Displaying.} *)

val name :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting N_t from Atom_onetied_triple.} *)

(* No Extraction from doublet n_t. *)

(** {6 Extracting O_t from Atom_onetied_triple.} *)

(* No Extraction from doublet o_t. *)

(** {6 Querying.} *)

(** {6 Querying N_t in Atom_onetied_triple.} *)

(* No Query from n_t 0. *)

(** {6 Querying O_t in Atom_onetied_triple.} *)

(* No Query from o_t 0. *)

(** {6 Upgrading from N_t to Atom_onetied_triple.} *)

val n_t : Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol;;

(** {6 Upgrading from O_t to Atom_onetied_triple.} *)

val o_t : Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_onetied_triple 12 January 2011. *)

