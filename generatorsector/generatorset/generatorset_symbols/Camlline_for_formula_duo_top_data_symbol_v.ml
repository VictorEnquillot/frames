(** {3 Camlline_for_formula_duo_top_data_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_duo_top_data_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function -> "let_ed_tag_list_off_et_formula_equal_function"
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal -> "let_ed_tag_list_off_et_formula_for_at_equal"
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal -> "let_ed_tag_list_off_et_tag_tag_at_equal"
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at -> "ed_tag_list_off_et_formula_for_at"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function -> ""
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal -> ""
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal -> ""
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dtd =
  Format.sprintf "Camlline_for_formula_duo_top_data_symbol_t.%s" (String.capitalize_ascii (name sym_dtd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dtd =
  Format.sprintf "%s \"%s\"" (longname sym_dtd) (string_off sym_dtd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_let_ed_tag_list_off_et_formula_equal_function = function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function -> true
  | _ -> false
;;

let is_let_ed_tag_list_off_et_formula_for_at_equal = function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal -> true
  | _ -> false
;;

let is_let_ed_tag_list_off_et_tag_tag_at_equal = function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal -> true
  | _ -> false
;;

let is_ed_tag_list_off_et_formula_for_at = function
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at -> true
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

let let_ed_tag_list_off_et_formula_equal_function = Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function;;

let let_ed_tag_list_off_et_formula_for_at_equal = Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal;;

let let_ed_tag_list_off_et_tag_tag_at_equal = Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal;;

let ed_tag_list_off_et_formula_for_at = Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at;;

(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "let_ed_tag_list_off_et_formula_equal_function" -> let_ed_tag_list_off_et_formula_equal_function
  | "let_ed_tag_list_off_et_formula_for_at_equal" -> let_ed_tag_list_off_et_formula_for_at_equal
  | "let_ed_tag_list_off_et_tag_tag_at_equal" -> let_ed_tag_list_off_et_tag_tag_at_equal
  | "ed_tag_list_off_et_formula_for_at" -> ed_tag_list_off_et_formula_for_at
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_duo_top_data_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula_duo_top_data subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_duo_top_data_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_duo_top_data_symbol:Camlline_for_formula_duo_top_data_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_formula_duo_top_data implementation_for_symbol symbol at 9:15 6 May 2013. *)



