(** {3 The functionalities for a Symbol for a Block_none_single_ax3e1_trigonalpyramidal.} *)

let nam_cod = "block_none_single_ax3e1_trigonalpyramidal_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax3e1_trigonalpyramidal_symbol_t.Z_nh2_s -> "z_nh2_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_nh2_s = Block_none_single_ax3e1_trigonalpyramidal_symbol_t.Z_nh2_s;;


(** {6 Making} *)


let make s = function
  | "z_nh2_s" -> z_nh2_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_ax3e1_trigonalpyramidal implementation symbol at 15:4 13 Mar 2012. *)



