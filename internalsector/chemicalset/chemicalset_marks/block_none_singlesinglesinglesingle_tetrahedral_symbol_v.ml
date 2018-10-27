(** {3 The functionalities for a Symbol for a Block_none_singlesinglesinglesingle_tetrahedral.} *)

let nam_cod = "block_none_singlesinglesinglesingle_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singlesinglesinglesingle_tetrahedral_symbol_t.N_c_ssss -> "n_c_ssss"
  | Block_none_singlesinglesinglesingle_tetrahedral_symbol_t.N_np4_ssss -> "n_np4_ssss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_c_ssss = Block_none_singlesinglesinglesingle_tetrahedral_symbol_t.N_c_ssss;;

let n_np4_ssss = Block_none_singlesinglesinglesingle_tetrahedral_symbol_t.N_np4_ssss;;


(** {6 Making} *)


let make = function
  | "n_c_ssss" -> n_c_ssss
  | "n_np4_ssss" -> n_np4_ssss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_singlesinglesinglesingle_tetrahedral implementation symbol at 14:23 25 Feb 2012. *)



