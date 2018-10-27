(** {3 A Symbol for a Molecule_forked.} *)


let name :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_forked_symbol_off_molecule_forked_oneforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Mf1s_v
;;

val molecule_forked_symbol_off_molecule_forked_twoforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Mf2s_v
;;

val molecule_forked_symbol_off_molecule_forked_threeforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Mf3s_v
;;

val molecule_forked_symbol_off_molecule_forked_moreforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Mfms_v
;;


(** {6 Querying.} *)

val is_molecule_forked_symbol_off_molecule_forked_oneforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    bool
;;

val is_molecule_forked_symbol_off_molecule_forked_twoforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    bool
;;

val is_molecule_forked_symbol_off_molecule_forked_threeforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    bool
;;

val is_molecule_forked_symbol_off_molecule_forked_moreforked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_forked_symbol_of_molecule_forked_oneforked_symbol :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    Mfs_v
;;

val Guanidine : Molecule_forked_symbol_t.molecule_forked_symbol;;

val molecule_forked_symbol_of_molecule_forked_twoforked_symbol :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    Mfs_v
;;

val Fake_2 : Molecule_forked_symbol_t.molecule_forked_symbol;;

val molecule_forked_symbol_of_molecule_forked_threeforked_symbol :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    Mfs_v
;;

val Fake_3 : Molecule_forked_symbol_t.molecule_forked_symbol;;

val molecule_forked_symbol_of_molecule_forked_moreforked_symbol :
  Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol ->
    Mfs_v
;;

val Fake_4 : Molecule_forked_symbol_t.molecule_forked_symbol;;



(** created by ./generator molecule_forked v symbol at 9:28 26 Apr 2011. *)



