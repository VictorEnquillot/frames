(** {3 The functionalities for a Symbol for a Block_single_singlesingle_ax3e1_trigonalpyramidal.} *)

let nam_cod = "block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_t.S_n_ss -> "s_n_ss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_n_ss = Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_t.S_n_ss;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_singlesingle_ax3e1_trigonalpyramidal implementation symbol at 15:3 13 Mar 2012. *)



