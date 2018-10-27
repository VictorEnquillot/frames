(** {3 Section_for_any_body_top_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Section_for_any_body_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type section_for_any_body_top_value = 
  | Sprintf_for_any_fullname of Group_value_t.group_value list
  | Sprintf_for_any_longname of Group_value_t.group_value list
;;




