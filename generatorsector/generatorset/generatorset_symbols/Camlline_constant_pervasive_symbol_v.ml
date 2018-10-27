(** {3 Camlline_constant_pervasive_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_constant_pervasive_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_constant_pervasive_symbol_t.Basic_type -> "basic_type"
  | Camlline_constant_pervasive_symbol_t.Begin_line -> "begin_line"
  | Camlline_constant_pervasive_symbol_t.Bracket_left -> "bracket_left"
  | Camlline_constant_pervasive_symbol_t.Bracket_right -> "bracket_right"
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left -> "curly_bracket_left"
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right -> "curly_bracket_right"
  | Camlline_constant_pervasive_symbol_t.Double_semicolon -> "double_semicolon"
  | Camlline_constant_pervasive_symbol_t.Else_line -> "else_line"
  | Camlline_constant_pervasive_symbol_t.Empty_line -> "empty_line"
  | Camlline_constant_pervasive_symbol_t.End_line -> "end_line"
  | Camlline_constant_pervasive_symbol_t.Item_title -> "item_title"
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left -> "parenthesis_left"
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right -> "parenthesis_right"
  | Camlline_constant_pervasive_symbol_t.Semicolon -> "semicolon"
  | Camlline_constant_pervasive_symbol_t.Then_false -> "then_false"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_constant_pervasive_symbol_t.Basic_type -> ""
  | Camlline_constant_pervasive_symbol_t.Begin_line -> ""
  | Camlline_constant_pervasive_symbol_t.Bracket_left -> ""
  | Camlline_constant_pervasive_symbol_t.Bracket_right -> ""
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left -> ""
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right -> ""
  | Camlline_constant_pervasive_symbol_t.Double_semicolon -> ""
  | Camlline_constant_pervasive_symbol_t.Else_line -> ""
  | Camlline_constant_pervasive_symbol_t.Empty_line -> ""
  | Camlline_constant_pervasive_symbol_t.End_line -> ""
  | Camlline_constant_pervasive_symbol_t.Item_title -> ""
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left -> ""
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right -> ""
  | Camlline_constant_pervasive_symbol_t.Semicolon -> ""
  | Camlline_constant_pervasive_symbol_t.Then_false -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ccp =
  Format.sprintf "Camlline_constant_pervasive_symbol_t.%s" (String.capitalize (name sym_ccp))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ccp =
  Format.sprintf "%s \"%s\"" (longname sym_ccp) (string_off sym_ccp)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_basic_type = function
  | Camlline_constant_pervasive_symbol_t.Basic_type -> true
  | _ -> false
;;

let is_begin_line = function
  | Camlline_constant_pervasive_symbol_t.Begin_line -> true
  | _ -> false
;;

let is_bracket_left = function
  | Camlline_constant_pervasive_symbol_t.Bracket_left -> true
  | _ -> false
;;

let is_bracket_right = function
  | Camlline_constant_pervasive_symbol_t.Bracket_right -> true
  | _ -> false
;;

let is_curly_bracket_left = function
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left -> true
  | _ -> false
;;

let is_curly_bracket_right = function
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right -> true
  | _ -> false
;;

let is_double_semicolon = function
  | Camlline_constant_pervasive_symbol_t.Double_semicolon -> true
  | _ -> false
;;

let is_else_line = function
  | Camlline_constant_pervasive_symbol_t.Else_line -> true
  | _ -> false
;;

let is_empty_line = function
  | Camlline_constant_pervasive_symbol_t.Empty_line -> true
  | _ -> false
;;

let is_end_line = function
  | Camlline_constant_pervasive_symbol_t.End_line -> true
  | _ -> false
;;

let is_item_title = function
  | Camlline_constant_pervasive_symbol_t.Item_title -> true
  | _ -> false
;;

let is_parenthesis_left = function
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left -> true
  | _ -> false
;;

let is_parenthesis_right = function
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right -> true
  | _ -> false
;;

let is_semicolon = function
  | Camlline_constant_pervasive_symbol_t.Semicolon -> true
  | _ -> false
;;

let is_then_false = function
  | Camlline_constant_pervasive_symbol_t.Then_false -> true
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

let basic_type = Camlline_constant_pervasive_symbol_t.Basic_type;;

let begin_line = Camlline_constant_pervasive_symbol_t.Begin_line;;

let bracket_left = Camlline_constant_pervasive_symbol_t.Bracket_left;;

let bracket_right = Camlline_constant_pervasive_symbol_t.Bracket_right;;

let curly_bracket_left = Camlline_constant_pervasive_symbol_t.Curly_bracket_left;;

let curly_bracket_right = Camlline_constant_pervasive_symbol_t.Curly_bracket_right;;

let double_semicolon = Camlline_constant_pervasive_symbol_t.Double_semicolon;;

let else_line = Camlline_constant_pervasive_symbol_t.Else_line;;

let empty_line = Camlline_constant_pervasive_symbol_t.Empty_line;;

let end_line = Camlline_constant_pervasive_symbol_t.End_line;;

let item_title = Camlline_constant_pervasive_symbol_t.Item_title;;

let parenthesis_left = Camlline_constant_pervasive_symbol_t.Parenthesis_left;;

let parenthesis_right = Camlline_constant_pervasive_symbol_t.Parenthesis_right;;

let semicolon = Camlline_constant_pervasive_symbol_t.Semicolon;;

let then_false = Camlline_constant_pervasive_symbol_t.Then_false;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "basic_type" -> basic_type
  | "begin_line" -> begin_line
  | "bracket_left" -> bracket_left
  | "bracket_right" -> bracket_right
  | "curly_bracket_left" -> curly_bracket_left
  | "curly_bracket_right" -> curly_bracket_right
  | "double_semicolon" -> double_semicolon
  | "else_line" -> else_line
  | "empty_line" -> empty_line
  | "end_line" -> end_line
  | "item_title" -> item_title
  | "parenthesis_left" -> parenthesis_left
  | "parenthesis_right" -> parenthesis_right
  | "semicolon" -> semicolon
  | "then_false" -> then_false
  | _ ->
  failwith "Not_a_topson_bare:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_constant_pervasive_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_constant_pervasive subtype" nam s)
      "it does not exists"
      "Check file camlline_constant_pervasive_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_constant_pervasive_symbol:Camlline_constant_pervasive_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_constant_pervasive implementation_for_symbol symbol at 9:15 6 May 2013. *)



