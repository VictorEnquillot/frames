(** {3 The functionalities for a Symbol for a Fragment_head_biforked.} *)

let nam_cod = "fragment_head_biforked_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_head_biforked_symbol_t.Z_ch3_s_ch_ss -> "z_ch3_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_ch3_s_ch2_s_ch_ss -> "z_ch3_s_ch2_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_ch3_s_ch2_sr2_ch_ss -> "z_ch3_s_ch2_sr2_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_ch3_s_co_c_nh_s_ch_ss -> "z_ch3_s_co_c_nh_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_co2m1_s_ch_ss -> "z_co2m1_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_nh2_s_ch_ss -> "z_nh2_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_nh3p1_s_ch_ss -> "z_nh3p1_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_nh_d_c_ss -> "z_nh_d_c_ss"
  | Fragment_head_biforked_symbol_t.Z_oh_s_co_s_ch_ss -> "z_oh_s_co_s_ch_ss"
  | Fragment_head_biforked_symbol_t.Z_nh2_s_c_sd -> "z_nh2_s_c_sd"
  | Fragment_head_biforked_symbol_t.Z_oh_s_c_cc -> "z_oh_s_c_cc"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch3_s_ch_ss = Fragment_head_biforked_symbol_t.Z_ch3_s_ch_ss;;

let z_ch3_s_ch2_s_ch_ss = Fragment_head_biforked_symbol_t.Z_ch3_s_ch2_s_ch_ss;;

let z_ch3_s_ch2_sr2_ch_ss = Fragment_head_biforked_symbol_t.Z_ch3_s_ch2_sr2_ch_ss;;

let z_ch3_s_co_c_nh_s_ch_ss = Fragment_head_biforked_symbol_t.Z_ch3_s_co_c_nh_s_ch_ss;;

let z_co2m1_s_ch_ss = Fragment_head_biforked_symbol_t.Z_co2m1_s_ch_ss;;

let z_nh2_s_ch_ss = Fragment_head_biforked_symbol_t.Z_nh2_s_ch_ss;;

let z_nh3p1_s_ch_ss = Fragment_head_biforked_symbol_t.Z_nh3p1_s_ch_ss;;

let z_nh_d_c_ss = Fragment_head_biforked_symbol_t.Z_nh_d_c_ss;;

let z_oh_s_co_s_ch_ss = Fragment_head_biforked_symbol_t.Z_oh_s_co_s_ch_ss;;

let z_nh2_s_c_sd = Fragment_head_biforked_symbol_t.Z_nh2_s_c_sd;;

let z_oh_s_c_cc = Fragment_head_biforked_symbol_t.Z_oh_s_c_cc;;


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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_head_biforked implementation symbol at 15:3 13 Mar 2012. *)



