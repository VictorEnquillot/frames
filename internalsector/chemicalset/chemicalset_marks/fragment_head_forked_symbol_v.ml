(** {3 The functionalities for a Symbol for a Fragment_head_forked.} *)

let nam_cod = "fragment_head_forked_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_head_forked_symbol_t.Fragment_head_biforked_symbol sym_fhb ->
      Fragment_head_biforked_symbol_v.name sym_fhb
  | Fragment_head_forked_symbol_t.Fragment_head_triforked_symbol sym_fht ->
      Fragment_head_triforked_symbol_v.name sym_fht
;;


(** {6 Upgrading} *)


let fragment_head_forked_symbol_of_fragment_head_biforked_symbol sym_fhb = 
  Fragment_head_forked_symbol_t.Fragment_head_biforked_symbol sym_fhb
;;

let fragment_head_forked_symbol_of_fragment_head_triforked_symbol sym_fht = 
  Fragment_head_forked_symbol_t.Fragment_head_triforked_symbol sym_fht
;;


(** {6 Abbreviating} *)


let z_ch3_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_ch3_s_ch_ss;;

let z_ch3_s_ch2_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_ch3_s_ch2_s_ch_ss;;

let z_ch3_s_ch2_sr2_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_ch3_s_ch2_sr2_ch_ss;;

let z_ch3_s_co_c_nh_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_ch3_s_co_c_nh_s_ch_ss;;

let z_co2m1_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_co2m1_s_ch_ss;;

let z_nh2_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_nh2_s_ch_ss;;

let z_nh3p1_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_nh3p1_s_ch_ss;;

let z_nh_d_c_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_nh_d_c_ss;;

let z_oh_s_co_s_ch_ss = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_oh_s_co_s_ch_ss;;

let z_nh2_s_c_sd = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_nh2_s_c_sd;;

let z_oh_s_c_cc = fragment_head_forked_symbol_of_fragment_head_biforked_symbol Fragment_head_biforked_symbol_v.z_oh_s_c_cc;;

let z_ch3_s_c_sss = fragment_head_forked_symbol_of_fragment_head_triforked_symbol Fragment_head_triforked_symbol_v.z_ch3_s_c_sss;;

let z_nh2_s_c_sss = fragment_head_forked_symbol_of_fragment_head_triforked_symbol Fragment_head_triforked_symbol_v.z_nh2_s_c_sss;;


(** {6 Making} *)


let make s = function
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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let fragment_head_biforked_symbol_off_fragment_head_forked_symbol = function
  | Fragment_head_forked_symbol_t.Fragment_head_biforked_symbol sym_fhb -> sym_fhb
  | sym_fhf -> Error_messages_v.print_fatal_error
      nam_cod "fragment_head_biforked_symbol_off_fragment_head_forked_symbol"
      "Fragment_head_biforked_symbol"
      (name sym_fhf) "check"
;;

let fragment_head_triforked_symbol_off_fragment_head_forked_symbol = function
  | Fragment_head_forked_symbol_t.Fragment_head_triforked_symbol sym_fht -> sym_fht
  | sym_fhf -> Error_messages_v.print_fatal_error
      nam_cod "fragment_head_triforked_symbol_off_fragment_head_forked_symbol"
      "Fragment_head_triforked_symbol"
      (name sym_fhf) "check"
;;


(** {6 Querying} *)


let is_fragment_head_biforked_symbol_off_fragment_head_forked_symbol = function
  | Fragment_head_forked_symbol_t.Fragment_head_biforked_symbol _ -> true
  | _ -> false
;;

let is_fragment_head_triforked_symbol_off_fragment_head_forked_symbol = function
  | Fragment_head_forked_symbol_t.Fragment_head_triforked_symbol _ -> true
  | _ -> false
;;


(** created by ./generator fragment_head_forked implementation symbol at 15:3 13 Mar 2012. *)



