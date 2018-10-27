(** {3 The functionalities for a Symbol for a Segment.} *)

let nam_cod = "segment_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Segment_symbol_t.Segment_head_symbol sym_seh ->
      Segment_head_symbol_v.name sym_seh
  | Segment_symbol_t.Segment_buried_symbol sym_seb ->
      Segment_buried_symbol_v.name sym_seb
;;


(** {6 Upgrading} *)


let segment_symbol_of_segment_head_symbol sym_seh = 
  Segment_symbol_t.Segment_head_symbol sym_seh
;;

let segment_symbol_of_block_zerotied_onetied_symbol sym_b01 = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01 in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_symbol sym_bns = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_symbol sym_bns in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax1_symbol sym_nsa in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3_symbol sym_nsa in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax4_symbol sym_nsa in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_conjugated_symbol sym_bnc = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_conjugated_symbol sym_bnc in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_double_symbol sym_bnd = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_double_symbol sym_bnd in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_triple_symbol sym_bnt = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_symbol sym_bnt in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_ax2_symbol sym_nta in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_segment_zerotied_onetied_symbol sym_s01 = 
  let sym_seh = Segment_head_symbol_v.segment_head_symbol_of_segment_zerotied_onetied_symbol sym_s01 in
    segment_symbol_of_segment_head_symbol sym_seh
;;

let segment_symbol_of_segment_buried_symbol sym_seb = 
  Segment_symbol_t.Segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11 in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_symbol sym_bss = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_symbol sym_bss in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax2_symbol sym_ssa in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax3_symbol sym_ssa in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax4_symbol sym_ssa in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_conjugated_symbol sym_bsc in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_double_symbol sym_bsd in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_double_ax3_symbol sym_sda in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_triple_symbol sym_bst in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_triple_ax2_symbol sym_sta in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    segment_symbol_of_segment_buried_symbol sym_seb
;;

let segment_symbol_of_segment_onetied_onetied_symbol sym_s11 = 
  let sym_seb = Segment_buried_symbol_v.segment_buried_symbol_of_segment_onetied_onetied_symbol sym_s11 in
    segment_symbol_of_segment_buried_symbol sym_seb
;;


(** {6 Abbreviating} *)


let z_h_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_h_s;;

let z_f_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_f_s;;

let z_s_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_s_s;;

let z_coh_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_coh_s;;

let z_co2m1_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_co2m1_s;;

let z_no2_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_no2_s;;

let z_nh2_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh2_s;;

let z_ch3_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_ch3_s;;

let z_nh3p1_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh3p1_s;;

let z_nh2_c = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh2_c;;

let z_ch2_d = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_ch2_d;;

let z_co_d = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_co_d;;

let z_nh_d = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh_d;;

let z_nh2p1_d = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh2p1_d;;

let z_ch_t = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_ch_t;;

let block_none_halfbridge = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.block_none_halfbridge;;

let z_nh2_s_ch2_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh2_s_ch2_s;;

let z_nh3p1_s_ch2_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_nh3p1_s_ch2_s;;

let z_oh_s_co_s = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.z_oh_s_co_s;;

let segment_rightextended_fromid = segment_symbol_of_segment_head_symbol Segment_head_symbol_v.segment_rightextended_fromid;;

let s_be_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_be_s;;

let s_hg_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_hg_s;;

let s_o_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_o_s;;

let s_s_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_s_s;;

let s_im1_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_im1_s;;

let s_xe_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_xe_s;;

let s_bf_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_bf_s;;

let s_nh_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_nh_s;;

let s_pcl_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_pcl_s;;

let s_clf_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_clf_s;;

let s_brf_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_brf_s;;

let s_ch2_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_ch2_s;;

let s_nh2p1_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_nh2p1_s;;

let s_sf2_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_sf2_s;;

let s_co_c = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_co_c;;

let s_nh_c = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_nh_c;;

let s_ch_d = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_ch_d;;

let s_n_d = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_n_d;;

let s_nhp1_d = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_nhp1_d;;

let s_c_t = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_c_t;;

let s_np1_t = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_np1_t;;

let s_co_c_nh_s_ch2_s = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.s_co_c_nh_s_ch2_s;;

let segment_leftextended_fromid = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.segment_leftextended_fromid;;

let segment_polymer_fromid = segment_symbol_of_segment_buried_symbol Segment_buried_symbol_v.segment_polymer_fromid;;


(** {6 Making} *)


let make s = function
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
  | "z_nh2_s_ch2_s" -> z_nh2_s_ch2_s
  | "z_nh3p1_s_ch2_s" -> z_nh3p1_s_ch2_s
  | "z_oh_s_co_s" -> z_oh_s_co_s
  | "segment_rightextended_fromid" -> segment_rightextended_fromid
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
  | "s_co_c_nh_s_ch2_s" -> s_co_c_nh_s_ch2_s
  | "segment_leftextended_fromid" -> segment_leftextended_fromid
  | "segment_polymer_fromid" -> segment_polymer_fromid
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let segment_head_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_head_symbol sym_seh -> sym_seh
  | sym_set -> Error_messages_v.print_fatal_error
      nam_cod "segment_head_symbol_off_segment_symbol"
      "Segment_head_symbol"
      (name sym_set) "check"
;;

let block_zerotied_onetied_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax1_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax1_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax1en_diatomic_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax3_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax3_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax4_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax4_symbol_off_segment_head_symbol sym_seh
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol sym_seh
;;

let block_none_conjugated_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_conjugated_symbol_off_segment_head_symbol sym_seh
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
;;

let block_none_double_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_double_symbol_off_segment_head_symbol sym_seh
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
;;

let block_none_triple_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_triple_symbol_off_segment_head_symbol sym_seh
;;

let block_none_triple_ax2_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_triple_ax2_symbol_off_segment_head_symbol sym_seh
;;

let block_none_triple_ax2e0_linear_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol sym_seh
;;

let segment_zerotied_onetied_symbol_off_segment_symbol sym_set = 
  let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
    Segment_head_symbol_v.segment_zerotied_onetied_symbol_off_segment_head_symbol sym_seh
;;

let segment_buried_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_buried_symbol sym_seb -> sym_seb
  | sym_set -> Error_messages_v.print_fatal_error
      nam_cod "segment_buried_symbol_off_segment_symbol"
      "Segment_buried_symbol"
      (name sym_set) "check"
;;

let block_onetied_onetied_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax2_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax2_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax2e0_bent_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax2e0_bent_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax2e2_bent_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax2e2_bent_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax2e3_linear_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax2e3_linear_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax3_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax3_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax3e2_tshaped_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax4_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax4_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_single_ax4e1_seesaw_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_conjugated_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_conjugated_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_double_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_double_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_double_ax3_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_double_ax3_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_triple_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_triple_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_triple_ax2_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_triple_ax2_symbol_off_segment_buried_symbol sym_seb
;;

let block_single_triple_ax2e0_linear_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.block_single_triple_ax2e0_linear_symbol_off_segment_buried_symbol sym_seb
;;

let segment_onetied_onetied_symbol_off_segment_symbol sym_set = 
  let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
    Segment_buried_symbol_v.segment_onetied_onetied_symbol_off_segment_buried_symbol sym_seb
;;


(** {6 Querying} *)


let is_segment_head_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_head_symbol _ -> true
  | _ -> false
;;

let is_block_zerotied_onetied_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax1_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax1_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax3_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax3_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax4_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax4_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_conjugated_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_conjugated_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_double_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_double_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_triple_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_triple_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_triple_ax2_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_triple_ax2_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_segment_zerotied_onetied_symbol_off_segment_symbol sym_set =
  if not (is_segment_head_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seh = segment_head_symbol_off_segment_symbol sym_set in 
     Segment_head_symbol_v.is_segment_zerotied_onetied_symbol_off_segment_head_symbol sym_seh
    end
;;

let is_segment_buried_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_buried_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_onetied_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax2_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax2_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax3_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax3_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax4_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax4_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_conjugated_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_conjugated_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_double_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_double_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_double_ax3_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_double_ax3_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_triple_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_triple_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_triple_ax2_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_triple_ax2_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_segment_buried_symbol sym_seb
    end
;;

let is_segment_onetied_onetied_symbol_off_segment_symbol sym_set =
  if not (is_segment_buried_symbol_off_segment_symbol sym_set)
  then false
  else
    begin
     let sym_seb = segment_buried_symbol_off_segment_symbol sym_set in 
     Segment_buried_symbol_v.is_segment_onetied_onetied_symbol_off_segment_buried_symbol sym_seb
    end
;;


(** created by ./generator segment implementation symbol at 15:4 13 Mar 2012. *)



