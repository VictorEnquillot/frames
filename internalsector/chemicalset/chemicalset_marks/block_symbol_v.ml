(** {3 The functionalities for a Symbol for a Block.} *)

let nam_cod = "block_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_symbol_t.Block_zerotied_symbol sym_bl0 ->
      Block_zerotied_symbol_v.name sym_bl0
  | Block_symbol_t.Block_onetied_symbol sym_bl1 ->
      Block_onetied_symbol_v.name sym_bl1
;;


(** {6 Upgrading} *)


let block_symbol_of_block_zerotied_symbol sym_bl0 = 
  Block_symbol_t.Block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_zerotied_zerotied_symbol sym_b00 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_zerotied_zerotied_symbol sym_b00 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax0_symbol sym_nna = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax0_symbol sym_nna in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_symbol sym_at0 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax1_symbol sym_nna = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax1_symbol sym_nna in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax2_symbol sym_nna = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax2_symbol sym_nna in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax3_symbol sym_nna = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax3_symbol sym_nna in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax4_symbol sym_nna = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax4_symbol sym_nna in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_zerotied_onetied_symbol sym_b01 in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_symbol sym_bns = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_symbol sym_bns in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax1_symbol sym_nsa in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax3_symbol sym_nsa in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax4_symbol sym_nsa in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_conjugated_symbol sym_bnc = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_conjugated_symbol sym_bnc in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_double_symbol sym_bnd = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_double_symbol sym_bnd in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_triple_symbol sym_bnt = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_triple_symbol sym_bnt in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_triple_ax2_symbol sym_nta in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_bl0 = Block_zerotied_symbol_v.block_zerotied_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    block_symbol_of_block_zerotied_symbol sym_bl0
;;

let block_symbol_of_block_onetied_symbol sym_bl1 = 
  Block_symbol_t.Block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11 in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_symbol sym_bss = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_symbol sym_bss in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax2_symbol sym_ssa in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax3_symbol sym_ssa in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax4_symbol sym_ssa in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_conjugated_symbol sym_bsc in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_double_symbol sym_bsd in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_double_ax3_symbol sym_sda in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_triple_symbol sym_bst in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_triple_ax2_symbol sym_sta in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesingle_symbol sym_bss in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singledouble_symbol sym_bss in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    block_symbol_of_block_onetied_symbol sym_bl1
;;

let block_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_bl1 = Block_onetied_symbol_v.block_onetied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    block_symbol_of_block_onetied_symbol sym_bl1
;;


(** {6 Abbreviating} *)


let fm1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.fm1;;

let hm1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hm1;;

let clm1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.clm1;;

let brm1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.brm1;;

let im1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.im1;;

let om2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.om2;;

let sm2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.sm2;;

let hp1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hp1;;

let kp1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.kp1;;

let lip1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.lip1;;

let nap1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.nap1;;

let nip1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.nip1;;

let cup1 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.cup1;;

let mgp2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.mgp2;;

let cap2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.cap2;;

let fep2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.fep2;;

let znp2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.znp2;;

let cup2 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.cup2;;

let fep3 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.fep3;;

let nip3 = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.nip3;;

let ar = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.ar;;

let he = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.he;;

let kr = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.kr;;

let ne = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.ne;;

let xe = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.xe;;

let hb_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hb_s;;

let hb_c = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hb_c;;

let hb_d = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hb_d;;

let hb_t = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.hb_t;;

let z_co_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_co_z;;

let z_cs_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_cs_z;;

let z_fh_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_fh_z;;

let z_no_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_no_z;;

let z_ohm1_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ohm1_z;;

let z_becl2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_becl2_z;;

let z_co2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_co2_z;;

let z_hgcl2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_hgcl2_z;;

let z_ccl2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ccl2_z;;

let z_no2m1_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_no2m1_z;;

let z_o3_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_o3_z;;

let z_so2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_so2_z;;

let z_of2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_of2_z;;

let z_oh2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_oh2_z;;

let z_sh2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_sh2_z;;

let z_coh2_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_coh2_z;;

let z_cho2m1_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_cho2m1_z;;

let z_nh3_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh3_z;;

let z_ch4_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ch4_z;;

let z_nh4p1_z = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh4p1_z;;

let z_h_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_h_s;;

let z_f_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_f_s;;

let z_s_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_s_s;;

let z_coh_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_coh_s;;

let z_co2m1_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_co2m1_s;;

let z_no2_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_no2_s;;

let z_nh2_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh2_s;;

let z_ch3_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ch3_s;;

let z_nh3p1_s = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh3p1_s;;

let z_nh2_c = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh2_c;;

let z_ch2_d = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ch2_d;;

let z_co_d = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_co_d;;

let z_nh_d = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh_d;;

let z_nh2p1_d = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_nh2p1_d;;

let z_ch_t = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.z_ch_t;;

let block_none_halfbridge = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.block_none_halfbridge;;

let block_zerotied_forktied = block_symbol_of_block_zerotied_symbol Block_zerotied_symbol_v.block_zerotied_forktied;;

let block_onetied_zerotied = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.block_onetied_zerotied;;

let s_be_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_be_s;;

let s_hg_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_hg_s;;

let s_o_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_o_s;;

let s_s_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_s_s;;

let s_im1_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_im1_s;;

let s_xe_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_xe_s;;

let s_bf_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_bf_s;;

let s_nh_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_nh_s;;

let s_pcl_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_pcl_s;;

let s_clf_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_clf_s;;

let s_brf_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_brf_s;;

let s_ch2_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_ch2_s;;

let s_nh2p1_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_nh2p1_s;;

let s_sf2_s = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_sf2_s;;

let s_co_c = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_co_c;;

let s_nh_c = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_nh_c;;

let s_ch_d = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_ch_d;;

let s_n_d = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_n_d;;

let s_nhp1_d = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_nhp1_d;;

let s_c_t = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_c_t;;

let s_np1_t = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_np1_t;;

let s_n_ss = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_n_ss;;

let s_c_sd = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_c_sd;;

let s_c_sss = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_c_sss;;

let s_nhp1_sss = block_symbol_of_block_onetied_symbol Block_onetied_symbol_v.s_nhp1_sss;;


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
  | "z_h_s" -> z_h_s
  | "z_f_s" -> z_f_s
  | "z_s_s" -> z_s_s
  | "z_coh_s" -> z_coh_s
  | "z_co2m1_s" -> z_co2m1_s
  | "z_no2_s" -> z_no2_s
  | "z_nh2_s" -> z_nh2_s
  | "z_ch3_s" -> z_ch3_s
  | "z_nh3p1_s" -> z_nh3p1_s
  | "z_nh2_c" -> z_nh2_c
  | "z_ch2_d" -> z_ch2_d
  | "z_co_d" -> z_co_d
  | "z_nh_d" -> z_nh_d
  | "z_nh2p1_d" -> z_nh2p1_d
  | "z_ch_t" -> z_ch_t
  | "block_none_halfbridge" -> block_none_halfbridge
  | "block_zerotied_forktied" -> block_zerotied_forktied
  | "block_onetied_zerotied" -> block_onetied_zerotied
  | "s_be_s" -> s_be_s
  | "s_hg_s" -> s_hg_s
  | "s_o_s" -> s_o_s
  | "s_s_s" -> s_s_s
  | "s_im1_s" -> s_im1_s
  | "s_xe_s" -> s_xe_s
  | "s_bf_s" -> s_bf_s
  | "s_nh_s" -> s_nh_s
  | "s_pcl_s" -> s_pcl_s
  | "s_clf_s" -> s_clf_s
  | "s_brf_s" -> s_brf_s
  | "s_ch2_s" -> s_ch2_s
  | "s_nh2p1_s" -> s_nh2p1_s
  | "s_sf2_s" -> s_sf2_s
  | "s_co_c" -> s_co_c
  | "s_nh_c" -> s_nh_c
  | "s_ch_d" -> s_ch_d
  | "s_n_d" -> s_n_d
  | "s_nhp1_d" -> s_nhp1_d
  | "s_c_t" -> s_c_t
  | "s_np1_t" -> s_np1_t
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_zerotied_symbol_off_block_symbol = function
  | Block_symbol_t.Block_zerotied_symbol sym_bl0 -> sym_bl0
  | sym_blk -> Error_messages_v.print_fatal_error
      nam_cod "block_zerotied_symbol_off_block_symbol"
      "Block_zerotied_symbol"
      (name sym_blk) "check"
;;

let block_zerotied_zerotied_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_zerotied_zerotied_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax0_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax0_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax0e0_monoatomic_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_anion_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_anion_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_anion_minusone_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_anion_minustwo_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_cation_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_cation_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_cation_plusone_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_cation_plustwo_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_cation_plusthree_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_raregas_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_raregas_symbol_off_block_zerotied_symbol sym_bl0
;;

let atom_zerotied_halfbridge_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.atom_zerotied_halfbridge_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax1_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax1_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax1en_diatomic_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax1en_diatomic_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax2_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax2_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax2e0_linear_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax2e0_linear_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax2e1_bent_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax2e1_bent_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax2e2_bent_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax2e2_bent_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax3_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax3_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax4_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax4_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_zerotied_onetied_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_zerotied_onetied_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax1_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax1_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax1en_diatomic_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax3_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax3_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax4_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax4_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_conjugated_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_conjugated_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_double_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_double_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_triple_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_triple_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_triple_ax2_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_triple_ax2_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_none_triple_ax2e0_linear_symbol_off_block_symbol sym_blk = 
  let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
    Block_zerotied_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_zerotied_symbol sym_bl0
;;

let block_onetied_symbol_off_block_symbol = function
  | Block_symbol_t.Block_onetied_symbol sym_bl1 -> sym_bl1
  | sym_blk -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_symbol_off_block_symbol"
      "Block_onetied_symbol"
      (name sym_blk) "check"
;;

let block_onetied_onetied_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax2_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax2_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax2e0_bent_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax2e2_bent_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax2e3_linear_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax3_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax3_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax3e2_tshaped_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax4_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax4_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_single_ax4e1_seesaw_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_conjugated_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_conjugated_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_double_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_double_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_double_ax3_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_double_ax3_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_triple_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_triple_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_triple_ax2_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_triple_ax2_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_triple_ax2e0_linear_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_onetied_symbol sym_bl1
;;

let block_onetied_forktied_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1
;;

let block_onetied_biforktied_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_onetied_biforktied_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesingle_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesingle_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesingle_ax3_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesingle_ax3_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singledouble_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singledouble_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
;;

let block_onetied_triforktied_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_onetied_triforktied_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesinglesingle_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesinglesingle_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesinglesingle_ax4_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_onetied_symbol sym_bl1
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk = 
  let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
    Block_onetied_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_symbol sym_bl1
;;


(** {6 Querying} *)


let is_block_zerotied_symbol_off_block_symbol = function
  | Block_symbol_t.Block_zerotied_symbol _ -> true
  | _ -> false
;;

let is_block_zerotied_zerotied_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_zerotied_zerotied_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax0_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax0_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_anion_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_anion_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_cation_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_cation_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_raregas_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_raregas_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_atom_zerotied_halfbridge_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax1_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax1_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax1en_diatomic_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax2_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax2_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax2e0_linear_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax2e1_bent_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax2e2_bent_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax3_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax3_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax4_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax4_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_zerotied_onetied_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_zerotied_onetied_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax1_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax1_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax3_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax3_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax4_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax4_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_conjugated_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_conjugated_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_double_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_double_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_triple_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_triple_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_triple_ax2_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_triple_ax2_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_block_symbol sym_blk =
  if not (is_block_zerotied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl0 = block_zerotied_symbol_off_block_symbol sym_blk in 
     Block_zerotied_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_zerotied_symbol sym_bl0
    end
;;

let is_block_onetied_symbol_off_block_symbol = function
  | Block_symbol_t.Block_onetied_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_onetied_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax2_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax2_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax3_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax3_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax4_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax4_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_conjugated_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_conjugated_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_double_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_double_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_double_ax3_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_double_ax3_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_triple_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_triple_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_triple_ax2_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_triple_ax2_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_onetied_forktied_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_onetied_biforktied_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_onetied_biforktied_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesingle_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesingle_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singledouble_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singledouble_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_onetied_triforktied_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_onetied_triforktied_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesinglesingle_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_symbol sym_bl1
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk =
  if not (is_block_onetied_symbol_off_block_symbol sym_blk)
  then false
  else
    begin
     let sym_bl1 = block_onetied_symbol_off_block_symbol sym_blk in 
     Block_onetied_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_symbol sym_bl1
    end
;;


(** created by ./generator block implementation symbol at 15:1 13 Mar 2012. *)



