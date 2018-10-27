(** {3 The functionalities for a Symbol for a Block_single_single_benttwolonepair.} *)

let nam_cod = "block_single_single_benttwolonepair_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_benttwolonepair_symbol_t.S_o_s -> "s_o_s"
  | Block_single_single_benttwolonepair_symbol_t.S_s_s -> "s_s_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_o_s = Block_single_single_benttwolonepair_symbol_t.S_o_s;;

let s_s_s = Block_single_single_benttwolonepair_symbol_t.S_s_s;;


(** {6 Making} *)


let make = function
  | "s_o_s" -> s_o_s
  | "s_s_s" -> s_s_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_single_benttwolonepair implementation symbol at 14:24 25 Feb 2012. *)



