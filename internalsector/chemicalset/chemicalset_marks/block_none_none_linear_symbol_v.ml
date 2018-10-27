(** {3 The functionalities for a Symbol for a Block_none_none_linear.} *)

let nam_cod = "block_none_none_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_linear_symbol_t.N_co2_n -> "n_co2_n"
  | Block_none_none_linear_symbol_t.N_hgcl2_n -> "n_hgcl2_n"
  | Block_none_none_linear_symbol_t.N_becl2_n -> "n_becl2_n"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_co2_n = Block_none_none_linear_symbol_t.N_co2_n;;

let n_hgcl2_n = Block_none_none_linear_symbol_t.N_hgcl2_n;;

let n_becl2_n = Block_none_none_linear_symbol_t.N_becl2_n;;


(** {6 Making} *)


let make = function
  | "n_co2_n" -> n_co2_n
  | "n_hgcl2_n" -> n_hgcl2_n
  | "n_becl2_n" -> n_becl2_n
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_linear implementation symbol at 14:23 25 Feb 2012. *)



