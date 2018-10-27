(** {3 Coordinate_current_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : THAR:Coordinate_current_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_coo =
  Tag_v.name Coordinate_current_symbol_v.name tag_coo
;;

let longname tag_coo =
  Tag_v.name Coordinate_current_symbol_v.longname tag_coo
;;

let fullname tag_coo =
  Tag_v.name Coordinate_current_symbol_v.fullname tag_coo
;;

(** {6 Making} *)

let make sym_coo soi_coo =
  Tag_v.make sym_coo soi_coo
;;

