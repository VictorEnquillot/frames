(** {3 A Symbol for a Molecule_forked.} *)

(** {6 Displaying.} *)

val name :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_forked_oneforked from Molecule_forked.} *)

val molecule_forked_oneforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol
;;

(** {9 Extracting Guanidine from Molecule_forked_oneforked from Molecule_forked.} *)

(* No Extraction from doublet Guanidine. *)

(** {6 Extracting Molecule_forked_twoforked from Molecule_forked.} *)

val molecule_forked_twoforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol
;;

(** {9 Extracting Fake_2 from Molecule_forked_twoforked from Molecule_forked.} *)

(* No Extraction from doublet Fake_2. *)

(** {6 Extracting Molecule_forked_threeforked from Molecule_forked.} *)

val molecule_forked_threeforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol
;;

(** {9 Extracting Fake_3 from Molecule_forked_threeforked from Molecule_forked.} *)

(* No Extraction from doublet Fake_3. *)

(** {6 Extracting Molecule_forked_moreforked from Molecule_forked.} *)

val molecule_forked_moreforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol
;;

(** {9 Extracting Fake_4 from Molecule_forked_moreforked from Molecule_forked.} *)

(* No Extraction from doublet Fake_4. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_forked_oneforked in Molecule_forked.} *)

val is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
  bool
;;

(** {9 Querying Guanidine in Molecule_forked_oneforked in Molecule_forked.} *)

(* No Query from Guanidine 0. *)

(** {6 Querying Molecule_forked_twoforked in Molecule_forked.} *)

val is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
  bool
;;

(** {9 Querying Fake_2 in Molecule_forked_twoforked in Molecule_forked.} *)

(* No Query from Fake_2 0. *)

(** {6 Querying Molecule_forked_threeforked in Molecule_forked.} *)

val is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
  bool
;;

(** {9 Querying Fake_3 in Molecule_forked_threeforked in Molecule_forked.} *)

(* No Query from Fake_3 0. *)

(** {6 Querying Molecule_forked_moreforked in Molecule_forked.} *)

val is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
  bool
;;

(** {9 Querying Fake_4 in Molecule_forked_moreforked in Molecule_forked.} *)

(* No Query from Fake_4 0. *)

(** {6 Upgrading from Molecule_forked_oneforked to Molecule_forked.} *)

val molecule_forked_symbol_of_molecule_forked_oneforked_symbol :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {9 Upgrading from Guanidine through Molecule_forked_oneforked to Molecule_forked.} *)

val guanidine : Molecule_forked_symbol_t.molecule_forked_symbol;;

(** {6 Upgrading from Molecule_forked_twoforked to Molecule_forked.} *)

val molecule_forked_symbol_of_molecule_forked_twoforked_symbol :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {9 Upgrading from Fake_2 through Molecule_forked_twoforked to Molecule_forked.} *)

val fake_2 : Molecule_forked_symbol_t.molecule_forked_symbol;;

(** {6 Upgrading from Molecule_forked_threeforked to Molecule_forked.} *)

val molecule_forked_symbol_of_molecule_forked_threeforked_symbol :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {9 Upgrading from Fake_3 through Molecule_forked_threeforked to Molecule_forked.} *)

val fake_3 : Molecule_forked_symbol_t.molecule_forked_symbol;;

(** {6 Upgrading from Molecule_forked_moreforked to Molecule_forked.} *)

val molecule_forked_symbol_of_molecule_forked_moreforked_symbol :
  Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {9 Upgrading from Fake_4 through Molecule_forked_moreforked to Molecule_forked.} *)

val fake_4 : Molecule_forked_symbol_t.molecule_forked_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_forked 12 January 2011. *)

