(** {3 Coordinate_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Coordinate_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type coordinate_tag = Coordinate_symbol_t.coordinate_symbol Tag_t.tag
;;


(** created by ./generator coordinate implementation tag at 10:35 26 Sep 2012. *)



