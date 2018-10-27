(** {3 A Symbol for a Molecule_linear_monoatomic.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from ar 0. *)

(** {12 Extracting He from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from he 0. *)

(** {12 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from kr 0. *)

(** {12 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from ne 0. *)

(** {12 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from xe 0. *)

(** {9 Extracting Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

val atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

val halfbridge_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {12 Extracting Hbc from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbc 0. *)

(** {12 Extracting Hbd from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbd 0. *)

(** {12 Extracting Hbs from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbs 0. *)

(** {12 Extracting Hbt from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbt 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Ar in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from ar 0. *)

(** {12 Querying He in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from he 0. *)

(** {12 Querying Kr in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from kr 0. *)

(** {12 Querying Ne in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from ne 0. *)

(** {12 Querying Xe in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from xe 0. *)

(** {9 Querying Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {9 Querying Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

val is_halfbridge_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
  bool
;;

(** {12 Querying Hbc in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbc 0. *)

(** {12 Querying Hbd in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbd 0. *)

(** {12 Querying Hbs in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbs 0. *)

(** {12 Querying Hbt in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbt 0. *)

(** {6 Upgrading from Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val ar : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val he : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val kr : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val ne : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

val xe : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

val molecule_linear_monoatomic_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

val hbc : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

val hbd : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

val hbs : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

val hbt : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear_monoatomic 12 January 2011. *)

