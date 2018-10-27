(** {3 Group_for_any_header_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_any_header_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_any_header_top_symbol_t.Camlfile_title -> "camlfile_title"
  | Group_for_any_header_top_symbol_t.Item_title -> "item_title"
  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal -> "let_fullname_argument_equal"
  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal -> "let_longname_argument_equal"
  | Group_for_any_header_top_symbol_t.Let_name_argument_equal -> "let_name_argument_equal"
  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal -> "let_retrieve_tag_top_equal"
  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal -> "let_string_off_argument_equal"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_any_header_top_symbol_t.Camlfile_title -> ""
  | Group_for_any_header_top_symbol_t.Item_title -> ""
  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal -> ""
  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal -> ""
  | Group_for_any_header_top_symbol_t.Let_name_argument_equal -> ""
  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal -> ""
  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ght =
  Format.sprintf "Group_for_any_header_top_symbol_t.%s" (String.capitalize (name sym_ght))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ght =
  Format.sprintf "%s \"%s\"" (longname sym_ght) (string_off sym_ght)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_camlfile_title = function
  | Group_for_any_header_top_symbol_t.Camlfile_title -> true
  | _ -> false
;;

let is_item_title = function
  | Group_for_any_header_top_symbol_t.Item_title -> true
  | _ -> false
;;

let is_let_fullname_argument_equal = function
  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal -> true
  | _ -> false
;;

let is_let_longname_argument_equal = function
  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal -> true
  | _ -> false
;;

let is_let_name_argument_equal = function
  | Group_for_any_header_top_symbol_t.Let_name_argument_equal -> true
  | _ -> false
;;

let is_let_retrieve_tag_top_equal = function
  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal -> true
  | _ -> false
;;

let is_let_string_off_argument_equal = function
  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal -> true
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

let camlfile_title = Group_for_any_header_top_symbol_t.Camlfile_title;;

let item_title = Group_for_any_header_top_symbol_t.Item_title;;

let let_fullname_argument_equal = Group_for_any_header_top_symbol_t.Let_fullname_argument_equal;;

let let_longname_argument_equal = Group_for_any_header_top_symbol_t.Let_longname_argument_equal;;

let let_name_argument_equal = Group_for_any_header_top_symbol_t.Let_name_argument_equal;;

let let_retrieve_tag_top_equal = Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = Group_for_any_header_top_symbol_t.Let_string_off_argument_equal;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "camlfile_title" -> camlfile_title
  | "item_title" -> item_title
  | "let_fullname_argument_equal" -> let_fullname_argument_equal
  | "let_longname_argument_equal" -> let_longname_argument_equal
  | "let_name_argument_equal" -> let_name_argument_equal
  | "let_retrieve_tag_top_equal" -> let_retrieve_tag_top_equal
  | "let_string_off_argument_equal" -> let_string_off_argument_equal
  | _ ->
  failwith "Not_a_topson_bare:Group_for_any_header_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_any_header_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Group_for_any_header_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_any_header_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_any_header_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_any_header_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_any_header_top subtype" nam s)
      "it does not exists"
      "Check file Group_for_any_header_top_symbol_v.ml"
    in
    failwith "Not_a_group_for_any_header_top_symbol:Group_for_any_header_top_symbol_v.ml:make"
;;


(** Group_for_any_header_top_symbol_v at 15:32:42 on 30 May 2013. created by version v1.13 of generator *)



