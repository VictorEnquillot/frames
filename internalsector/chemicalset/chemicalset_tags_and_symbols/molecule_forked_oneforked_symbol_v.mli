(** {3 A Symbol for a Molecule_forked_oneforked.} *)

(** {6 Displaying.} *)

val name :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Guanidine from Molecule_forked_oneforked.} *)

(* No Extraction from doublet Guanidine. *)

(** {6 Querying.} *)

(** {6 Querying Guanidine in Molecule_forked_oneforked.} *)

(* No Query from Guanidine 0. *)

(** {6 Upgrading from Guanidine to Molecule_forked_oneforked.} *)

val guanidine : Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_forked_oneforked 12 January 2011. *)

