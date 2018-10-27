(** {3 A Symbol for a Molecule_forked_threeforked.} *)

(** {6 Displaying.} *)

val name :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_3 from Molecule_forked_threeforked.} *)

(* No Extraction from doublet Fake_3. *)

(** {6 Querying.} *)

(** {6 Querying Fake_3 in Molecule_forked_threeforked.} *)

(* No Query from Fake_3 0. *)

(** {6 Upgrading from Fake_3 to Molecule_forked_threeforked.} *)

val fake_3 : Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_forked_threeforked 12 January 2011. *)

