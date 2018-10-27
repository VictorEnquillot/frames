(** {3 The functionalities for a Symbol for a Fragment_head_halfbridged.} *)

let nam_cod = "fragment_head_halfbridged_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_head_halfbridged_symbol_t.Hb_s_nh_s_ch2_sr3_s_ch_s -> "hb_s_nh_s_ch2_sr3_s_ch_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hb_s_nh_s_ch2_sr3_s_ch_s = Fragment_head_halfbridged_symbol_t.Hb_s_nh_s_ch2_sr3_s_ch_s;;


(** {6 Making} *)


let make s = function
  | "hb_s_nh_s_ch2_sr3_s_ch_s" -> hb_s_nh_s_ch2_sr3_s_ch_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_head_halfbridged implementation symbol at 15:3 13 Mar 2012. *)



