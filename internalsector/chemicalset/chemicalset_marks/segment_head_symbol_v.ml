(** {3 The functionalities for a Symbol for a Segment_head.} *)

let nam_cod = "segment_head_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Segment_head_symbol_t.Block_zerotied_onetied_symbol sym_b01 ->
      Block_zerotied_onetied_symbol_v.name sym_b01
  | Segment_head_symbol_t.Segment_zerotied_onetied_symbol sym_s01 ->
      Segment_zerotied_onetied_symbol_v.name sym_s01
  | Segment_head_symbol_t.Segment_rightextended_fromid -> "segment_rightextended_fromid"
;;


(** {6 Upgrading} *)


let segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01 = 
  Segment_head_symbol_t.Block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_symbol sym_bns = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax1_symbol sym_nsa in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax3_symbol sym_nsa in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax4_symbol sym_nsa in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_conjugated_symbol sym_bnc = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_conjugated_symbol sym_bnc in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_double_symbol sym_bnd = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_double_symbol sym_bnd in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_triple_symbol sym_bnt = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_triple_symbol sym_bnt in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_triple_ax2_symbol sym_nta in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_b01 = Block_zerotied_onetied_symbol_v.block_zerotied_onetied_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    segment_head_symbol_of_block_zerotied_onetied_symbol sym_b01
;;

let segment_head_symbol_of_segment_zerotied_onetied_symbol sym_s01 = 
  Segment_head_symbol_t.Segment_zerotied_onetied_symbol sym_s01
;;


(** {6 Abbreviating} *)


let z_h_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_h_s;;

let z_f_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_f_s;;

let z_s_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_s_s;;

let z_coh_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_coh_s;;

let z_co2m1_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_co2m1_s;;

let z_no2_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_no2_s;;

let z_nh2_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_nh2_s;;

let z_ch3_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_ch3_s;;

let z_nh3p1_s = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_nh3p1_s;;

let z_nh2_c = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_nh2_c;;

let z_ch2_d = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_ch2_d;;

let z_co_d = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_co_d;;

let z_nh_d = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_nh_d;;

let z_nh2p1_d = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_nh2p1_d;;

let z_ch_t = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.z_ch_t;;

let block_none_halfbridge = segment_head_symbol_of_block_zerotied_onetied_symbol Block_zerotied_onetied_symbol_v.block_none_halfbridge;;

let z_nh2_s_ch2_s = segment_head_symbol_of_segment_zerotied_onetied_symbol Segment_zerotied_onetied_symbol_v.z_nh2_s_ch2_s;;

let z_nh3p1_s_ch2_s = segment_head_symbol_of_segment_zerotied_onetied_symbol Segment_zerotied_onetied_symbol_v.z_nh3p1_s_ch2_s;;

let z_oh_s_co_s = segment_head_symbol_of_segment_zerotied_onetied_symbol Segment_zerotied_onetied_symbol_v.z_oh_s_co_s;;

let segment_rightextended_fromid = Segment_head_symbol_t.Segment_rightextended_fromid;;


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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_zerotied_onetied_symbol_off_segment_head_symbol = function
  | Segment_head_symbol_t.Block_zerotied_onetied_symbol sym_b01 -> sym_b01
  | sym_seh -> Error_messages_v.print_fatal_error
      nam_cod "block_zerotied_onetied_symbol_off_segment_head_symbol"
      "Block_zerotied_onetied_symbol"
      (name sym_seh) "check"
;;

let block_none_single_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax1_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax1_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax3_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax3_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax4_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax4_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_conjugated_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_conjugated_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_double_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_double_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_triple_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_triple_ax2_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_triple_ax2_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol sym_seh = 
  let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
    Block_zerotied_onetied_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_zerotied_onetied_symbol sym_b01
;;

let segment_zerotied_onetied_symbol_off_segment_head_symbol = function
  | Segment_head_symbol_t.Segment_zerotied_onetied_symbol sym_s01 -> sym_s01
  | sym_seh -> Error_messages_v.print_fatal_error
      nam_cod "segment_zerotied_onetied_symbol_off_segment_head_symbol"
      "Segment_zerotied_onetied_symbol"
      (name sym_seh) "check"
;;


(** {6 Querying} *)


let is_block_zerotied_onetied_symbol_off_segment_head_symbol = function
  | Segment_head_symbol_t.Block_zerotied_onetied_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax1_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax1_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax3_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax3_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax4_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax4_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_conjugated_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_conjugated_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_double_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_double_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_triple_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_triple_ax2_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_triple_ax2_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol sym_seh =
  if not (is_block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh)
  then false
  else
    begin
     let sym_b01 = block_zerotied_onetied_symbol_off_segment_head_symbol sym_seh in 
     Block_zerotied_onetied_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_zerotied_onetied_symbol sym_b01
    end
;;

let is_segment_zerotied_onetied_symbol_off_segment_head_symbol = function
  | Segment_head_symbol_t.Segment_zerotied_onetied_symbol _ -> true
  | _ -> false
;;


(** created by ./generator segment_head implementation symbol at 15:4 13 Mar 2012. *)



