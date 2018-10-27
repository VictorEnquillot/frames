(** {3 The functionalities for a Symbol for a Block_none_singledouble_trigonalplanar.} *)

let nam_cod = "block_none_singledouble_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singledouble_trigonalplanar_symbol_t.N_ch_sd -> "n_ch_sd"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch_sd = Block_none_singledouble_trigonalplanar_symbol_t.N_ch_sd;;


(** {6 Making} *)


let make = function
  | "n_ch_sd" -> n_ch_sd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_singledouble_trigonalplanar implementation symbol at 14:23 25 Feb 2012. *)



