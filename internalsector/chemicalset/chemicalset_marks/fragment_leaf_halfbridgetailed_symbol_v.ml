(** {3 The functionalities for a Symbol for a Fragment_leaf_halfbridgetailed.} *)

let nam_cod = "fragment_leaf_halfbridgetailed_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_leaf_halfbridgetailed_symbol_t.C_ch_cr5_hb_c -> "c_ch_cr5_hb_c"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_ch_cr5_hb_c = Fragment_leaf_halfbridgetailed_symbol_t.C_ch_cr5_hb_c;;


(** {6 Making} *)


let make s = function
  | "c_ch_cr5_hb_c" -> c_ch_cr5_hb_c
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_leaf_halfbridgetailed implementation symbol at 15:3 13 Mar 2012. *)



