
(** {3 The functionalities for a Symbol for a Grouping.} *)

let nam_cod = "grouping_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Grouping_symbol_t.Grouping_fromid _ -> "Grouping_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let grouping_fromid s = Grouping_symbol_t.Grouping_fromid s;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Grouping_fromid" -> grouping_fromid s
  | _ ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Grouping subtype" nam s)
      "it does not exists"
      "Check file grouping_symbol_v.ml" 
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator grouping implementation symbol at 15:46 22 May 2012. *)



