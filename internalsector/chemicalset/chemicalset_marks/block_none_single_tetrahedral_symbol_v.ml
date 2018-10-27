(** {3 The functionalities for a Symbol for a Block_none_single_tetrahedral.} *)

let nam_cod = "block_none_single_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_tetrahedral_symbol_t.N_ch3_s -> "n_ch3_s"
  | Block_none_single_tetrahedral_symbol_t.N_co2m1_s -> "n_co2m1_s"
  | Block_none_single_tetrahedral_symbol_t.N_nh3p1_s -> "n_nh3p1_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch3_s = Block_none_single_tetrahedral_symbol_t.N_ch3_s;;

let n_co2m1_s = Block_none_single_tetrahedral_symbol_t.N_co2m1_s;;

let n_nh3p1_s = Block_none_single_tetrahedral_symbol_t.N_nh3p1_s;;


(** {6 Making} *)


let make = function
  | "n_ch3_s" -> n_ch3_s
  | "n_co2m1_s" -> n_co2m1_s
  | "n_nh3p1_s" -> n_nh3p1_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_tetrahedral implementation symbol at 14:23 25 Feb 2012. *)



