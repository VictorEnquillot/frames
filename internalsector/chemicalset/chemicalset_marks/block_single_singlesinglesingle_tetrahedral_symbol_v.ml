(** {3 The functionalities for a Symbol for a Block_single_singlesinglesingle_tetrahedral.} *)

let nam_cod = "block_single_singlesinglesingle_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesinglesingle_tetrahedral_symbol_t.S_c_sss -> "s_c_sss"
  | Block_single_singlesinglesingle_tetrahedral_symbol_t.S_nhp1_sss -> "s_nhp1_sss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_c_sss = Block_single_singlesinglesingle_tetrahedral_symbol_t.S_c_sss;;

let s_nhp1_sss = Block_single_singlesinglesingle_tetrahedral_symbol_t.S_nhp1_sss;;


(** {6 Making} *)


let make = function
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_singlesinglesingle_tetrahedral implementation symbol at 14:24 25 Feb 2012. *)



