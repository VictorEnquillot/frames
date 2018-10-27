(** {3 Elementary_symbol_by_db1_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : DELE:Elementary_symbol_v";
   "Current : DELE:Elementary_symbol_from_db1figure_tag_translations_v";
   "Needed-by :"; 
   "What-is-it : the tree of all Local Entity_upper Symbol in Db1 Elementary_context_database_tag";
   "How-is-it-done : by translating the Db1_elementary_context_database tree Tags";
   "How-is-it-done : Elementary_border_coordinate_symbol is a Symbol no float here";
   "Remark : No storage. Only Tags are stored";
  ]
;;

(** {6 Translating} *)

(*
let elementary_symbol_coordinate_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in 
  let idx_def = List.hd soi_def in

  let wha_coo = coordinate_what_of_db1figure_float_tag tag_def in
  let sof_coo = coordinate_string_off_of_db1figure_float_tag tag_def in
  Elementary_symbol_v.elementary_data_coordinate_symbol wha_coo sof_coo

 (* Improve with specific module 
    match idx_def with
    | 1 -> "x"
    | 2 -> "y"
    | 3 -> "z"
    | _ ->
      let nam_fun = "elementary_symbol_of_db1figure_float_tag" in
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	"Db1figure_float Tag index were 1 | 2 | 3"
      (Format.sprintf "this index >%i< for Db1figure_float_tag >%s<" 
	 idx_def
	 (Db1figure_float_tag_v.fullname tag_def)
      )
	"Check" 
  in
  *)

;;
*)

let translate_without_trace tag_den =
  let sym_den = Tag_v.entity_off_tag tag_den in

  match sym_den with 
  | Db1figure_symbol_t.Db1figure_database_symbol sym_ded ->
      let sof_ded = Db1figure_database_symbol_v.string_off sym_ded in
      Elementary_symbol_v.elementary_context_database sof_ded 

  | Db1figure_symbol_t.Db1figure_float_symbol _
  | Db1figure_symbol_t.Db1figure_component_symbol _
  | Db1figure_symbol_t.Db1figure_element_symbol _ ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      let nam_fun ="translate_without_trace Db1figure_float_symbol" in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	"Db1figure_symbol were Local_database or Element"
	(Format.sprintf ">%s<" (Db1figure_symbol_v.fullname sym_den))
	   "Check" 
;;

let translate_with_trace tag_den =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_den in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_den =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then translate_with_trace tag_den
  else translate_without_trace tag_den
;;


