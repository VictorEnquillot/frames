(** {3 The functionalities for a Symbol for a Block_single_single_tetrahedral.} *)

let nam_cod = "block_single_single_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_tetrahedral_symbol_t.S_ch2_s -> "s_ch2_s"
  | Block_single_single_tetrahedral_symbol_t.S_nh2p1_s -> "s_nh2p1_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_ch2_s = Block_single_single_tetrahedral_symbol_t.S_ch2_s;;

let s_nh2p1_s = Block_single_single_tetrahedral_symbol_t.S_nh2p1_s;;


(** {6 Making} *)


let make = function
  | "s_ch2_s" -> s_ch2_s
  | "s_nh2p1_s" -> s_nh2p1_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_single_tetrahedral implementation symbol at 14:24 25 Feb 2012. *)



