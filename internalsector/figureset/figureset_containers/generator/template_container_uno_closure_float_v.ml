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
    String_v.string_of_float
    con_ttt
;;

let string_off con_ttt =
  let flo = Uno_v.element_off_uno con_ttt in
  String_v.string_of_float flo
;;

let longname con_ttt =
  name con_ttt
;;

let fullname con_ttt =
  name con_ttt
;;

(** {6 Making} *)

let make flo =
  Uno_v.make flo
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let nam_dba = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_database_name_off_sole_index 
      soi_ttt
  in
  match nam_dba with 
  | "db1" ->
      let tag_d1f = Database_db1_float_tag_from_this_tag_translator_v.translate tag_ttt in
      let flo = Float_by_database_db1_float_tag_provider_v.provide tag_d1f in
      make flo

  | _ ->
      let nam_fun = "container_of_tag" in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	(Format.sprintf "Database >%s< were implemented" nam_dba)
	"It is NOT"
	"Please report or implement code" 
;;

(** {6 Closure Float off Container} *)

let float_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

let float_tuple_off_this_container con_ttt =
  Tuple_t.Uno con_ttt
;;

let float_list_off_this_container con_ttt =
  Uno_v.list_of_uno con_ttt
;;

