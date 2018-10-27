(** {3 The functionalities for a Symbol for a Polypeptide.} *)

let nam_cod = "polypeptide_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Polypeptide_symbol_t.Polypeptide_fromid _ -> "polypeptide_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let polypeptide_fromid s = Polypeptide_symbol_t.Polypeptide_fromid s;;


(** {6 Making} *)


let make s = function
  | "polypeptide_fromid" -> polypeptide_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator polypeptide implementation symbol at 15:4 13 Mar 2012. *)



