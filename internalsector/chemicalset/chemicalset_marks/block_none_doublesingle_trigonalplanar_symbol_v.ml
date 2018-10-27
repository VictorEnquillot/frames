(** {3 The functionalities for a Symbol for a Block_none_doublesingle_trigonalplanar.} *)

let nam_cod = "block_none_doublesingle_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_doublesingle_trigonalplanar_symbol_t.N_ch_ds -> "n_ch_ds"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_ch_ds = Block_none_doublesingle_trigonalplanar_symbol_t.N_ch_ds;;


(** {6 Making} *)


let make = function
  | "n_ch_ds" -> n_ch_ds
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_doublesingle_trigonalplanar implementation symbol at 14:23 25 Feb 2012. *)



