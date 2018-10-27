(** {3 The functionalities for a Symbol for a Block_none_single.} *)

let nam_cod = "block_none_single_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_symbol_t.Block_none_single_ax1_symbol sym_nsa ->
      Block_none_single_ax1_symbol_v.name sym_nsa
  | Block_none_single_symbol_t.Block_none_single_ax3_symbol sym_nsa ->
      Block_none_single_ax3_symbol_v.name sym_nsa
  | Block_none_single_symbol_t.Block_none_single_ax4_symbol sym_nsa ->
      Block_none_single_ax4_symbol_v.name sym_nsa
;;


(** {6 Upgrading} *)


let block_none_single_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  Block_none_single_symbol_t.Block_none_single_ax1_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_nsa = Block_none_single_ax1_symbol_v.block_none_single_ax1_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    block_none_single_symbol_of_block_none_single_ax1_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  Block_none_single_symbol_t.Block_none_single_ax3_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_nsa = Block_none_single_ax3_symbol_v.block_none_single_ax3_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_none_single_symbol_of_block_none_single_ax3_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_nsa = Block_none_single_ax3_symbol_v.block_none_single_ax3_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_none_single_symbol_of_block_none_single_ax3_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  Block_none_single_symbol_t.Block_none_single_ax4_symbol sym_nsa
;;

let block_none_single_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_nsa = Block_none_single_ax4_symbol_v.block_none_single_ax4_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    block_none_single_symbol_of_block_none_single_ax4_symbol sym_nsa
;;


(** {6 Abbreviating} *)


let z_h_s = block_none_single_symbol_of_block_none_single_ax1_symbol Block_none_single_ax1_symbol_v.z_h_s;;

let z_f_s = block_none_single_symbol_of_block_none_single_ax1_symbol Block_none_single_ax1_symbol_v.z_f_s;;

let z_s_s = block_none_single_symbol_of_block_none_single_ax1_symbol Block_none_single_ax1_symbol_v.z_s_s;;

let z_coh_s = block_none_single_symbol_of_block_none_single_ax3_symbol Block_none_single_ax3_symbol_v.z_coh_s;;

let z_co2m1_s = block_none_single_symbol_of_block_none_single_ax3_symbol Block_none_single_ax3_symbol_v.z_co2m1_s;;

let z_no2_s = block_none_single_symbol_of_block_none_single_ax3_symbol Block_none_single_ax3_symbol_v.z_no2_s;;

let z_nh2_s = block_none_single_symbol_of_block_none_single_ax3_symbol Block_none_single_ax3_symbol_v.z_nh2_s;;

let z_ch3_s = block_none_single_symbol_of_block_none_single_ax4_symbol Block_none_single_ax4_symbol_v.z_ch3_s;;

let z_nh3p1_s = block_none_single_symbol_of_block_none_single_ax4_symbol Block_none_single_ax4_symbol_v.z_nh3p1_s;;


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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_single_ax1_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax1_symbol sym_nsa -> sym_nsa
  | sym_bns -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_ax1_symbol_off_block_none_single_symbol"
      "Block_none_single_ax1_symbol"
      (name sym_bns) "check"
;;

let block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol sym_bns = 
  let sym_nsa = block_none_single_ax1_symbol_off_block_none_single_symbol sym_bns in 
    Block_none_single_ax1_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_none_single_ax1_symbol sym_nsa
;;

let block_none_single_ax3_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax3_symbol sym_nsa -> sym_nsa
  | sym_bns -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_ax3_symbol_off_block_none_single_symbol"
      "Block_none_single_ax3_symbol"
      (name sym_bns) "check"
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol sym_bns = 
  let sym_nsa = block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns in 
    Block_none_single_ax3_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_ax3_symbol sym_nsa
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol sym_bns = 
  let sym_nsa = block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns in 
    Block_none_single_ax3_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_ax3_symbol sym_nsa
;;

let block_none_single_ax4_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax4_symbol sym_nsa -> sym_nsa
  | sym_bns -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_ax4_symbol_off_block_none_single_symbol"
      "Block_none_single_ax4_symbol"
      (name sym_bns) "check"
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol sym_bns = 
  let sym_nsa = block_none_single_ax4_symbol_off_block_none_single_symbol sym_bns in 
    Block_none_single_ax4_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol sym_nsa
;;


(** {6 Querying} *)


let is_block_none_single_ax1_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax1_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol sym_bns =
  if not (is_block_none_single_ax1_symbol_off_block_none_single_symbol sym_bns)
  then false
  else
    begin
     let sym_nsa = block_none_single_ax1_symbol_off_block_none_single_symbol sym_bns in 
     Block_none_single_ax1_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_none_single_ax1_symbol sym_nsa
    end
;;

let is_block_none_single_ax3_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax3_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol sym_bns =
  if not (is_block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns)
  then false
  else
    begin
     let sym_nsa = block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns in 
     Block_none_single_ax3_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_ax3_symbol sym_nsa
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol sym_bns =
  if not (is_block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns)
  then false
  else
    begin
     let sym_nsa = block_none_single_ax3_symbol_off_block_none_single_symbol sym_bns in 
     Block_none_single_ax3_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_ax3_symbol sym_nsa
    end
;;

let is_block_none_single_ax4_symbol_off_block_none_single_symbol = function
  | Block_none_single_symbol_t.Block_none_single_ax4_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol sym_bns =
  if not (is_block_none_single_ax4_symbol_off_block_none_single_symbol sym_bns)
  then false
  else
    begin
     let sym_nsa = block_none_single_ax4_symbol_off_block_none_single_symbol sym_bns in 
     Block_none_single_ax4_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol sym_nsa
    end
;;


(** created by ./generator block_none_single implementation symbol at 15:4 13 Mar 2012. *)



