(** {3 The functionalities for a Symbol for a Block_none_none_benttwolonepair.} *)

let nam_cod = "block_none_none_benttwolonepair_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_benttwolonepair_symbol_t.N_oh2_n -> "n_oh2_n"
  | Block_none_none_benttwolonepair_symbol_t.N_of2_n -> "n_of2_n"
  | Block_none_none_benttwolonepair_symbol_t.N_sh2_n -> "n_sh2_n"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_oh2_n = Block_none_none_benttwolonepair_symbol_t.N_oh2_n;;

let n_of2_n = Block_none_none_benttwolonepair_symbol_t.N_of2_n;;

let n_sh2_n = Block_none_none_benttwolonepair_symbol_t.N_sh2_n;;


(** {6 Making} *)


let make = function
  | "n_oh2_n" -> n_oh2_n
  | "n_of2_n" -> n_of2_n
  | "n_sh2_n" -> n_sh2_n
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_benttwolonepair implementation symbol at 14:23 25 Feb 2012. *)



