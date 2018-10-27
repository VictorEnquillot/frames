(** {3 The functionalities for a Symbol for a Block_zerotied_onetied.} *)

let nam_cod = "block_zerotied_onetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_zerotied_onetied_symbol_t.Block_none_single_symbol sym_bns ->
      Block_none_single_symbol_v.name sym_bns
  | Block_zerotied_onetied_symbol_t.Block_none_conjugated_symbol sym_bnc ->
      Block_none_conjugated_symbol_v.name sym_bnc
  | Block_zerotied_onetied_symbol_t.Block_none_double_symbol sym_bnd ->
      Block_none_double_symbol_v.name sym_bnd
  | Block_zerotied_onetied_symbol_t.Block_none_triple_symbol sym_bnt ->
      Block_none_triple_symbol_v.name sym_bnt
  | Block_zerotied_onetied_symbol_t.Block_none_halfbridge -> "block_none_halfbridge"
;;


(** {6 Upgrading} *)


let block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns = 
  Block_zerotied_onetied_symbol_t.Block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax1_symbol sym_nsa in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3_symbol sym_nsa in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax4_symbol sym_nsa in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_bns = Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    block_zerotied_onetied_symbol_of_block_none_single_symbol sym_bns
;;

let block_zerotied_onetied_symbol_of_block_none_conjugated_symbol sym_bnc = 
  Block_zerotied_onetied_symbol_t.Block_none_conjugated_symbol sym_bnc
;;

let block_zerotied_onetied_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_bnc = Block_none_conjugated_symbol_v.block_none_conjugated_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    block_zerotied_onetied_symbol_of_block_none_conjugated_symbol sym_bnc
;;

let block_zerotied_onetied_symbol_of_block_none_double_symbol sym_bnd = 
  Block_zerotied_onetied_symbol_t.Block_none_double_symbol sym_bnd
;;

let block_zerotied_onetied_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_bnd = Block_none_double_symbol_v.block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    block_zerotied_onetied_symbol_of_block_none_double_symbol sym_bnd
;;

let block_zerotied_onetied_symbol_of_block_none_triple_symbol sym_bnt = 
  Block_zerotied_onetied_symbol_t.Block_none_triple_symbol sym_bnt
;;

let block_zerotied_onetied_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_bnt = Block_none_triple_symbol_v.block_none_triple_symbol_of_block_none_triple_ax2_symbol sym_nta in
    block_zerotied_onetied_symbol_of_block_none_triple_symbol sym_bnt
;;

let block_zerotied_onetied_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_bnt = Block_none_triple_symbol_v.block_none_triple_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    block_zerotied_onetied_symbol_of_block_none_triple_symbol sym_bnt
;;


(** {6 Abbreviating} *)


let z_h_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_h_s;;

let z_f_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_f_s;;

let z_s_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_s_s;;

let z_coh_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_coh_s;;

let z_co2m1_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_co2m1_s;;

let z_no2_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_no2_s;;

let z_nh2_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_nh2_s;;

let z_ch3_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_ch3_s;;

let z_nh3p1_s = block_zerotied_onetied_symbol_of_block_none_single_symbol Block_none_single_symbol_v.z_nh3p1_s;;

let z_nh2_c = block_zerotied_onetied_symbol_of_block_none_conjugated_symbol Block_none_conjugated_symbol_v.z_nh2_c;;

let z_ch2_d = block_zerotied_onetied_symbol_of_block_none_double_symbol Block_none_double_symbol_v.z_ch2_d;;

let z_co_d = block_zerotied_onetied_symbol_of_block_none_double_symbol Block_none_double_symbol_v.z_co_d;;

let z_nh_d = block_zerotied_onetied_symbol_of_block_none_double_symbol Block_none_double_symbol_v.z_nh_d;;

let z_nh2p1_d = block_zerotied_onetied_symbol_of_block_none_double_symbol Block_none_double_symbol_v.z_nh2p1_d;;

let z_ch_t = block_zerotied_onetied_symbol_of_block_none_triple_symbol Block_none_triple_symbol_v.z_ch_t;;

let block_none_halfbridge = Block_zerotied_onetied_symbol_t.Block_none_halfbridge;;


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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_single_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_single_symbol sym_bns -> sym_bns
  | sym_b01 -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_symbol_off_block_zerotied_onetied_symbol"
      "Block_none_single_symbol"
      (name sym_b01) "check"
;;

let block_none_single_ax1_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax1_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax1en_diatomic_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax3_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax4_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax4_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_single_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol sym_bns
;;

let block_none_conjugated_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_conjugated_symbol sym_bnc -> sym_bnc
  | sym_b01 -> Error_messages_v.print_fatal_error
      nam_cod "block_none_conjugated_symbol_off_block_zerotied_onetied_symbol"
      "Block_none_conjugated_symbol"
      (name sym_b01) "check"
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bnc = block_none_conjugated_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_conjugated_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol sym_bnc
;;

let block_none_double_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_double_symbol sym_bnd -> sym_bnd
  | sym_b01 -> Error_messages_v.print_fatal_error
      nam_cod "block_none_double_symbol_off_block_zerotied_onetied_symbol"
      "Block_none_double_symbol"
      (name sym_b01) "check"
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bnd = block_none_double_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_double_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_block_none_double_symbol sym_bnd
;;

let block_none_triple_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_triple_symbol sym_bnt -> sym_bnt
  | sym_b01 -> Error_messages_v.print_fatal_error
      nam_cod "block_none_triple_symbol_off_block_zerotied_onetied_symbol"
      "Block_none_triple_symbol"
      (name sym_b01) "check"
;;

let block_none_triple_ax2_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bnt = block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_triple_symbol_v.block_none_triple_ax2_symbol_off_block_none_triple_symbol sym_bnt
;;

let block_none_triple_ax2e0_linear_symbol_off_block_zerotied_onetied_symbol sym_b01 = 
  let sym_bnt = block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
    Block_none_triple_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol sym_bnt
;;


(** {6 Querying} *)


let is_block_none_single_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_single_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_ax1_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax1_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax3_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax4_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax4_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bns = block_none_single_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_single_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol sym_bns
    end
;;

let is_block_none_conjugated_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_conjugated_symbol _ -> true
  | _ -> false
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_conjugated_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bnc = block_none_conjugated_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_conjugated_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol sym_bnc
    end
;;

let is_block_none_double_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_double_symbol _ -> true
  | _ -> false
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_double_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bnd = block_none_double_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_double_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_none_double_symbol sym_bnd
    end
;;

let is_block_none_triple_symbol_off_block_zerotied_onetied_symbol = function
  | Block_zerotied_onetied_symbol_t.Block_none_triple_symbol _ -> true
  | _ -> false
;;

let is_block_none_triple_ax2_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bnt = block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_triple_symbol_v.is_block_none_triple_ax2_symbol_off_block_none_triple_symbol sym_bnt
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_block_zerotied_onetied_symbol sym_b01 =
  if not (is_block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01)
  then false
  else
    begin
     let sym_bnt = block_none_triple_symbol_off_block_zerotied_onetied_symbol sym_b01 in 
     Block_none_triple_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol sym_bnt
    end
;;


(** created by ./generator block_zerotied_onetied implementation symbol at 15:4 13 Mar 2012. *)



