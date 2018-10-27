(** {3 Group_for_symbol_body_son_value_t} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_body_son_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_body_son_value =
  | Pipe_esstring_arrow_es of Camlline_value_t.camlline_value list 
  | Pipe_esstring_arrow_es_sarg of Camlline_value_t.camlline_value list 
  | Pipe_es_symbol_bare_type_constructor of Camlline_value_t.camlline_value list 
  | Pipe_es_symbol_ofstring_type_constructor of Camlline_value_t.camlline_value list 
;;




