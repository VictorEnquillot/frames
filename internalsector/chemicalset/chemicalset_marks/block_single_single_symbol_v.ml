(** {3 The functionalities for a Symbol for a Block_single_single.} *)

let nam_cod = "block_single_single_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_symbol_t.Block_single_single_ax2_symbol sym_ssa ->
      Block_single_single_ax2_symbol_v.name sym_ssa
  | Block_single_single_symbol_t.Block_single_single_ax3_symbol sym_ssa ->
      Block_single_single_ax3_symbol_v.name sym_ssa
  | Block_single_single_symbol_t.Block_single_single_ax4_symbol sym_ssa ->
      Block_single_single_ax4_symbol_v.name sym_ssa
;;


(** {6 Upgrading} *)


let block_single_single_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  Block_single_single_symbol_t.Block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_ssa = Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    block_single_single_symbol_of_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_ssa = Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    block_single_single_symbol_of_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_ssa = Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    block_single_single_symbol_of_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  Block_single_single_symbol_t.Block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_ssa = Block_single_single_ax3_symbol_v.block_single_single_ax3_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    block_single_single_symbol_of_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_ssa = Block_single_single_ax3_symbol_v.block_single_single_ax3_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_single_single_symbol_of_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_ssa = Block_single_single_ax3_symbol_v.block_single_single_ax3_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    block_single_single_symbol_of_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  Block_single_single_symbol_t.Block_single_single_ax4_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_ssa = Block_single_single_ax4_symbol_v.block_single_single_ax4_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    block_single_single_symbol_of_block_single_single_ax4_symbol sym_ssa
;;

let block_single_single_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_ssa = Block_single_single_ax4_symbol_v.block_single_single_ax4_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    block_single_single_symbol_of_block_single_single_ax4_symbol sym_ssa
;;


(** {6 Abbreviating} *)


let s_be_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_be_s;;

let s_hg_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_hg_s;;

let s_o_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_o_s;;

let s_s_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_s_s;;

let s_im1_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_im1_s;;

let s_xe_s = block_single_single_symbol_of_block_single_single_ax2_symbol Block_single_single_ax2_symbol_v.s_xe_s;;

let s_bf_s = block_single_single_symbol_of_block_single_single_ax3_symbol Block_single_single_ax3_symbol_v.s_bf_s;;

let s_nh_s = block_single_single_symbol_of_block_single_single_ax3_symbol Block_single_single_ax3_symbol_v.s_nh_s;;

let s_pcl_s = block_single_single_symbol_of_block_single_single_ax3_symbol Block_single_single_ax3_symbol_v.s_pcl_s;;

let s_clf_s = block_single_single_symbol_of_block_single_single_ax3_symbol Block_single_single_ax3_symbol_v.s_clf_s;;

let s_brf_s = block_single_single_symbol_of_block_single_single_ax3_symbol Block_single_single_ax3_symbol_v.s_brf_s;;

let s_ch2_s = block_single_single_symbol_of_block_single_single_ax4_symbol Block_single_single_ax4_symbol_v.s_ch2_s;;

let s_nh2p1_s = block_single_single_symbol_of_block_single_single_ax4_symbol Block_single_single_ax4_symbol_v.s_nh2p1_s;;

let s_sf2_s = block_single_single_symbol_of_block_single_single_ax4_symbol Block_single_single_ax4_symbol_v.s_sf2_s;;


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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_single_ax2_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax2_symbol sym_ssa -> sym_ssa
  | sym_bss -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax2_symbol_off_block_single_single_symbol"
      "Block_single_single_ax2_symbol"
      (name sym_bss) "check"
;;

let block_single_single_ax2e0_bent_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax2_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_ax2e2_bent_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax2_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_ax2e3_linear_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax2_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol sym_ssa
;;

let block_single_single_ax3_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax3_symbol sym_ssa -> sym_ssa
  | sym_bss -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax3_symbol_off_block_single_single_symbol"
      "Block_single_single_ax3_symbol"
      (name sym_bss) "check"
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax3_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax3_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_ax3e2_tshaped_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax3_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_single_single_ax3_symbol sym_ssa
;;

let block_single_single_ax4_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax4_symbol sym_ssa -> sym_ssa
  | sym_bss -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax4_symbol_off_block_single_single_symbol"
      "Block_single_single_ax4_symbol"
      (name sym_bss) "check"
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax4_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol sym_ssa
;;

let block_single_single_ax4e1_seesaw_symbol_off_block_single_single_symbol sym_bss = 
  let sym_ssa = block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss in 
    Block_single_single_ax4_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol sym_ssa
;;


(** {6 Querying} *)


let is_block_single_single_ax2_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax2_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax2e0_bent_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax2_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol sym_ssa
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax2_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol sym_ssa
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax2_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax2_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol sym_ssa
    end
;;

let is_block_single_single_ax3_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax3_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax3_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_ax3_symbol sym_ssa
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax3_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_ax3_symbol sym_ssa
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax3_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax3_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_single_single_ax3_symbol sym_ssa
    end
;;

let is_block_single_single_ax4_symbol_off_block_single_single_symbol = function
  | Block_single_single_symbol_t.Block_single_single_ax4_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax4_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol sym_ssa
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_block_single_single_symbol sym_bss =
  if not (is_block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_single_ax4_symbol_off_block_single_single_symbol sym_bss in 
     Block_single_single_ax4_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol sym_ssa
    end
;;


(** created by ./generator block_single_single implementation symbol at 15:5 13 Mar 2012. *)



