(** {3 The functionalities for a Symbol for a Fragment_onetied_zerotied.} *)

let nam_cod = "fragment_onetied_zerotied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_onetied_zerotied_symbol_t.S_ch_d_cd_ch2_z -> "s_ch_d_cd_ch2_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch_s_ch3_ch_s_ch3_z -> "s_ch_s_ch3_ch_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch_d_nh_z -> "s_ch_d_nh_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch_d_nh_cco_s_ch3_z -> "s_ch_d_nh_cco_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_s_ch2_s_s_s_ch3_z -> "s_ch2_s_ch2_s_s_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_s_ch3_z -> "s_ch2_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2r2_s_ch3_z -> "s_ch2r2_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2r3_s_ch3_z -> "s_ch2r3_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2r4_s_ch3_z -> "s_ch2r4_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2r5_s_ch3_z -> "s_ch2r5_s_ch3_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_s_oh_z -> "s_ch2_s_oh_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_cco_cnh2_z -> "s_ch2_cco_cnh2_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_d_co_s_oh_z -> "s_ch2_d_co_s_oh_z"
  | Fragment_onetied_zerotied_symbol_t.S_ch2_s_coo_z -> "s_ch2_s_coo_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_ch_d_cd_ch2_z = Fragment_onetied_zerotied_symbol_t.S_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = Fragment_onetied_zerotied_symbol_t.S_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = Fragment_onetied_zerotied_symbol_t.S_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = Fragment_onetied_zerotied_symbol_t.S_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = Fragment_onetied_zerotied_symbol_t.S_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = Fragment_onetied_zerotied_symbol_t.S_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = Fragment_onetied_zerotied_symbol_t.S_ch2_s_coo_z;;


(** {6 Making} *)


let make s = function
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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_onetied_zerotied implementation symbol at 15:3 13 Mar 2012. *)



