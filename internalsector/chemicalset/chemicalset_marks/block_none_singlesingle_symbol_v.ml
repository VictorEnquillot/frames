(** {3 The functionalities for a Symbol for a Block_none_singlesingle.} *)

let nam_cod = "block_none_singlesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singlesingle_symbol_t.Block_none_singlesingle_benttwolonepair_symbol sym_nsb ->
      Block_none_singlesingle_benttwolonepair_symbol_v.name sym_nsb
;;


(** {6 Upgrading} *)


let block_none_singlesingle_symbol_of_block_none_singlesingle_benttwolonepair_symbol sym_nsb = 
  Block_none_singlesingle_symbol_t.Block_none_singlesingle_benttwolonepair_symbol sym_nsb
;;


(** {6 Abbreviating} *)


let n_o_ss = block_none_singlesingle_symbol_of_block_none_singlesingle_benttwolonepair_symbol Block_none_singlesingle_benttwolonepair_symbol_v.n_o_ss;;


(** {6 Making} *)


let make = function
  | "n_o_ss" -> n_o_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singlesingle_benttwolonepair_symbol_off_block_none_singlesingle_symbol = function
  | Block_none_singlesingle_symbol_t.Block_none_singlesingle_benttwolonepair_symbol sym_nsb -> sym_nsb
;;


(** {6 Querying} *)


let is_block_none_singlesingle_benttwolonepair_symbol_off_block_none_singlesingle_symbol = function
  | Block_none_singlesingle_symbol_t.Block_none_singlesingle_benttwolonepair_symbol _ -> true
;;


(** created by ./generator block_none_singlesingle implementation symbol at 14:23 25 Feb 2012. *)



