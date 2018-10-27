(** {3 The functionalities for a Symbol for a Block_single_single_ax3e2_tshaped.} *)

let nam_cod = "block_single_single_ax3e2_tshaped_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_ax3e2_tshaped_symbol_t.S_clf_s -> "s_clf_s"
  | Block_single_single_ax3e2_tshaped_symbol_t.S_brf_s -> "s_brf_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_clf_s = Block_single_single_ax3e2_tshaped_symbol_t.S_clf_s;;

let s_brf_s = Block_single_single_ax3e2_tshaped_symbol_t.S_brf_s;;


(** {6 Making} *)


let make s = function
  | "s_clf_s" -> s_clf_s
  | "s_brf_s" -> s_brf_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_single_single_ax3e2_tshaped implementation symbol at 15:5 13 Mar 2012. *)



