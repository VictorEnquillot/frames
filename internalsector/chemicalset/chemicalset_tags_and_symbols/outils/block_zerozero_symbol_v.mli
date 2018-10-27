(** {3 A Symbol for a Block_zerozero.} *)


let name :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_zerozero_symbol_off_atom_zerotied_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0s_v
;;

val block_zerozero_symbol_off_atom_zerotied_raregas_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0rs_v
;;

val block_zerozero_symbol_off_atom_zerotied_anion_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0as_v
;;

val block_zerozero_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0am1s_v
;;

val block_zerozero_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0am2s_v
;;

val block_zerozero_symbol_off_atom_zerotied_cation_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0cs_v
;;

val block_zerozero_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0cp1s_v
;;

val block_zerozero_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0cp2s_v
;;

val block_zerozero_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    A0cp3s_v
;;

val block_zerozero_symbol_off_halfbridge_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Has_v
;;

val block_zerozero_symbol_off_block_zerozero_diatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    B00ds_v
;;

val block_zerozero_symbol_off_block_zerozero_triatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    B00ts_v
;;

val block_zerozero_symbol_off_block_zerozero_tetratomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    B00qs_v
;;

val block_zerozero_symbol_off_block_zerozero_pentatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    B00cs_v
;;


(** {6 Querying.} *)

val is_block_zerozero_symbol_off_atom_zerotied_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_raregas_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_anion_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_cation_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_halfbridge_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_block_zerozero_diatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_block_zerozero_triatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_block_zerozero_tetratomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;

val is_block_zerozero_symbol_off_block_zerozero_pentatomic_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_zerozero_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    B00s_v
;;

val block_zerozero_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    B00s_v
;;

val ar : Block_zerozero_symbol_t.block_zerozero_symbol;;

val he : Block_zerozero_symbol_t.block_zerozero_symbol;;

val kr : Block_zerozero_symbol_t.block_zerozero_symbol;;

val ne : Block_zerozero_symbol_t.block_zerozero_symbol;;

val xe : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    B00s_v
;;

val block_zerozero_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    B00s_v
;;

val f_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val h_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val cl_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val br_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val i_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    B00s_v
;;

val o_2m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val s_2m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    B00s_v
;;

val block_zerozero_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    B00s_v
;;

val h_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val k_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val li_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val na_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val ni_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val cu_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    B00s_v
;;

val mg_2p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val ca_2p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val fe_2p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val zn_2p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val cu_2p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    B00s_v
;;

val fe_3p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val ni_3p : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    B00s_v
;;

val Hbc : Block_zerozero_symbol_t.block_zerozero_symbol;;

val Hbd : Block_zerozero_symbol_t.block_zerozero_symbol;;

val Hbs : Block_zerozero_symbol_t.block_zerozero_symbol;;

val Hbt : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    B00s_v
;;

val co_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    B00s_v
;;

val co2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val no2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val oh2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val sh2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val so2_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    B00s_v
;;

val cho2_1m : Block_zerozero_symbol_t.block_zerozero_symbol;;

val nh2 : Block_zerozero_symbol_t.block_zerozero_symbol;;

val block_zerozero_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    B00s_v
;;

val ch4_zz : Block_zerozero_symbol_t.block_zerozero_symbol;;

val nh4_zz_1p : Block_zerozero_symbol_t.block_zerozero_symbol;;



(** created by ./generator block_zerozero v symbol at 9:28 26 Apr 2011. *)



