(** {3 The functionalities for a Symbol for a Block_none_triple_ax2e0_linear.} *)

let nam_cod = "block_none_triple_ax2e0_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_triple_ax2e0_linear_symbol_t.Z_ch_t -> "z_ch_t"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch_t = Block_none_triple_ax2e0_linear_symbol_t.Z_ch_t;;


(** {6 Making} *)


let make s = function
  | "z_ch_t" -> z_ch_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_triple_ax2e0_linear implementation symbol at 15:5 13 Mar 2012. *)



