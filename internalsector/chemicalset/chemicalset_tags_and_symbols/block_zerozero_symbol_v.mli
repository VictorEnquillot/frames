(** {3 A Symbol for a Block_zerozero.} *)

(** {6 Displaying.} *)

val name :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_raregas_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from ar 0. *)

(** {12 Extracting He from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from he 0. *)

(** {12 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from kr 0. *)

(** {12 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from ne 0. *)

(** {12 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from xe 0. *)

(** {9 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_anion_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_cation_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

val atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Block_zerozero.} *)

val halfbridge_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {12 Extracting Hbc from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbc 0. *)

(** {12 Extracting Hbd from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbd 0. *)

(** {12 Extracting Hbs from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbs 0. *)

(** {12 Extracting Hbt from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbt 0. *)

(** {6 Extracting Block_zerozero_diatomic from Block_zerozero.} *)

val block_zerozero_diatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol
;;

(** {9 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero.} *)

(* No Extraction from doublet co_zz. *)

(** {6 Extracting Block_zerozero_triatomic from Block_zerozero.} *)

val block_zerozero_triatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol
;;

(** {9 Extracting Co2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from doublet co2_zz. *)

(** {9 Extracting No2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from doublet no2_zz. *)

(** {9 Extracting Oh2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from doublet oh2_zz. *)

(** {9 Extracting Sh2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from doublet sh2_zz. *)

(** {9 Extracting So2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from doublet so2_zz. *)

(** {6 Extracting Block_zerozero_tetratomic from Block_zerozero.} *)

val block_zerozero_tetratomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol
;;

(** {9 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero.} *)

(* No Extraction from doublet cho2_1m. *)

(** {9 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero.} *)

(* No Extraction from doublet nh2. *)

(** {6 Extracting Block_zerozero_pentatomic from Block_zerozero.} *)

val block_zerozero_pentatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol
;;

(** {9 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero.} *)

(* No Extraction from doublet ch4_zz. *)

(** {9 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero.} *)

(* No Extraction from doublet nh4_zz_1p. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_raregas_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Ar in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from ar 0. *)

(** {12 Querying He in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from he 0. *)

(** {12 Querying Kr in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from kr 0. *)

(** {12 Querying Ne in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from ne 0. *)

(** {12 Querying Xe in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from xe 0. *)

(** {9 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_anion_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_cation_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

val is_atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Halfbridge in Atom_zerotied in Block_zerozero.} *)

val is_halfbridge_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {12 Querying Hbc in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbc 0. *)

(** {12 Querying Hbd in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbd 0. *)

(** {12 Querying Hbs in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbs 0. *)

(** {12 Querying Hbt in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbt 0. *)

(** {6 Querying Block_zerozero_diatomic in Block_zerozero.} *)

val is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero.} *)

(* No Query from co_zz 0. *)

(** {6 Querying Block_zerozero_triatomic in Block_zerozero.} *)

val is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Co2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from co2_zz 0. *)

(** {9 Querying No2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from no2_zz 0. *)

(** {9 Querying Oh2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from oh2_zz 0. *)

(** {9 Querying Sh2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from sh2_zz 0. *)

(** {9 Querying So2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from so2_zz 0. *)

(** {6 Querying Block_zerozero_tetratomic in Block_zerozero.} *)

val is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero.} *)

(* No Query from cho2_1m 0. *)

(** {9 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero.} *)

(* No Query from nh2 0. *)

(** {6 Querying Block_zerozero_pentatomic in Block_zerozero.} *)

val is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
  bool
;;

(** {9 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero.} *)

(* No Query from ch4_zz 0. *)

(** {9 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Upgrading from Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val ar : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val he : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val kr : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val ne : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

val xe : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Block_zerozero.} *)

val block_zerozero_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Block_zerozero.} *)

val hbc : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Block_zerozero.} *)

val hbd : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Block_zerozero.} *)

val hbs : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Block_zerozero.} *)

val hbt : Block_zerozero_symbol_t.block_zerozero_symbol;;
(** {6 Upgrading from Block_zerozero_diatomic to Block_zerozero.} *)

val block_zerozero_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Co_zz through Block_zerozero_diatomic to Block_zerozero.} *)

val co_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {6 Upgrading from Block_zerozero_triatomic to Block_zerozero.} *)

val block_zerozero_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Co2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

val co2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from No2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

val no2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from Oh2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

val oh2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from Sh2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

val sh2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from So2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

val so2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {6 Upgrading from Block_zerozero_tetratomic to Block_zerozero.} *)

val block_zerozero_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Cho2_1m through Block_zerozero_tetratomic to Block_zerozero.} *)

val cho2_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from Nh2 through Block_zerozero_tetratomic to Block_zerozero.} *)

val nh2 : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {6 Upgrading from Block_zerozero_pentatomic to Block_zerozero.} *)

val block_zerozero_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Upgrading from Ch4_zz through Block_zerozero_pentatomic to Block_zerozero.} *)

val ch4_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** {9 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic to Block_zerozero.} *)

val nh4_zz_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerozero 12 January 2011. *)

