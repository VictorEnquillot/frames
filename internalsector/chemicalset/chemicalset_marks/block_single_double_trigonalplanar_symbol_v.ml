(** {3 The functionalities for a Symbol for a Block_single_double_trigonalplanar.} *)

let nam_cod = "block_single_double_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_double_trigonalplanar_symbol_t.S_ch_d -> "s_ch_d"
  | Block_single_double_trigonalplanar_symbol_t.S_n_d -> "s_n_d"
  | Block_single_double_trigonalplanar_symbol_t.S_nhp1_d -> "s_nhp1_d"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_ch_d = Block_single_double_trigonalplanar_symbol_t.S_ch_d;;

let s_n_d = Block_single_double_trigonalplanar_symbol_t.S_n_d;;

let s_nhp1_d = Block_single_double_trigonalplanar_symbol_t.S_nhp1_d;;


(** {6 Making} *)


let make = function
  | "s_ch_d" -> s_ch_d
  | "s_n_d" -> s_n_d
  | "s_nhp1_d" -> s_nhp1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_double_trigonalplanar implementation symbol at 14:24 25 Feb 2012. *)



