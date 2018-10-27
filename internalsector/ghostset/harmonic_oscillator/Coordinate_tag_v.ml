(** {3 Coordinate_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Coordinate_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_coo =
  Tag_v.name Coordinate_symbol_v.name tag_coo
;;

let longname tag_coo =
  Tag_v.name Coordinate_symbol_v.longname tag_coo
;;

let fullname tag_coo =
  Tag_v.name Coordinate_symbol_v.fullname tag_coo
;;

(** created by ./generator coordinate implementation tag at 10:35 26 Sep 2012. *)



