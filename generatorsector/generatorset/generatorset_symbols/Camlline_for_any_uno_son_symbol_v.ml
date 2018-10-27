(** {3 Camlline_for_any_uno_son_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_son_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment -> "comment_es_comment"
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as -> "es_any_vdot_fullname_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as -> "es_any_vdot_longname_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as -> "es_any_vdot_make_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as -> "es_any_vdot_name_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as -> "es_any_vdot_string_off_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as -> "format_sprintf_fullname_ac_as_string_off_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as -> "format_sprintf_longname_es_tdot_string_capitalize_name_ac_as"
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function -> "let_is_es_any_equal_function"
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function -> "let_is_es_equal_function"
  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow -> "pipe_datastructure_ac_as_arrow"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment -> ""
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as -> ""
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function -> ""
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function -> ""
  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_aus =
  Format.sprintf "Camlline_for_any_uno_son_symbol_t.%s" (String.capitalize (name sym_aus))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_aus =
  Format.sprintf "%s \"%s\"" (longname sym_aus) (string_off sym_aus)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_comment_es_comment = function
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment -> true
  | _ -> false
;;

let is_es_any_vdot_fullname_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as -> true
  | _ -> false
;;

let is_es_any_vdot_longname_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as -> true
  | _ -> false
;;

let is_es_any_vdot_make_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as -> true
  | _ -> false
;;

let is_es_any_vdot_name_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as -> true
  | _ -> false
;;

let is_es_any_vdot_string_off_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as -> true
  | _ -> false
;;

let is_format_sprintf_fullname_ac_as_string_off_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as -> true
  | _ -> false
;;

let is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as = function
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as -> true
  | _ -> false
;;

let is_let_is_es_any_equal_function = function
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function -> true
  | _ -> false
;;

let is_let_is_es_equal_function = function
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function -> true
  | _ -> false
;;

let is_pipe_datastructure_ac_as_arrow = function
  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let comment_es_comment = Camlline_for_any_uno_son_symbol_t.Comment_es_comment;;

let es_any_vdot_fullname_ac_as = Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as;;

let es_any_vdot_longname_ac_as = Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as;;

let es_any_vdot_make_ac_as = Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as;;

let es_any_vdot_name_ac_as = Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as;;

let es_any_vdot_string_off_ac_as = Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as;;

let format_sprintf_fullname_ac_as_string_off_ac_as = Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as;;

let format_sprintf_longname_es_tdot_string_capitalize_name_ac_as = Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as;;

let let_is_es_any_equal_function = Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function;;

let let_is_es_equal_function = Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function;;

let pipe_datastructure_ac_as_arrow = Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "comment_es_comment" -> comment_es_comment
  | "es_any_vdot_fullname_ac_as" -> es_any_vdot_fullname_ac_as
  | "es_any_vdot_longname_ac_as" -> es_any_vdot_longname_ac_as
  | "es_any_vdot_make_ac_as" -> es_any_vdot_make_ac_as
  | "es_any_vdot_name_ac_as" -> es_any_vdot_name_ac_as
  | "es_any_vdot_string_off_ac_as" -> es_any_vdot_string_off_ac_as
  | "format_sprintf_fullname_ac_as_string_off_ac_as" -> format_sprintf_fullname_ac_as_string_off_ac_as
  | "format_sprintf_longname_es_tdot_string_capitalize_name_ac_as" -> format_sprintf_longname_es_tdot_string_capitalize_name_ac_as
  | "let_is_es_any_equal_function" -> let_is_es_any_equal_function
  | "let_is_es_equal_function" -> let_is_es_equal_function
  | "pipe_datastructure_ac_as_arrow" -> pipe_datastructure_ac_as_arrow
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_son_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno_son subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_son_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_son_symbol:Camlline_for_any_uno_son_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno_son implementation_for_symbol symbol at 9:15 6 May 2013. *)



