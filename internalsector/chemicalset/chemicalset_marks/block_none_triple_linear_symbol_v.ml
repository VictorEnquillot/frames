(** {3 The functionalities for a Symbol for a Block_none_triple_linear.} *)

let nam_cod = "block_none_triple_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_triple_linear_symbol_t.N_ch_t -> "n_ch_t"
  | Block_none_triple_linear_symbol_t.N_n_t -> "n_n_t"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch_t = Block_none_triple_linear_symbol_t.N_ch_t;;

let n_n_t = Block_none_triple_linear_symbol_t.N_n_t;;


(** {6 Making} *)


let make = function
  | "n_ch_t" -> n_ch_t
  | "n_n_t" -> n_n_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_triple_linear implementation symbol at 14:23 25 Feb 2012. *)



