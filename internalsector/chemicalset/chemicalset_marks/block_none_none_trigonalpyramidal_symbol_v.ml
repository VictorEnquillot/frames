(** {3 The functionalities for a Symbol for a Block_none_none_trigonalpyramidal.} *)

let nam_cod = "block_none_none_trigonalpyramidal_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_trigonalpyramidal_symbol_t.N_nh3_n -> "n_nh3_n"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_nh3_n = Block_none_none_trigonalpyramidal_symbol_t.N_nh3_n;;


(** {6 Making} *)


let make = function
  | "n_nh3_n" -> n_nh3_n
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_trigonalpyramidal implementation symbol at 14:24 25 Feb 2012. *)



