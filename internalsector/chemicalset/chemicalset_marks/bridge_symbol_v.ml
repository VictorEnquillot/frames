(** {3 The functionalities for a Symbol for a Bridge.} *)

let nam_cod = "bridge_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Bridge_symbol_t.Hb_s -> "hb_s"
  | Bridge_symbol_t.Hb_c -> "hb_c"
  | Bridge_symbol_t.Hb_d -> "hb_d"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hb_s = Bridge_symbol_t.Hb_s;;

let hb_c = Bridge_symbol_t.Hb_c;;

let hb_d = Bridge_symbol_t.Hb_d;;


(** {6 Making} *)


let make s = function
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator bridge implementation symbol at 15:2 13 Mar 2012. *)



