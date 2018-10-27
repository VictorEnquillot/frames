(** {3 Section_for_any_header_constant_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Section_for_any_header_constant_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type section_for_any_header_constant_value =
  | Let_documentation of Group_value_t.group_value list
  | Let_nam_cod_equal of Group_value_t.group_value list
  | Type_et_any_equal of Group_value_t.group_value list
;;




