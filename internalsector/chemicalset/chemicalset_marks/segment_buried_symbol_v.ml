(** {3 The functionalities for a Symbol for a Segment_buried.} *)

let nam_cod = "segment_buried_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Segment_buried_symbol_t.Block_onetied_onetied_symbol sym_b11 ->
      Block_onetied_onetied_symbol_v.name sym_b11
  | Segment_buried_symbol_t.Segment_onetied_onetied_symbol sym_s11 ->
      Segment_onetied_onetied_symbol_v.name sym_s11
  | Segment_buried_symbol_t.Segment_leftextended_fromid -> "segment_leftextended_fromid"
  | Segment_buried_symbol_t.Segment_polymer_fromid -> "segment_polymer_fromid"
;;


(** {6 Upgrading} *)


let segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  Segment_buried_symbol_t.Block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_symbol sym_bss = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_symbol sym_bss in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2_symbol sym_ssa in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3_symbol sym_ssa in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4_symbol sym_ssa in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_conjugated_symbol sym_bsc in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_symbol sym_bsd in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_ax3_symbol sym_sda in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_symbol sym_bst in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_ax2_symbol sym_sta in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_b11 = Block_onetied_onetied_symbol_v.block_onetied_onetied_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    segment_buried_symbol_of_block_onetied_onetied_symbol sym_b11
;;

let segment_buried_symbol_of_segment_onetied_onetied_symbol sym_s11 = 
  Segment_buried_symbol_t.Segment_onetied_onetied_symbol sym_s11
;;


(** {6 Abbreviating} *)


let s_be_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_be_s;;

let s_hg_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_hg_s;;

let s_o_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_o_s;;

let s_s_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_s_s;;

let s_im1_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_im1_s;;

let s_xe_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_xe_s;;

let s_bf_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_bf_s;;

let s_nh_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh_s;;

let s_pcl_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_pcl_s;;

let s_clf_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_clf_s;;

let s_brf_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_brf_s;;

let s_ch2_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_ch2_s;;

let s_nh2p1_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh2p1_s;;

let s_sf2_s = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_sf2_s;;

let s_co_c = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_co_c;;

let s_nh_c = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nh_c;;

let s_ch_d = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_ch_d;;

let s_n_d = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_n_d;;

let s_nhp1_d = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_nhp1_d;;

let s_c_t = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_c_t;;

let s_np1_t = segment_buried_symbol_of_block_onetied_onetied_symbol Block_onetied_onetied_symbol_v.s_np1_t;;

let s_co_c_nh_s_ch2_s = segment_buried_symbol_of_segment_onetied_onetied_symbol Segment_onetied_onetied_symbol_v.s_co_c_nh_s_ch2_s;;

let segment_leftextended_fromid = Segment_buried_symbol_t.Segment_leftextended_fromid;;

let segment_polymer_fromid = Segment_buried_symbol_t.Segment_polymer_fromid;;


(** {6 Making} *)


let make s = function
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


let block_onetied_onetied_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Block_onetied_onetied_symbol sym_b11 -> sym_b11
  | sym_seb -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_onetied_symbol_off_segment_buried_symbol"
      "Block_onetied_onetied_symbol"
      (name sym_seb) "check"
;;

let block_single_single_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e0_bent_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e2_bent_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax2e3_linear_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax3e2_tshaped_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_single_ax4e1_seesaw_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_conjugated_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_conjugated_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_double_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_ax3_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_double_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_triple_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_ax2_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_triple_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let block_single_triple_ax2e0_linear_symbol_off_segment_buried_symbol sym_seb = 
  let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
    Block_onetied_onetied_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_onetied_onetied_symbol sym_b11
;;

let segment_onetied_onetied_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Segment_onetied_onetied_symbol sym_s11 -> sym_s11
  | sym_seb -> Error_messages_v.print_fatal_error
      nam_cod "segment_onetied_onetied_symbol_off_segment_buried_symbol"
      "Segment_onetied_onetied_symbol"
      (name sym_seb) "check"
;;


(** {6 Querying} *)


let is_block_onetied_onetied_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Block_onetied_onetied_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_conjugated_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_conjugated_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_double_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_ax3_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_double_ax3_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_ax2_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_ax2_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_segment_buried_symbol sym_seb =
  if not (is_block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb)
  then false
  else
    begin
     let sym_b11 = block_onetied_onetied_symbol_off_segment_buried_symbol sym_seb in 
     Block_onetied_onetied_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_onetied_onetied_symbol sym_b11
    end
;;

let is_segment_onetied_onetied_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Segment_onetied_onetied_symbol _ -> true
  | _ -> false
;;


(** created by ./generator segment_buried implementation symbol at 15:5 13 Mar 2012. *)



