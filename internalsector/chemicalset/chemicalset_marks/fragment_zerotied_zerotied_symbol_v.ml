(** {3 The functionalities for a Symbol for a Fragment_zerotied_zerotied.} *)

let nam_cod = "fragment_zerotied_zerotied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_co2m1_z -> "z_ch3_s_co2m1_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_co_s_oh_z -> "z_ch3_s_co_s_oh_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_oh_z -> "z_ch3_s_oh_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_ch2_s_ch3_z -> "z_ch3_s_ch2_s_ch3_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_ch2_sr2_ch3_z -> "z_ch3_s_ch2_sr2_ch3_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch3_sr2_z -> "z_ch3_sr2_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch2_s_ch2_z -> "z_ch2_s_ch2_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch2_d_ch2_z -> "z_ch2_d_ch2_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_coh_s_oh_z -> "z_coh_s_oh_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_ch_t_ch_z -> "z_ch_t_ch_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_zo2_s_zo_z -> "z_zo2_s_zo_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_oh_s_co_s_ch2_s_nh2_z -> "z_oh_s_co_s_ch2_s_nh2_z"
  | Fragment_zerotied_zerotied_symbol_t.Z_co2m1_s_ch2_s_nh3p1_z -> "z_co2m1_s_ch2_s_nh3p1_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch3_s_co2m1_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_co2m1_z;;

let z_ch3_s_co_s_oh_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_co_s_oh_z;;

let z_ch3_s_oh_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_oh_z;;

let z_ch3_s_ch2_s_ch3_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_ch2_s_ch3_z;;

let z_ch3_s_ch2_sr2_ch3_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_s_ch2_sr2_ch3_z;;

let z_ch3_sr2_z = Fragment_zerotied_zerotied_symbol_t.Z_ch3_sr2_z;;

let z_ch2_s_ch2_z = Fragment_zerotied_zerotied_symbol_t.Z_ch2_s_ch2_z;;

let z_ch2_d_ch2_z = Fragment_zerotied_zerotied_symbol_t.Z_ch2_d_ch2_z;;

let z_coh_s_oh_z = Fragment_zerotied_zerotied_symbol_t.Z_coh_s_oh_z;;

let z_ch_t_ch_z = Fragment_zerotied_zerotied_symbol_t.Z_ch_t_ch_z;;

let z_zo2_s_zo_z = Fragment_zerotied_zerotied_symbol_t.Z_zo2_s_zo_z;;

let z_oh_s_co_s_ch2_s_nh2_z = Fragment_zerotied_zerotied_symbol_t.Z_oh_s_co_s_ch2_s_nh2_z;;

let z_co2m1_s_ch2_s_nh3p1_z = Fragment_zerotied_zerotied_symbol_t.Z_co2m1_s_ch2_s_nh3p1_z;;


(** {6 Making} *)


let make s = function
  | "z_ch3_s_co2m1_z" -> z_ch3_s_co2m1_z
  | "z_ch3_s_co_s_oh_z" -> z_ch3_s_co_s_oh_z
  | "z_ch3_s_oh_z" -> z_ch3_s_oh_z
  | "z_ch3_s_ch2_s_ch3_z" -> z_ch3_s_ch2_s_ch3_z
  | "z_ch3_s_ch2_sr2_ch3_z" -> z_ch3_s_ch2_sr2_ch3_z
  | "z_ch3_sr2_z" -> z_ch3_sr2_z
  | "z_ch2_s_ch2_z" -> z_ch2_s_ch2_z
  | "z_ch2_d_ch2_z" -> z_ch2_d_ch2_z
  | "z_coh_s_oh_z" -> z_coh_s_oh_z
  | "z_ch_t_ch_z" -> z_ch_t_ch_z
  | "z_zo2_s_zo_z" -> z_zo2_s_zo_z
  | "z_oh_s_co_s_ch2_s_nh2_z" -> z_oh_s_co_s_ch2_s_nh2_z
  | "z_co2m1_s_ch2_s_nh3p1_z" -> z_co2m1_s_ch2_s_nh3p1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_zerotied_zerotied implementation symbol at 15:3 13 Mar 2012. *)



