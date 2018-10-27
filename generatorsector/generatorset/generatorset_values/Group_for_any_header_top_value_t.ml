(** {3 Group_for_any_header_top_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_any_header_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type group_for_any_header_top_value =
  | Camlfile_title of Camlline_value_t.camlline_value list 
  | Item_title of Camlline_value_t.camlline_value list 
  | Let_fullname_argument_equal of Camlline_value_t.camlline_value list 
  | Let_longname_argument_equal of Camlline_value_t.camlline_value list 
  | Let_name_argument_equal of Camlline_value_t.camlline_value list 
  | Let_retrieve_tag_top_equal of Camlline_value_t.camlline_value list 
  | Let_string_off_argument_equal of Camlline_value_t.camlline_value list 
;;

