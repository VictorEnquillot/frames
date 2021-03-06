(** {3 The functionalities for a Symbol for a Block_none_singletriple_monoatomic.} *)

let nam_cod = "block_none_singletriple_monoatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singletriple_monoatomic_symbol_t.N_c_st -> "n_c_st"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_c_st = Block_none_singletriple_monoatomic_symbol_t.N_c_st;;


(** {6 Making} *)


let make = function
  | "n_c_st" -> n_c_st
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_singletriple_monoatomic implementation symbol at 14:23 25 Feb 2012. *)



