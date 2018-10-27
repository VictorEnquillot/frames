(** {3 The functionalities for a Symbol for a Block_none_singlesingle_diatomic.} *)

let nam_cod = "block_none_singlesingle_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singlesingle_diatomic_symbol_t.N_ch_sd -> "n_ch_sd"
  | Block_none_singlesingle_diatomic_symbol_t.N_nh_ss -> "n_nh_ss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch_sd = Block_none_singlesingle_diatomic_symbol_t.N_ch_sd;;

let n_nh_ss = Block_none_singlesingle_diatomic_symbol_t.N_nh_ss;;


(** {6 Making} *)


let make = function
  | "n_ch_sd" -> n_ch_sd
  | "n_nh_ss" -> n_nh_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_singlesingle_diatomic implementation symbol at 16:29 23 Feb 2012. *)



