
(** {3 The functionalities for a Symbol for a Fragment.} *)

let nam_cod = "fragment_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_symbol_t.Fragment_closed_fromid _ -> "Fragment_closed_fromid"
  | Fragment_symbol_t.Fragment_head_fromid _ -> "Fragment_head_fromid"
  | Fragment_symbol_t.Fragment_buried_fromid _ -> "Fragment_buried_fromid"
  | Fragment_symbol_t.Fragment_leaf_fromid _ -> "Fragment_leaf_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let fragment_closed_fromid s = Fragment_symbol_t.Fragment_closed_fromid s;;

let fragment_head_fromid s = Fragment_symbol_t.Fragment_head_fromid s;;

let fragment_buried_fromid s = Fragment_symbol_t.Fragment_buried_fromid s;;

let fragment_leaf_fromid s = Fragment_symbol_t.Fragment_leaf_fromid s;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Fragment_closed_fromid" -> fragment_closed_fromid s
  | "Fragment_head_fromid" -> fragment_head_fromid s
  | "Fragment_buried_fromid" -> fragment_buried_fromid s
  | "Fragment_leaf_fromid" -> fragment_leaf_fromid s
  | _ ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Fragment subtype" nam s)
      "it does not exists"
      "Check file fragment_symbol_v.ml" 
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator fragment implementation symbol at 15:46 22 May 2012. *)



