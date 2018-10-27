(** {3 A Symbol for a Atom.} *)


let name :
  Atom_symbol_t.atom_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_symbol_t.atom_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_symbol_off_atom_zerotied_symbol :
  Atom_symbol_t.atom_symbol ->
    A0s_v
;;

val atom_symbol_off_atom_zerotied_raregas_symbol :
  Atom_symbol_t.atom_symbol ->
    A0rs_v
;;

val atom_symbol_off_atom_zerotied_anion_symbol :
  Atom_symbol_t.atom_symbol ->
    A0as_v
;;

val atom_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_symbol_t.atom_symbol ->
    A0am1s_v
;;

val atom_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_symbol_t.atom_symbol ->
    A0am2s_v
;;

val atom_symbol_off_atom_zerotied_cation_symbol :
  Atom_symbol_t.atom_symbol ->
    A0cs_v
;;

val atom_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_symbol_t.atom_symbol ->
    A0cp1s_v
;;

val atom_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_symbol_t.atom_symbol ->
    A0cp2s_v
;;

val atom_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_symbol_t.atom_symbol ->
    A0cp3s_v
;;

val atom_symbol_off_halfbridge_symbol :
  Atom_symbol_t.atom_symbol ->
    Has_v
;;

val atom_symbol_off_atom_onetied_symbol :
  Atom_symbol_t.atom_symbol ->
    A1s_v
;;

val atom_symbol_off_atom_onetied_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    A1cs_v
;;

val atom_symbol_off_atom_onetied_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A1ds_v
;;

val atom_symbol_off_atom_onetied_single_symbol :
  Atom_symbol_t.atom_symbol ->
    A1ss_v
;;

val atom_symbol_off_atom_onetied_triple_symbol :
  Atom_symbol_t.atom_symbol ->
    A1ts_v
;;

val atom_symbol_off_atom_twotied_symbol :
  Atom_symbol_t.atom_symbol ->
    A2s_v
;;

val atom_symbol_off_atom_twotied_single_single_symbol :
  Atom_symbol_t.atom_symbol ->
    A2sss_v
;;

val atom_symbol_off_atom_twotied_single_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    A2scs_v
;;

val atom_symbol_off_atom_twotied_single_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A2sds_v
;;

val atom_symbol_off_atom_twotied_single_triple_symbol :
  Atom_symbol_t.atom_symbol ->
    A2sts_v
;;

val atom_symbol_off_atom_twotied_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    A2ccs_v
;;

val atom_symbol_off_atom_twotied_conjugated_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A2cds_v
;;

val atom_symbol_off_atom_twotied_double_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A2dds_v
;;

val atom_symbol_off_atom_threetied_symbol :
  Atom_symbol_t.atom_symbol ->
    A3s_v
;;

val atom_symbol_off_atom_threetied_single_single_single_symbol :
  Atom_symbol_t.atom_symbol ->
    A3ssss_v
;;

val atom_symbol_off_atom_threetied_single_single_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A3ssds_v
;;

val atom_symbol_off_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    A3sccs_v
;;

val atom_symbol_off_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    A3cccs_v
;;

val atom_symbol_off_atom_threetied_double_double_double_symbol :
  Atom_symbol_t.atom_symbol ->
    A3ddds_v
;;

val atom_symbol_off_atom_fourtied_symbol :
  Atom_symbol_t.atom_symbol ->
    A4s_v
;;

val atom_symbol_off_atom_fivetied_symbol :
  Atom_symbol_t.atom_symbol ->
    A5s_v
;;

val atom_symbol_off_atom_sixtied_symbol :
  Atom_symbol_t.atom_symbol ->
    A6s_v
;;


(** {6 Querying.} *)

val is_atom_symbol_off_atom_zerotied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_raregas_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_anion_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_cation_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_halfbridge_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_onetied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_onetied_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_onetied_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_onetied_single_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_onetied_triple_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_single_single_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_single_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_single_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_single_triple_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_conjugated_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_twotied_double_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_single_single_single_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_single_single_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_threetied_double_double_double_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_fourtied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_fivetied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;

val is_atom_symbol_off_atom_sixtied_symbol :
  Atom_symbol_t.atom_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Ats_v
;;

val ar : Atom_symbol_t.atom_symbol;;

val he : Atom_symbol_t.atom_symbol;;

val kr : Atom_symbol_t.atom_symbol;;

val ne : Atom_symbol_t.atom_symbol;;

val xe : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Ats_v
;;

val f_1m : Atom_symbol_t.atom_symbol;;

val h_1m : Atom_symbol_t.atom_symbol;;

val cl_1m : Atom_symbol_t.atom_symbol;;

val br_1m : Atom_symbol_t.atom_symbol;;

val i_1m : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Ats_v
;;

val o_2m : Atom_symbol_t.atom_symbol;;

val s_2m : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Ats_v
;;

val h_1p : Atom_symbol_t.atom_symbol;;

val k_1p : Atom_symbol_t.atom_symbol;;

val li_1p : Atom_symbol_t.atom_symbol;;

val na_1p : Atom_symbol_t.atom_symbol;;

val ni_1p : Atom_symbol_t.atom_symbol;;

val cu_1p : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Ats_v
;;

val mg_2p : Atom_symbol_t.atom_symbol;;

val ca_2p : Atom_symbol_t.atom_symbol;;

val fe_2p : Atom_symbol_t.atom_symbol;;

val zn_2p : Atom_symbol_t.atom_symbol;;

val cu_2p : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Ats_v
;;

val fe_3p : Atom_symbol_t.atom_symbol;;

val ni_3p : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Ats_v
;;

val Hbc : Atom_symbol_t.atom_symbol;;

val Hbd : Atom_symbol_t.atom_symbol;;

val Hbs : Atom_symbol_t.atom_symbol;;

val Hbt : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_onetied_conjugated_symbol :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    Ats_v
;;

val o_c : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_onetied_double_symbol :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    Ats_v
;;

val o_d : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_onetied_single_symbol :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    Ats_v
;;

val h_s : Atom_symbol_t.atom_symbol;;

val f_s : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_onetied_triple_symbol :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    Ats_v
;;

val n_t : Atom_symbol_t.atom_symbol;;

val o_t : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_twotied_single_single_symbol :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    Ats_v
;;

val cl_ss : Atom_symbol_t.atom_symbol;;

val f_ss : Atom_symbol_t.atom_symbol;;

val h_ss : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_single_conjugated_symbol :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    Ats_v
;;

val n_sc : Atom_symbol_t.atom_symbol;;

val o_sc : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_single_double_symbol :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    Ats_v
;;

val n_sd : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_single_triple_symbol :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    Ats_v
;;

val c_st : Atom_symbol_t.atom_symbol;;

val n_st : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    Ats_v
;;

val n_cc : Atom_symbol_t.atom_symbol;;

val o_cc : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_conjugated_double_symbol :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    Ats_v
;;

val c_cd : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_twotied_double_double_symbol :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    Ats_v
;;

val c_dd : Atom_symbol_t.atom_symbol;;

val s_dd : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Ats_v
;;

val atom_symbol_of_atom_threetied_single_single_single_symbol :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    Ats_v
;;

val n_sss : Atom_symbol_t.atom_symbol;;

val cl_sss : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_threetied_single_single_double_symbol :
  Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol ->
    Ats_v
;;

val c_ssd : Atom_symbol_t.atom_symbol;;

val n_sdd : Atom_symbol_t.atom_symbol;;

val s_sdd : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol ->
    Ats_v
;;

val c_scc : Atom_symbol_t.atom_symbol;;

val n_scc : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol ->
    Ats_v
;;

val c_ccc : Atom_symbol_t.atom_symbol;;

val n_ccc : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_threetied_double_double_double_symbol :
  Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol ->
    Ats_v
;;

val s_ddd : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_fourtied_symbol :
  Atom_fourtied_symbol_t.atom_fourtied_symbol ->
    Ats_v
;;

val c_4s : Atom_symbol_t.atom_symbol;;

val n_4s : Atom_symbol_t.atom_symbol;;

val s_4s : Atom_symbol_t.atom_symbol;;

val xe_4s : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_fivetied_symbol :
  Atom_fivetied_symbol_t.atom_fivetied_symbol ->
    Ats_v
;;

val cl_5s : Atom_symbol_t.atom_symbol;;

val atom_symbol_of_atom_sixtied_symbol :
  Atom_sixtied_symbol_t.atom_sixtied_symbol ->
    Ats_v
;;

val s_6s : Atom_symbol_t.atom_symbol;;



(** created by ./generator atom v symbol at 9:28 26 Apr 2011. *)



