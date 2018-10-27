(** {3 The functionalities for a Symbol for a Block_single_conjugated_diatomic.} *)

let nam_cod = "block_single_conjugated_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_conjugated_diatomic_symbol_t.S_unda_c -> "s_unda_c"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_unda_c = Block_single_conjugated_diatomic_symbol_t.S_unda_c;;


(** {6 Making} *)


let make = function
  | "s_unda_c" -> s_unda_c
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_conjugated_diatomic implementation symbol at 14:24 25 Feb 2012. *)



