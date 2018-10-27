(** {3 Coordinate_step_zero_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : THAR:Coordinate_step_zero_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_csz =
  Tag_v.name Coordinate_step_zero_symbol_v.name tag_csz
;;

let longname tag_csz =
  Tag_v.name Coordinate_step_zero_symbol_v.longname tag_csz
;;

let fullname tag_csz =
  Tag_v.name Coordinate_step_zero_symbol_v.fullname tag_csz
;;

(** {6 Making} *)

let make sym_csz soi_csz =
  Tag_v.make sym_csz soi_csz
;;

let previous_step_tag_of_coordinate_step_zero_tag tag_csz =
(* [1; step_csz-1] *)
  let (sym_csz, soi_csz) = tag_csz in
  let step_csz = List_v.ultimate_element_off_list soi_csz in
  let soi_apr = List_v.replace_last_element_of_element_of_list (step_csz-1) soi_csz in
  make sym_csz soi_apr
;;


