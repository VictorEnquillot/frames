(** {3 The functionalities for a Symbol for a Block_onetied.} *)

let nam_cod = "block_onetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_onetied_symbol_t.Block_onetied_zerotied -> "block_onetied_zerotied"
  | Block_onetied_symbol_t.Block_onetied_onetied_symbol sym_b11 ->
      Block_onetied_onetied_symbol_v.name sym_b11
  | Block_onetied_symbol_t.Block_onetied_forktied_symbol sym_b1f ->
      Block_onetied_forktied_symbol_v.name sym_b1f
;;


(** {6 Upgrading} *)


let block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  Block_onetied_symbol_t.Block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_symbol sym_bss = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_symbol sym_bss in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2_symbol sym_ssa in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3_symbol sym_ssa in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4_symbol sym_ssa in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_conjugated_symbol sym_bsc in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_symbol sym_bsd in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_ax3_symbol sym_sda in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_symbol sym_bst in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_ax2_symbol sym_sta in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    block_onetied_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  Block_onetied_symbol_t.Block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_symbol sym_bss in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_symbol sym_bss in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    block_onetied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Abbreviating} *)


let block_onetied_zerotied = Block_onetied_symbol_t.Block_onetied_zerotied;;

let s_be_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_be_s;;

let s_hg_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_hg_s;;

let s_o_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_o_s;;

let s_s_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_s_s;;

let s_im1_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_im1_s;;

let s_xe_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_xe_s;;

let s_bf_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_bf_s;;

let s_nh_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh_s;;

let s_pcl_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_pcl_s;;

let s_clf_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_clf_s;;

let s_brf_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_brf_s;;

let s_ch2_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_ch2_s;;

let s_nh2p1_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh2p1_s;;

let s_sf2_s = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_sf2_s;;

let s_co_c = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_co_c;;

let s_nh_c = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh_c;;

let s_ch_d = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_ch_d;;

let s_n_d = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_n_d;;

let s_nhp1_d = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nhp1_d;;

let s_c_t = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_c_t;;

let s_np1_t = block_onetied_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_np1_t;;

let s_n_ss = block_onetied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_n_ss;;

let s_c_sd = block_onetied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sd;;

let s_c_sss = block_onetied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sss;;

let s_nhp1_sss = block_onetied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_nhp1_sss;;


(** {6 Making} *)


let make s = function
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


let block_onetied_onetied_symbol_off_block_onetied_symbol = function
  | Block_onetied_symbol_t.Block_onetied_onetied_symbol sym_b11 -> sym_b11
  | sym_bl1 -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_onetied_symbol_off_block_onetied_symbol"
      "Block_onetied_onetied_symbol"
      (name sym_bl1) "check"
;;

let block_single_single_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e0_bent_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e2_bent_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e3_linear_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e2_tshaped_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4e1_seesaw_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_conjugated_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_conjugated_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_double_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_ax3_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_double_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_triple_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_ax2_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_triple_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_ax2e0_linear_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_onetied_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_onetied_forktied_symbol_off_block_onetied_symbol = function
  | Block_onetied_symbol_t.Block_onetied_forktied_symbol sym_b1f -> sym_b1f
  | sym_bl1 -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_forktied_symbol_off_block_onetied_symbol"
      "Block_onetied_forktied_symbol"
      (name sym_bl1) "check"
;;

let block_onetied_biforktied_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_ax3_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_triforktied_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_ax4_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_symbol sym_bl1 = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Querying} *)


let is_block_onetied_onetied_symbol_off_block_onetied_symbol = function
  | Block_onetied_symbol_t.Block_onetied_onetied_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_conjugated_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_conjugated_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_double_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_ax3_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_double_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_ax2_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_onetied_forktied_symbol_off_block_onetied_symbol = function
  | Block_onetied_symbol_t.Block_onetied_forktied_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_biforktied_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_onetied_triforktied_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_symbol sym_bl1 =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_symbol sym_bl1 in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;


(** created by ./generator block_onetied implementation symbol at 15:2 13 Mar 2012. *)



