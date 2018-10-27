(** {3 The functionalities for a Symbol for a Block_none_singletriple.} *)

let nam_cod = "block_none_singletriple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singletriple_symbol_t.Block_none_singletriple_monoatomic_symbol sym_nsm ->
      Block_none_singletriple_monoatomic_symbol_v.name sym_nsm
;;


(** {6 Upgrading} *)


let block_none_singletriple_symbol_of_block_none_singletriple_monoatomic_symbol sym_nsm = 
  Block_none_singletriple_symbol_t.Block_none_singletriple_monoatomic_symbol sym_nsm
;;


(** {6 Abbreviating} *)


let n_c_st = block_none_singletriple_symbol_of_block_none_singletriple_monoatomic_symbol Block_none_singletriple_monoatomic_symbol_v.n_c_st;;


(** {6 Making} *)


let make = function
  | "n_c_st" -> n_c_st
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singletriple_monoatomic_symbol_off_block_none_singletriple_symbol = function
  | Block_none_singletriple_symbol_t.Block_none_singletriple_monoatomic_symbol sym_nsm -> sym_nsm
;;


(** {6 Querying} *)


let is_block_none_singletriple_monoatomic_symbol_off_block_none_singletriple_symbol = function
  | Block_none_singletriple_symbol_t.Block_none_singletriple_monoatomic_symbol _ -> true
;;


(** created by ./generator block_none_singletriple implementation symbol at 14:23 25 Feb 2012. *)



