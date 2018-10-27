(** {3 The functionalities for a Symbol for a Block_none_single_diatomic.} *)

let nam_cod = "block_none_single_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_diatomic_symbol_t.N_h_s -> "n_h_s"
  | Block_none_single_diatomic_symbol_t.N_f_s -> "n_f_s"
  | Block_none_single_diatomic_symbol_t.N_s_s -> "n_s_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_h_s = Block_none_single_diatomic_symbol_t.N_h_s;;

let n_f_s = Block_none_single_diatomic_symbol_t.N_f_s;;

let n_s_s = Block_none_single_diatomic_symbol_t.N_s_s;;


(** {6 Making} *)


let make = function
  | "n_h_s" -> n_h_s
  | "n_f_s" -> n_f_s
  | "n_s_s" -> n_s_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_diatomic implementation symbol at 14:23 25 Feb 2012. *)



