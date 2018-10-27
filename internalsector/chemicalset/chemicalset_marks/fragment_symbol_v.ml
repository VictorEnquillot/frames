(** {3 The functionalities for a Symbol for a Fragment.} *)

let nam_cod = "fragment_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_symbol_t.Fragment_closed_symbol sym_frc ->
      Fragment_closed_symbol_v.name sym_frc
  | Fragment_symbol_t.Fragment_head_symbol sym_frh ->
      Fragment_head_symbol_v.name sym_frh
  | Fragment_symbol_t.Fragment_buried_symbol sym_frb ->
      Fragment_buried_symbol_v.name sym_frb
  | Fragment_symbol_t.Fragment_leaf_symbol sym_frl ->
      Fragment_leaf_symbol_v.name sym_frl
;;


(** {6 Upgrading} *)


let fragment_symbol_of_fragment_closed_symbol sym_frc = 
  Fragment_symbol_t.Fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_zerotied_zerotied_symbol sym_b00 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_zerotied_zerotied_symbol sym_b00 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax0_symbol sym_nna = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax0_symbol sym_nna in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_symbol sym_at0 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax1_symbol sym_nna = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax1_symbol sym_nna in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax2_symbol sym_nna = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax2_symbol sym_nna in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax3_symbol sym_nna = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax3_symbol sym_nna in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax4_symbol sym_nna = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax4_symbol sym_nna in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_fragment_zerotied_zerotied_symbol sym_f00 = 
  let sym_frc = Fragment_closed_symbol_v.fragment_closed_symbol_of_fragment_zerotied_zerotied_symbol sym_f00 in
    fragment_symbol_of_fragment_closed_symbol sym_frc
;;

let fragment_symbol_of_fragment_head_symbol sym_frh = 
  Fragment_symbol_t.Fragment_head_symbol sym_frh
;;

let fragment_symbol_of_fragment_head_forked_symbol sym_fhf = 
  let sym_frh = Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_forked_symbol sym_fhf in
    fragment_symbol_of_fragment_head_symbol sym_frh
;;

let fragment_symbol_of_fragment_head_biforked_symbol sym_fhb = 
  let sym_frh = Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_biforked_symbol sym_fhb in
    fragment_symbol_of_fragment_head_symbol sym_frh
;;

let fragment_symbol_of_fragment_head_triforked_symbol sym_fht = 
  let sym_frh = Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_triforked_symbol sym_fht in
    fragment_symbol_of_fragment_head_symbol sym_frh
;;

let fragment_symbol_of_fragment_head_halfbridged_symbol sym_fhh = 
  let sym_frh = Fragment_head_symbol_v.fragment_head_symbol_of_fragment_head_halfbridged_symbol sym_fhh in
    fragment_symbol_of_fragment_head_symbol sym_frh
;;

let fragment_symbol_of_fragment_buried_symbol sym_frb = 
  Fragment_symbol_t.Fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_symbol sym_bss in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_symbol sym_bss in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    fragment_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_symbol_of_fragment_leaf_symbol sym_frl = 
  Fragment_symbol_t.Fragment_leaf_symbol sym_frl
;;

let fragment_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol sym_f10 in
    fragment_symbol_of_fragment_leaf_symbol sym_frl
;;

let fragment_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh in
    fragment_symbol_of_fragment_leaf_symbol sym_frl
;;


(** {6 Abbreviating} *)


let fm1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.fm1;;

let hm1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hm1;;

let clm1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.clm1;;

let brm1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.brm1;;

let im1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.im1;;

let om2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.om2;;

let sm2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.sm2;;

let hp1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hp1;;

let kp1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.kp1;;

let lip1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.lip1;;

let nap1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.nap1;;

let nip1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.nip1;;

let cup1 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.cup1;;

let mgp2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.mgp2;;

let cap2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.cap2;;

let fep2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.fep2;;

let znp2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.znp2;;

let cup2 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.cup2;;

let fep3 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.fep3;;

let nip3 = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.nip3;;

let ar = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.ar;;

let he = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.he;;

let kr = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.kr;;

let ne = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.ne;;

let xe = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.xe;;

let hb_s = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hb_s;;

let hb_c = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hb_c;;

let hb_d = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hb_d;;

let hb_t = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.hb_t;;

let z_co_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_co_z;;

let z_cs_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_cs_z;;

let z_fh_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_fh_z;;

let z_no_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_no_z;;

let z_ohm1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ohm1_z;;

let z_becl2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_becl2_z;;

let z_co2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_co2_z;;

let z_hgcl2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_hgcl2_z;;

let z_ccl2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ccl2_z;;

let z_no2m1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_no2m1_z;;

let z_o3_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_o3_z;;

let z_so2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_so2_z;;

let z_of2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_of2_z;;

let z_oh2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_oh2_z;;

let z_sh2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_sh2_z;;

let z_coh2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_coh2_z;;

let z_cho2m1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_cho2m1_z;;

let z_nh3_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_nh3_z;;

let z_ch4_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch4_z;;

let z_nh4p1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_nh4p1_z;;

let z_ch3_s_co2m1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_s_co2m1_z;;

let z_ch3_s_co_s_oh_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_s_co_s_oh_z;;

let z_ch3_s_oh_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_s_oh_z;;

let z_ch3_s_ch2_s_ch3_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_s_ch2_s_ch3_z;;

let z_ch3_s_ch2_sr2_ch3_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_s_ch2_sr2_ch3_z;;

let z_ch3_sr2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch3_sr2_z;;

let z_ch2_s_ch2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch2_s_ch2_z;;

let z_ch2_d_ch2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch2_d_ch2_z;;

let z_coh_s_oh_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_coh_s_oh_z;;

let z_ch_t_ch_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_ch_t_ch_z;;

let z_zo2_s_zo_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_zo2_s_zo_z;;

let z_oh_s_co_s_ch2_s_nh2_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_oh_s_co_s_ch2_s_nh2_z;;

let z_co2m1_s_ch2_s_nh3p1_z = fragment_symbol_of_fragment_closed_symbol Fragment_closed_symbol_v.z_co2m1_s_ch2_s_nh3p1_z;;

let fragment_zerotied_zerotied_fromid s = fragment_symbol_of_fragment_closed_symbol (Fragment_closed_symbol_v.fragment_zerotied_zerotied_fromid s);;

let fragment_closed_leftextended_fromid s = fragment_symbol_of_fragment_closed_symbol (Fragment_closed_symbol_v.fragment_closed_leftextended_fromid s);;

let block_zerotied_forktied = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.block_zerotied_forktied;;

let z_ch3_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_ch3_s_ch_ss;;

let z_ch3_s_ch2_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_ch3_s_ch2_s_ch_ss;;

let z_ch3_s_ch2_sr2_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_ch3_s_ch2_sr2_ch_ss;;

let z_ch3_s_co_c_nh_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_ch3_s_co_c_nh_s_ch_ss;;

let z_co2m1_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_co2m1_s_ch_ss;;

let z_nh2_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_nh2_s_ch_ss;;

let z_nh3p1_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_nh3p1_s_ch_ss;;

let z_nh_d_c_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_nh_d_c_ss;;

let z_oh_s_co_s_ch_ss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_oh_s_co_s_ch_ss;;

let z_nh2_s_c_sd = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_nh2_s_c_sd;;

let z_oh_s_c_cc = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_oh_s_c_cc;;

let z_ch3_s_c_sss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_ch3_s_c_sss;;

let z_nh2_s_c_sss = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.z_nh2_s_c_sss;;

let hb_s_nh_s_ch2_sr3_s_ch_s = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.hb_s_nh_s_ch2_sr3_s_ch_s;;

let fragment_head_rightextended_fromid = fragment_symbol_of_fragment_head_symbol Fragment_head_symbol_v.fragment_head_rightextended_fromid;;

let s_n_ss = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_n_ss;;

let s_c_sd = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_c_sd;;

let s_c_sss = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_c_sss;;

let s_nhp1_sss = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_nhp1_sss;;

let fragment_buried_biforked = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_biforked;;

let fragment_buried_triforked = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_triforked;;

let fragment_buried_fromid = fragment_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_fromid;;

let fragment_buried_leftextended_fromid s = fragment_symbol_of_fragment_buried_symbol (Fragment_buried_symbol_v.fragment_buried_leftextended_fromid s);;

let block_onetied_zerotied = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.block_onetied_zerotied;;

let s_ch_d_cd_ch2_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_coo_z;;

let fragment_leaf_fromid s = fragment_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_fromid s);;

let fragment_leaf_leftextended_fromid s = fragment_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_leftextended_fromid s);;

let c_ch_cr5_hb_c = fragment_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.c_ch_cr5_hb_c;;


(** {6 Making} *)


let make s = function
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | "hb_t" -> hb_t
  | "z_co_z" -> z_co_z
  | "z_cs_z" -> z_cs_z
  | "z_fh_z" -> z_fh_z
  | "z_no_z" -> z_no_z
  | "z_ohm1_z" -> z_ohm1_z
  | "z_becl2_z" -> z_becl2_z
  | "z_co2_z" -> z_co2_z
  | "z_hgcl2_z" -> z_hgcl2_z
  | "z_ccl2_z" -> z_ccl2_z
  | "z_no2m1_z" -> z_no2m1_z
  | "z_o3_z" -> z_o3_z
  | "z_so2_z" -> z_so2_z
  | "z_of2_z" -> z_of2_z
  | "z_oh2_z" -> z_oh2_z
  | "z_sh2_z" -> z_sh2_z
  | "z_coh2_z" -> z_coh2_z
  | "z_cho2m1_z" -> z_cho2m1_z
  | "z_nh3_z" -> z_nh3_z
  | "z_ch4_z" -> z_ch4_z
  | "z_nh4p1_z" -> z_nh4p1_z
  | "z_ch3_s_co2m1_z" -> z_ch3_s_co2m1_z
  | "z_ch3_s_co_s_oh_z" -> z_ch3_s_co_s_oh_z
  | "z_ch3_s_oh_z" -> z_ch3_s_oh_z
  | "z_ch3_s_ch2_s_ch3_z" -> z_ch3_s_ch2_s_ch3_z
  | "z_ch3_s_ch2_sr2_ch3_z" -> z_ch3_s_ch2_sr2_ch3_z
  | "z_ch3_sr2_z" -> z_ch3_sr2_z
  | "z_ch2_s_ch2_z" -> z_ch2_s_ch2_z
  | "z_ch2_d_ch2_z" -> z_ch2_d_ch2_z
  | "z_coh_s_oh_z" -> z_coh_s_oh_z
  | "z_ch_t_ch_z" -> z_ch_t_ch_z
  | "z_zo2_s_zo_z" -> z_zo2_s_zo_z
  | "z_oh_s_co_s_ch2_s_nh2_z" -> z_oh_s_co_s_ch2_s_nh2_z
  | "z_co2m1_s_ch2_s_nh3p1_z" -> z_co2m1_s_ch2_s_nh3p1_z
  | "fragment_zerotied_zerotied_fromid" -> fragment_zerotied_zerotied_fromid s
  | "fragment_closed_leftextended_fromid" -> fragment_closed_leftextended_fromid s
  | "block_zerotied_forktied" -> block_zerotied_forktied
  | "z_ch3_s_ch_ss" -> z_ch3_s_ch_ss
  | "z_ch3_s_ch2_s_ch_ss" -> z_ch3_s_ch2_s_ch_ss
  | "z_ch3_s_ch2_sr2_ch_ss" -> z_ch3_s_ch2_sr2_ch_ss
  | "z_ch3_s_co_c_nh_s_ch_ss" -> z_ch3_s_co_c_nh_s_ch_ss
  | "z_co2m1_s_ch_ss" -> z_co2m1_s_ch_ss
  | "z_nh2_s_ch_ss" -> z_nh2_s_ch_ss
  | "z_nh3p1_s_ch_ss" -> z_nh3p1_s_ch_ss
  | "z_nh_d_c_ss" -> z_nh_d_c_ss
  | "z_oh_s_co_s_ch_ss" -> z_oh_s_co_s_ch_ss
  | "z_nh2_s_c_sd" -> z_nh2_s_c_sd
  | "z_oh_s_c_cc" -> z_oh_s_c_cc
  | "z_ch3_s_c_sss" -> z_ch3_s_c_sss
  | "z_nh2_s_c_sss" -> z_nh2_s_c_sss
  | "hb_s_nh_s_ch2_sr3_s_ch_s" -> hb_s_nh_s_ch2_sr3_s_ch_s
  | "fragment_head_rightextended_fromid" -> fragment_head_rightextended_fromid
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | "fragment_buried_biforked" -> fragment_buried_biforked
  | "fragment_buried_triforked" -> fragment_buried_triforked
  | "fragment_buried_fromid" -> fragment_buried_fromid
  | "fragment_buried_leftextended_fromid" -> fragment_buried_leftextended_fromid s
  | "block_onetied_zerotied" -> block_onetied_zerotied
  | "s_ch_d_cd_ch2_z" -> s_ch_d_cd_ch2_z
  | "s_ch_s_ch3_ch_s_ch3_z" -> s_ch_s_ch3_ch_s_ch3_z
  | "s_ch_d_nh_z" -> s_ch_d_nh_z
  | "s_ch_d_nh_cco_s_ch3_z" -> s_ch_d_nh_cco_s_ch3_z
  | "s_ch2_s_ch2_s_s_s_ch3_z" -> s_ch2_s_ch2_s_s_s_ch3_z
  | "s_ch2_s_ch3_z" -> s_ch2_s_ch3_z
  | "s_ch2r2_s_ch3_z" -> s_ch2r2_s_ch3_z
  | "s_ch2r3_s_ch3_z" -> s_ch2r3_s_ch3_z
  | "s_ch2r4_s_ch3_z" -> s_ch2r4_s_ch3_z
  | "s_ch2r5_s_ch3_z" -> s_ch2r5_s_ch3_z
  | "s_ch2_s_oh_z" -> s_ch2_s_oh_z
  | "s_ch2_cco_cnh2_z" -> s_ch2_cco_cnh2_z
  | "s_ch2_d_co_s_oh_z" -> s_ch2_d_co_s_oh_z
  | "s_ch2_s_coo_z" -> s_ch2_s_coo_z
  | "fragment_leaf_fromid" -> fragment_leaf_fromid s
  | "fragment_leaf_leftextended_fromid" -> fragment_leaf_leftextended_fromid s
  | "c_ch_cr5_hb_c" -> c_ch_cr5_hb_c
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let fragment_closed_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_closed_symbol sym_frc -> sym_frc
  | sym_frt -> Error_messages_v.print_fatal_error
      nam_cod "fragment_closed_symbol_off_fragment_symbol"
      "Fragment_closed_symbol"
      (name sym_frt) "check"
;;

let block_zerotied_zerotied_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_zerotied_zerotied_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax0_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax0_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_anion_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_anion_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_anion_minusone_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_anion_minustwo_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_cation_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_cation_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_cation_plusone_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_cation_plustwo_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_cation_plusthree_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_raregas_symbol_off_fragment_closed_symbol sym_frc
;;

let atom_zerotied_halfbridge_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.atom_zerotied_halfbridge_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax1_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax1_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax1en_diatomic_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax1en_diatomic_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax2_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax2_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax2e0_linear_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax2e0_linear_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax2e1_bent_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax2e1_bent_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax2e2_bent_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax2e2_bent_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax3_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax3_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax4_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax4_symbol_off_fragment_closed_symbol sym_frc
;;

let block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_fragment_closed_symbol sym_frc
;;

let fragment_zerotied_zerotied_symbol_off_fragment_symbol sym_frt = 
  let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
    Fragment_closed_symbol_v.fragment_zerotied_zerotied_symbol_off_fragment_closed_symbol sym_frc
;;

let fragment_head_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_head_symbol sym_frh -> sym_frh
  | sym_frt -> Error_messages_v.print_fatal_error
      nam_cod "fragment_head_symbol_off_fragment_symbol"
      "Fragment_head_symbol"
      (name sym_frt) "check"
;;

let fragment_head_forked_symbol_off_fragment_symbol sym_frt = 
  let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
    Fragment_head_symbol_v.fragment_head_forked_symbol_off_fragment_head_symbol sym_frh
;;

let fragment_head_biforked_symbol_off_fragment_symbol sym_frt = 
  let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
    Fragment_head_symbol_v.fragment_head_biforked_symbol_off_fragment_head_symbol sym_frh
;;

let fragment_head_triforked_symbol_off_fragment_symbol sym_frt = 
  let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
    Fragment_head_symbol_v.fragment_head_triforked_symbol_off_fragment_head_symbol sym_frh
;;

let fragment_head_halfbridged_symbol_off_fragment_symbol sym_frt = 
  let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
    Fragment_head_symbol_v.fragment_head_halfbridged_symbol_off_fragment_head_symbol sym_frh
;;

let fragment_buried_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_buried_symbol sym_frb -> sym_frb
  | sym_frt -> Error_messages_v.print_fatal_error
      nam_cod "fragment_buried_symbol_off_fragment_symbol"
      "Fragment_buried_symbol"
      (name sym_frt) "check"
;;

let block_onetied_forktied_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_onetied_biforktied_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_ax3_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singledouble_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb
;;

let block_onetied_triforktied_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt = 
  let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb
;;

let fragment_leaf_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_leaf_symbol sym_frl -> sym_frl
  | sym_frt -> Error_messages_v.print_fatal_error
      nam_cod "fragment_leaf_symbol_off_fragment_symbol"
      "Fragment_leaf_symbol"
      (name sym_frt) "check"
;;

let fragment_onetied_zerotied_symbol_off_fragment_symbol sym_frt = 
  let sym_frl = fragment_leaf_symbol_off_fragment_symbol sym_frt in 
    Fragment_leaf_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
;;

let fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol sym_frt = 
  let sym_frl = fragment_leaf_symbol_off_fragment_symbol sym_frt in 
    Fragment_leaf_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
;;


(** {6 Querying} *)


let is_fragment_closed_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_closed_symbol _ -> true
  | _ -> false
;;

let is_block_zerotied_zerotied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_zerotied_zerotied_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax0_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax0_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_anion_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_anion_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_cation_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_cation_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_raregas_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_atom_zerotied_halfbridge_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax1_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax1_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax1en_diatomic_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax2_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax2_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax2e0_linear_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax2e1_bent_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax2e2_bent_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax3_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax3_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax4_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax4_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_fragment_zerotied_zerotied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_closed_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frc = fragment_closed_symbol_off_fragment_symbol sym_frt in 
     Fragment_closed_symbol_v.is_fragment_zerotied_zerotied_symbol_off_fragment_closed_symbol sym_frc
    end
;;

let is_fragment_head_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_head_symbol _ -> true
  | _ -> false
;;

let is_fragment_head_forked_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_head_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
     Fragment_head_symbol_v.is_fragment_head_forked_symbol_off_fragment_head_symbol sym_frh
    end
;;

let is_fragment_head_biforked_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_head_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
     Fragment_head_symbol_v.is_fragment_head_biforked_symbol_off_fragment_head_symbol sym_frh
    end
;;

let is_fragment_head_triforked_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_head_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
     Fragment_head_symbol_v.is_fragment_head_triforked_symbol_off_fragment_head_symbol sym_frh
    end
;;

let is_fragment_head_halfbridged_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_head_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frh = fragment_head_symbol_off_fragment_symbol sym_frt in 
     Fragment_head_symbol_v.is_fragment_head_halfbridged_symbol_off_fragment_head_symbol sym_frh
    end
;;

let is_fragment_buried_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_buried_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_forktied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_onetied_biforktied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singledouble_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_onetied_triforktied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_buried_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_symbol sym_frt in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_fragment_leaf_symbol_off_fragment_symbol = function
  | Fragment_symbol_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

let is_fragment_onetied_zerotied_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_leaf_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_fragment_symbol sym_frt in 
     Fragment_leaf_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
    end
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol sym_frt =
  if not (is_fragment_leaf_symbol_off_fragment_symbol sym_frt)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_fragment_symbol sym_frt in 
     Fragment_leaf_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
    end
;;


(** created by ./generator fragment implementation symbol at 15:2 13 Mar 2012. *)



