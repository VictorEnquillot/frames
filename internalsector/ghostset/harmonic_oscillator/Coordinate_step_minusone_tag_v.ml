(** {3 Coordinate_step_minusone_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : THAR:Coordinate_step_minusone_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_csm =
  Tag_v.name Coordinate_step_minusone_symbol_v.name tag_csm
;;

let longname tag_csm =
  Tag_v.name Coordinate_step_minusone_symbol_v.longname tag_csm
;;

let fullname tag_csm =
  Tag_v.name Coordinate_step_minusone_symbol_v.fullname tag_csm
;;

let make sym_csm soi_csm =
  Tag_v.make sym_csm soi_csm
;;
