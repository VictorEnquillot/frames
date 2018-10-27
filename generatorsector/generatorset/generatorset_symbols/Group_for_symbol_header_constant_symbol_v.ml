(** {3 Group_for_symbol_header_constant_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_header_constant_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_equal_function -> "let_make_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> "let_make_nam_s_equal"
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> "let_make_of_topson_bare_nam_equal"
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> "let_make_of_topson_notleaf_nam_s_equal"
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> "let_make_of_topson_ofstring_nam_s_equal"
  | Group_for_symbol_header_constant_symbol_t.Let_name_equal_function -> "let_name_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function -> "let_name_of_topson_bare_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function -> "let_name_of_topson_notleaf_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function -> "let_name_of_topson_ofstring_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_equal_function -> "let_string_off_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function -> "let_string_off_of_topson_bare_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function -> "let_string_off_of_topson_notleaf_equal_function"
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function -> "let_string_off_of_topson_ofstring_equal_function"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_name_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function -> ""
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ghc =
  Format.sprintf "Group_for_symbol_header_constant_symbol_t.%s" (String.capitalize (name sym_ghc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ghc =
  Format.sprintf "%s \"%s\"" (longname sym_ghc) (string_off sym_ghc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_let_make_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_equal_function -> true
  | _ -> false
;;

let is_let_make_nam_s_equal = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> true
  | _ -> false
;;

let is_let_make_of_topson_bare_nam_equal = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> true
  | _ -> false
;;

let is_let_make_of_topson_notleaf_nam_s_equal = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> true
  | _ -> false
;;

let is_let_make_of_topson_ofstring_nam_s_equal = function
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> true
  | _ -> false
;;

let is_let_name_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_name_equal_function -> true
  | _ -> false
;;

let is_let_name_of_topson_bare_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function -> true
  | _ -> false
;;

let is_let_name_of_topson_notleaf_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function -> true
  | _ -> false
;;

let is_let_name_of_topson_ofstring_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function -> true
  | _ -> false
;;

let is_let_string_off_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_equal_function -> true
  | _ -> false
;;

let is_let_string_off_of_topson_bare_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function -> true
  | _ -> false
;;

let is_let_string_off_of_topson_notleaf_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function -> true
  | _ -> false
;;

let is_let_string_off_of_topson_ofstring_equal_function = function
  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function -> true
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

let let_make_equal_function = Group_for_symbol_header_constant_symbol_t.Let_make_equal_function;;

let let_make_nam_s_equal = Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = Group_for_symbol_header_constant_symbol_t.Let_name_equal_function;;

let let_name_of_topson_bare_equal_function = Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = Group_for_symbol_header_constant_symbol_t.Let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "let_make_equal_function" -> let_make_equal_function
  | "let_make_nam_s_equal" -> let_make_nam_s_equal
  | "let_make_of_topson_bare_nam_equal" -> let_make_of_topson_bare_nam_equal
  | "let_make_of_topson_notleaf_nam_s_equal" -> let_make_of_topson_notleaf_nam_s_equal
  | "let_make_of_topson_ofstring_nam_s_equal" -> let_make_of_topson_ofstring_nam_s_equal
  | "let_name_equal_function" -> let_name_equal_function
  | "let_name_of_topson_bare_equal_function" -> let_name_of_topson_bare_equal_function
  | "let_name_of_topson_notleaf_equal_function" -> let_name_of_topson_notleaf_equal_function
  | "let_name_of_topson_ofstring_equal_function" -> let_name_of_topson_ofstring_equal_function
  | "let_string_off_equal_function" -> let_string_off_equal_function
  | "let_string_off_of_topson_bare_equal_function" -> let_string_off_of_topson_bare_equal_function
  | "let_string_off_of_topson_notleaf_equal_function" -> let_string_off_of_topson_notleaf_equal_function
  | "let_string_off_of_topson_ofstring_equal_function" -> let_string_off_of_topson_ofstring_equal_function
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_header_constant_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol_header_constant subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_header_constant_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_header_constant_symbol:Group_for_symbol_header_constant_symbol_v.ml:make"
;;


(** Group_for_symbol_header_constant_symbol_v at 15:34:24 on 30 May 2013. created by version v1.13 of generator *)



