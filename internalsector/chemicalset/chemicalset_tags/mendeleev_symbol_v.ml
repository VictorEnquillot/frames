(** {3 The functionalities for a Symbol for a Mendeleev.} *)

let nam_cod = "mendeleev_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mendeleev_symbol_t.Skipped -> "skipped"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let skipped = Mendeleev_symbol_t.Skipped;;


(** {6 Making} *)


let make s = function
  | "skipped" -> skipped
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator mendeleev implementation symbol at 15:3 13 Mar 2012. *)



