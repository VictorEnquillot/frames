(** {3 A Symbol for a Fragment_closed.} *)


let name :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    string
;;


val print : Format.Formatter ->
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    unit
;;


(** {6 Extracting.} *)

val fragment_closed_symbol_off_block_zerozero_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    B00s_v
;;

val fragment_closed_symbol_off_atom_zerotied_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0s_v
;;

val fragment_closed_symbol_off_atom_zerotied_raregas_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0rs_v
;;

val fragment_closed_symbol_off_atom_zerotied_anion_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0as_v
;;

val fragment_closed_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0am1s_v
;;

val fragment_closed_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0am2s_v
;;

val fragment_closed_symbol_off_atom_zerotied_cation_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0cs_v
;;

val fragment_closed_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0cp1s_v
;;

val fragment_closed_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0cp2s_v
;;

val fragment_closed_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    A0cp3s_v
;;

val fragment_closed_symbol_off_halfbridge_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Has_v
;;

val fragment_closed_symbol_off_block_zerozero_diatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    B00ds_v
;;

val fragment_closed_symbol_off_block_zerozero_triatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    B00ts_v
;;

val fragment_closed_symbol_off_block_zerozero_tetratomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    B00qs_v
;;

val fragment_closed_symbol_off_block_zerozero_pentatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    B00cs_v
;;


(** {6 Querying.} *)

val is_fragment_closed_symbol_off_block_zerozero_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_raregas_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_anion_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_cation_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_halfbridge_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_block_zerozero_diatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_block_zerozero_triatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_block_zerozero_tetratomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;

val is_fragment_closed_symbol_off_block_zerozero_pentatomic_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val fragment_zerozero : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Fcs_v
;;

val fragment_closed_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Fcs_v
;;

val fragment_closed_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Fcs_v
;;

val ar : Fragment_closed_symbol_t.fragment_closed_symbol;;

val he : Fragment_closed_symbol_t.fragment_closed_symbol;;

val kr : Fragment_closed_symbol_t.fragment_closed_symbol;;

val ne : Fragment_closed_symbol_t.fragment_closed_symbol;;

val xe : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Fcs_v
;;

val fragment_closed_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Fcs_v
;;

val f_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val h_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val cl_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val br_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val i_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Fcs_v
;;

val o_2m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val s_2m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Fcs_v
;;

val fragment_closed_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Fcs_v
;;

val h_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val k_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val li_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val na_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val ni_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val cu_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Fcs_v
;;

val mg_2p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val ca_2p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fe_2p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val zn_2p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val cu_2p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Fcs_v
;;

val fe_3p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val ni_3p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Fcs_v
;;

val Hbc : Fragment_closed_symbol_t.fragment_closed_symbol;;

val Hbd : Fragment_closed_symbol_t.fragment_closed_symbol;;

val Hbs : Fragment_closed_symbol_t.fragment_closed_symbol;;

val Hbt : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Fcs_v
;;

val co_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Fcs_v
;;

val co2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val no2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val oh2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val sh2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val so2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Fcs_v
;;

val cho2_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;

val nh2 : Fragment_closed_symbol_t.fragment_closed_symbol;;

val fragment_closed_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Fcs_v
;;

val ch4_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;

val nh4_zz_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;

val segment_head_extends_fragment_leaf : Fragment_closed_symbol_t.fragment_closed_symbol;;



(** created by ./generator fragment_closed v symbol at 9:28 26 Apr 2011. *)



