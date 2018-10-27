(** {3 The functionalities for a Symbol for a Block_single_single_trigonalpyramidal.} *)

let nam_cod = "block_single_single_trigonalpyramidal_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_trigonalpyramidal_symbol_t.S_nh_s -> "s_nh_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_nh_s = Block_single_single_trigonalpyramidal_symbol_t.S_nh_s;;


(** {6 Making} *)


let make = function
  | "s_nh_s" -> s_nh_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_single_trigonalpyramidal implementation symbol at 14:24 25 Feb 2012. *)



