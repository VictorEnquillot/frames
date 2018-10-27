(** {3 The functionalities for a Symbol for a Block_none_none_diatomic.} *)

let nam_cod = "block_none_none_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_diatomic_symbol_t.N_co_n -> "n_co_n"
  | Block_none_none_diatomic_symbol_t.N_fh_n -> "n_fh_n"
  | Block_none_none_diatomic_symbol_t.N_no_n -> "n_no_n"
  | Block_none_none_diatomic_symbol_t.N_ohm1_n -> "n_ohm1_n"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_co_n = Block_none_none_diatomic_symbol_t.N_co_n;;

let n_fh_n = Block_none_none_diatomic_symbol_t.N_fh_n;;

let n_no_n = Block_none_none_diatomic_symbol_t.N_no_n;;

let n_ohm1_n = Block_none_none_diatomic_symbol_t.N_ohm1_n;;


(** {6 Making} *)


let make = function
  | "n_co_n" -> n_co_n
  | "n_fh_n" -> n_fh_n
  | "n_no_n" -> n_no_n
  | "n_ohm1_n" -> n_ohm1_n
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_diatomic implementation symbol at 14:23 25 Feb 2012. *)



