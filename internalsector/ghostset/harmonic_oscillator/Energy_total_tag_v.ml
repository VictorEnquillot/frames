(** {3 Energy_total_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Energy_total_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_coo =
  Tag_v.name Energy_total_symbol_v.name tag_coo
;;

