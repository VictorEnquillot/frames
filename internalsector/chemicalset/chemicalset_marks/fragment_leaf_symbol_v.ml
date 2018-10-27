(** {3 The functionalities for a Symbol for a Fragment_leaf.} *)

let nam_cod = "fragment_leaf_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_leaf_symbol_t.Block_onetied_zerotied -> "block_onetied_zerotied"
  | Fragment_leaf_symbol_t.Fragment_onetied_zerotied_symbol sym_f10 ->
      Fragment_onetied_zerotied_symbol_v.name sym_f10
  | Fragment_leaf_symbol_t.Fragment_leaf_fromid _ -> "fragment_leaf_fromid"
  | Fragment_leaf_symbol_t.Fragment_leaf_leftextended_fromid _ -> "fragment_leaf_leftextended_fromid"
  | Fragment_leaf_symbol_t.Fragment_leaf_halfbridgetailed_symbol sym_flh ->
      Fragment_leaf_halfbridgetailed_symbol_v.name sym_flh
;;


(** {6 Upgrading} *)


let fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  Fragment_leaf_symbol_t.Fragment_onetied_zerotied_symbol sym_f10
;;

let fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  Fragment_leaf_symbol_t.Fragment_leaf_halfbridgetailed_symbol sym_flh
;;


(** {6 Abbreviating} *)


let block_onetied_zerotied = Fragment_leaf_symbol_t.Block_onetied_zerotied;;

let s_ch_d_cd_ch2_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol Fragment_onetied_zerotied_symbol_v.s_ch2_s_coo_z;;

let fragment_leaf_fromid s = Fragment_leaf_symbol_t.Fragment_leaf_fromid s;;

let fragment_leaf_leftextended_fromid s = Fragment_leaf_symbol_t.Fragment_leaf_leftextended_fromid s;;

let c_ch_cr5_hb_c = fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol Fragment_leaf_halfbridgetailed_symbol_v.c_ch_cr5_hb_c;;


(** {6 Making} *)


let make s = function
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


let fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol = function
  | Fragment_leaf_symbol_t.Fragment_onetied_zerotied_symbol sym_f10 -> sym_f10
  | sym_frl -> Error_messages_v.print_fatal_error
      nam_cod "fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol"
      "Fragment_onetied_zerotied_symbol"
      (name sym_frl) "check"
;;

let fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol = function
  | Fragment_leaf_symbol_t.Fragment_leaf_halfbridgetailed_symbol sym_flh -> sym_flh
  | sym_frl -> Error_messages_v.print_fatal_error
      nam_cod "fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol"
      "Fragment_leaf_halfbridgetailed_symbol"
      (name sym_frl) "check"
;;


(** {6 Querying} *)


let is_fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol = function
  | Fragment_leaf_symbol_t.Fragment_onetied_zerotied_symbol _ -> true
  | _ -> false
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol = function
  | Fragment_leaf_symbol_t.Fragment_leaf_halfbridgetailed_symbol _ -> true
  | _ -> false
;;


(** created by ./generator fragment_leaf implementation symbol at 15:3 13 Mar 2012. *)



