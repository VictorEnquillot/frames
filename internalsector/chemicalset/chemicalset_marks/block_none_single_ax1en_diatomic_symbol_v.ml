(** {3 The functionalities for a Symbol for a Block_none_single_ax1en_diatomic.} *)

let nam_cod = "block_none_single_ax1en_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax1en_diatomic_symbol_t.Z_h_s -> "z_h_s"
  | Block_none_single_ax1en_diatomic_symbol_t.Z_f_s -> "z_f_s"
  | Block_none_single_ax1en_diatomic_symbol_t.Z_s_s -> "z_s_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_h_s = Block_none_single_ax1en_diatomic_symbol_t.Z_h_s;;

let z_f_s = Block_none_single_ax1en_diatomic_symbol_t.Z_f_s;;

let z_s_s = Block_none_single_ax1en_diatomic_symbol_t.Z_s_s;;


(** {6 Making} *)


let make s = function
  | "z_h_s" -> z_h_s
  | "z_f_s" -> z_f_s
  | "z_s_s" -> z_s_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_ax1en_diatomic implementation symbol at 15:4 13 Mar 2012. *)



