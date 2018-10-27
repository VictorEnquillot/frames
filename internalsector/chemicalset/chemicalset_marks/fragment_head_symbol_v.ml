(** {3 The functionalities for a Symbol for a Fragment_head.} *)

let nam_cod = "fragment_head_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_head_symbol_t.Block_zerotied_forktied -> "block_zerotied_forktied"
  | Fragment_head_symbol_t.Fragment_head_forked_symbol sym_fhf ->
      Fragment_head_forked_symbol_v.name sym_fhf
  | Fragment_head_symbol_t.Fragment_head_halfbridged_symbol sym_fhh ->
      Fragment_head_halfbridged_symbol_v.name sym_fhh
  | Fragment_head_symbol_t.Fragment_head_rightextended_fromid -> "fragment_head_rightextended_fromid"
;;


(** {6 Upgrading} *)


let fragment_head_symbol_of_fragment_head_forked_symbol sym_fhf = 
  Fragment_head_symbol_t.Fragment_head_forked_symbol sym_fhf
;;

let fragment_head_symbol_of_fragment_head_biforked_symbol sym_fhb = 
  let sym_fhf = Fragment_head_forked_symbol_v.fragment_head_forked_symbol_of_fragment_head_biforked_symbol sym_fhb in
    fragment_head_symbol_of_fragment_head_forked_symbol sym_fhf
;;

let fragment_head_symbol_of_fragment_head_triforked_symbol sym_fht = 
  let sym_fhf = Fragment_head_forked_symbol_v.fragment_head_forked_symbol_of_fragment_head_triforked_symbol sym_fht in
    fragment_head_symbol_of_fragment_head_forked_symbol sym_fhf
;;

let fragment_head_symbol_of_fragment_head_halfbridged_symbol sym_fhh = 
  Fragment_head_symbol_t.Fragment_head_halfbridged_symbol sym_fhh
;;


(** {6 Abbreviating} *)


let block_zerotied_forktied = Fragment_head_symbol_t.Block_zerotied_forktied;;

let z_ch3_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_ch3_s_ch_ss;;

let z_ch3_s_ch2_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_ch3_s_ch2_s_ch_ss;;

let z_ch3_s_ch2_sr2_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_ch3_s_ch2_sr2_ch_ss;;

let z_ch3_s_co_c_nh_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_ch3_s_co_c_nh_s_ch_ss;;

let z_co2m1_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_co2m1_s_ch_ss;;

let z_nh2_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_nh2_s_ch_ss;;

let z_nh3p1_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_nh3p1_s_ch_ss;;

let z_nh_d_c_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_nh_d_c_ss;;

let z_oh_s_co_s_ch_ss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_oh_s_co_s_ch_ss;;

let z_nh2_s_c_sd = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_nh2_s_c_sd;;

let z_oh_s_c_cc = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_oh_s_c_cc;;

let z_ch3_s_c_sss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_ch3_s_c_sss;;

let z_nh2_s_c_sss = fragment_head_symbol_of_fragment_head_forked_symbol Fragment_head_forked_symbol_v.z_nh2_s_c_sss;;

let hb_s_nh_s_ch2_sr3_s_ch_s = fragment_head_symbol_of_fragment_head_halfbridged_symbol Fragment_head_halfbridged_symbol_v.hb_s_nh_s_ch2_sr3_s_ch_s;;

let fragment_head_rightextended_fromid = Fragment_head_symbol_t.Fragment_head_rightextended_fromid;;


(** {6 Making} *)


let make s = function
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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let fragment_head_forked_symbol_off_fragment_head_symbol = function
  | Fragment_head_symbol_t.Fragment_head_forked_symbol sym_fhf -> sym_fhf
  | sym_frh -> Error_messages_v.print_fatal_error
      nam_cod "fragment_head_forked_symbol_off_fragment_head_symbol"
      "Fragment_head_forked_symbol"
      (name sym_frh) "check"
;;

let fragment_head_biforked_symbol_off_fragment_head_symbol sym_frh = 
  let sym_fhf = fragment_head_forked_symbol_off_fragment_head_symbol sym_frh in 
    Fragment_head_forked_symbol_v.fragment_head_biforked_symbol_off_fragment_head_forked_symbol sym_fhf
;;

let fragment_head_triforked_symbol_off_fragment_head_symbol sym_frh = 
  let sym_fhf = fragment_head_forked_symbol_off_fragment_head_symbol sym_frh in 
    Fragment_head_forked_symbol_v.fragment_head_triforked_symbol_off_fragment_head_forked_symbol sym_fhf
;;

let fragment_head_halfbridged_symbol_off_fragment_head_symbol = function
  | Fragment_head_symbol_t.Fragment_head_halfbridged_symbol sym_fhh -> sym_fhh
  | sym_frh -> Error_messages_v.print_fatal_error
      nam_cod "fragment_head_halfbridged_symbol_off_fragment_head_symbol"
      "Fragment_head_halfbridged_symbol"
      (name sym_frh) "check"
;;


(** {6 Querying} *)


let is_fragment_head_forked_symbol_off_fragment_head_symbol = function
  | Fragment_head_symbol_t.Fragment_head_forked_symbol _ -> true
  | _ -> false
;;

let is_fragment_head_biforked_symbol_off_fragment_head_symbol sym_frh =
  if not (is_fragment_head_forked_symbol_off_fragment_head_symbol sym_frh)
  then false
  else
    begin
     let sym_fhf = fragment_head_forked_symbol_off_fragment_head_symbol sym_frh in 
     Fragment_head_forked_symbol_v.is_fragment_head_biforked_symbol_off_fragment_head_forked_symbol sym_fhf
    end
;;

let is_fragment_head_triforked_symbol_off_fragment_head_symbol sym_frh =
  if not (is_fragment_head_forked_symbol_off_fragment_head_symbol sym_frh)
  then false
  else
    begin
     let sym_fhf = fragment_head_forked_symbol_off_fragment_head_symbol sym_frh in 
     Fragment_head_forked_symbol_v.is_fragment_head_triforked_symbol_off_fragment_head_forked_symbol sym_fhf
    end
;;

let is_fragment_head_halfbridged_symbol_off_fragment_head_symbol = function
  | Fragment_head_symbol_t.Fragment_head_halfbridged_symbol _ -> true
  | _ -> false
;;


(** created by ./generator fragment_head implementation symbol at 15:3 13 Mar 2012. *)



