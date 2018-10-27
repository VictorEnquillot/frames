(** {3 The functionalities for a Symbol for a Block_single_triple_linear.} *)

let nam_cod = "block_single_triple_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_triple_linear_symbol_t.S_c_t -> "s_c_t"
  | Block_single_triple_linear_symbol_t.S_np1_t -> "s_np1_t"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_c_t = Block_single_triple_linear_symbol_t.S_c_t;;

let s_np1_t = Block_single_triple_linear_symbol_t.S_np1_t;;


(** {6 Making} *)


let make = function
  | "s_c_t" -> s_c_t
  | "s_np1_t" -> s_np1_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_triple_linear implementation symbol at 14:24 25 Feb 2012. *)



