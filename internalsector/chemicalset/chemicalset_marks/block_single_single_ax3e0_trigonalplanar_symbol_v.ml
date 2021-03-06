(** {3 The functionalities for a Symbol for a Block_single_single_ax3e0_trigonalplanar.} *)

let nam_cod = "block_single_single_ax3e0_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_ax3e0_trigonalplanar_symbol_t.S_bf_s -> "s_bf_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_bf_s = Block_single_single_ax3e0_trigonalplanar_symbol_t.S_bf_s;;


(** {6 Making} *)


let make s = function
  | "s_bf_s" -> s_bf_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_single_ax3e0_trigonalplanar implementation symbol at 15:5 13 Mar 2012. *)



