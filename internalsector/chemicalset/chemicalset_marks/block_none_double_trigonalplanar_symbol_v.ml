(** {3 The functionalities for a Symbol for a Block_none_double_trigonalplanar.} *)

let nam_cod = "block_none_double_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_double_trigonalplanar_symbol_t.N_ch2_d -> "n_ch2_d"
  | Block_none_double_trigonalplanar_symbol_t.N_co_d -> "n_co_d"
  | Block_none_double_trigonalplanar_symbol_t.N_nh_d -> "n_nh_d"
  | Block_none_double_trigonalplanar_symbol_t.N_nh2p1_d -> "n_nh2p1_d"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch2_d = Block_none_double_trigonalplanar_symbol_t.N_ch2_d;;

let n_co_d = Block_none_double_trigonalplanar_symbol_t.N_co_d;;

let n_nh_d = Block_none_double_trigonalplanar_symbol_t.N_nh_d;;

let n_nh2p1_d = Block_none_double_trigonalplanar_symbol_t.N_nh2p1_d;;


(** {6 Making} *)


let make = function
  | "n_ch2_d" -> n_ch2_d
  | "n_co_d" -> n_co_d
  | "n_nh_d" -> n_nh_d
  | "n_nh2p1_d" -> n_nh2p1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_double_trigonalplanar implementation symbol at 14:23 25 Feb 2012. *)



