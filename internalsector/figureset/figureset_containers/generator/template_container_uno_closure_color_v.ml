(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
[
  "Current : FFIG:This_container_v";
  "Needed-by: FFIG:This_formula_v";
  "What-is-it : a Uno float";
  "How-is-it-done: ";
  "Remark : it is a Closure";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    Color_symbol_v.name
    con_ttt
;;

let string_off con_ttt =
  ""
;;

let longname con_ttt =
  name con_ttt
;;

let fullname con_ttt =
  name con_ttt
;;

(** {6 Making} *)

let make sym_col =
  Uno_v.make sym_col
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let nam_dba = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_database_name_off_sole_index 
      soi_ttt
  in
  match nam_dba with 
  | _ ->
      let nam_fun = "container_of_tag" in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	(Format.sprintf "Database >%s< were implemented" nam_dba)
	"It is NOT"
	"Please report or implement code" 
;;

(** {6 Closure Color off Container} *)

let color_symbol_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

let color_symbol_tuple_off_this_container con_ttt =
  Tuple_t.Uno con_ttt
;;

let color_symbol_list_off_this_container con_ttt =
  Uno_v.list_of_uno con_ttt
;;

