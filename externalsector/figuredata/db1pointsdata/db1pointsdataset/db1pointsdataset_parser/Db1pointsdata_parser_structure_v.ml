(** {3 Db1pointsdata_parser_structure_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARDB1:Db1pointsdata_parser_structure_v";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let db1pointsdata_as_fence_cell_what_constructor_symbol_of_function_name_of_string_off_of_what nam_fun sof wha =

  let str_arg = ("db1pointsdata_set_fence_cell_" ^ wha ^ "_constructor") in

  try Db1pointsdata_symbol_v.make str_arg sof
  with Failure _ ->
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "string >%s< were a suitable argument for Db1pointsdata_set_fence_cell_*symbol_v.make function" str_arg)
      "it is NOT"
      (Format.sprintf "Check why >%s< is NOT correct" wha)
;;

