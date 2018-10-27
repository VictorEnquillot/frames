(** {3 A Symbol for a Molecule_forked_twoforked.} *)

(** {6 Displaying.} *)

val name :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_2 from Molecule_forked_twoforked.} *)

(* No Extraction from doublet Fake_2. *)

(** {6 Querying.} *)

(** {6 Querying Fake_2 in Molecule_forked_twoforked.} *)

(* No Query from Fake_2 0. *)

(** {6 Upgrading from Fake_2 to Molecule_forked_twoforked.} *)

val fake_2 : Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_forked_twoforked 12 January 2011. *)

