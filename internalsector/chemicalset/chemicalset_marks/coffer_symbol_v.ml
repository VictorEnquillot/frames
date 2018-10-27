(** {3 The functionalities for a Symbol for a Coffer.} *)

let nam_cod = "coffer_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Coffer_symbol_t.Coffer_fromid _ -> "coffer_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let coffer_fromid s = Coffer_symbol_t.Coffer_fromid s;;


(** {6 Making} *)


let make s = function
  | "coffer_fromid" -> coffer_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator coffer implementation symbol at 15:2 13 Mar 2012. *)



