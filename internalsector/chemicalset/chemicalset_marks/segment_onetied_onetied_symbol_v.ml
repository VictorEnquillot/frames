(** {3 The functionalities for a Symbol for a Segment_onetied_onetied.} *)

let nam_cod = "segment_onetied_onetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Segment_onetied_onetied_symbol_t.S_co_c_nh_s_ch2_s -> "s_co_c_nh_s_ch2_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_co_c_nh_s_ch2_s = Segment_onetied_onetied_symbol_t.S_co_c_nh_s_ch2_s;;


(** {6 Making} *)


let make s = function
  | "s_co_c_nh_s_ch2_s" -> s_co_c_nh_s_ch2_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator segment_onetied_onetied implementation symbol at 15:5 13 Mar 2012. *)



