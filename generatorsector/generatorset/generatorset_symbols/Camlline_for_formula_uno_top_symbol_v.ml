(** {3 Camlline_for_formula_uno_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_uno_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_uno_top_symbol_t.For_at -> "for_at"
  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in -> "let_for_at_equal_retrieve_tag_at_in"
  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function -> "let_make_soi_at_equal_function"
  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal -> "let_make_tag_at_equal"
  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal -> "let_name_for_at_equal"
  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in -> "let_sym_at_equal_symbol_of_formula_for_at_in"
  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name -> "et_formula_vdot_name"
  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in -> "let_for_das_equal_das_vdot_make_tag_at_builder_list_in"
  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in -> "let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_uno_top_symbol_t.For_at -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in -> ""
  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in -> ""
  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fut =
  Format.sprintf "Camlline_for_formula_uno_top_symbol_t.%s" (String.capitalize (name sym_fut))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fut =
  Format.sprintf "%s \"%s\"" (longname sym_fut) (string_off sym_fut)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_for_at = function
  | Camlline_for_formula_uno_top_symbol_t.For_at -> true
  | _ -> false
;;

let is_let_for_at_equal_retrieve_tag_at_in = function
  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in -> true
  | _ -> false
;;

let is_let_make_soi_at_equal_function = function
  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function -> true
  | _ -> false
;;

let is_let_make_tag_at_equal = function
  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal -> true
  | _ -> false
;;

let is_let_name_for_at_equal = function
  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal -> true
  | _ -> false
;;

let is_let_sym_at_equal_symbol_of_formula_for_at_in = function
  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in -> true
  | _ -> false
;;

let is_et_formula_vdot_name = function
  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name -> true
  | _ -> false
;;

let is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in = function
  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in -> true
  | _ -> false
;;

let is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in = function
  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in -> true
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

let for_at = Camlline_for_formula_uno_top_symbol_t.For_at;;

let let_for_at_equal_retrieve_tag_at_in = Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in;;

let let_make_soi_at_equal_function = Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function;;

let let_make_tag_at_equal = Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal;;

let let_name_for_at_equal = Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal;;

let let_sym_at_equal_symbol_of_formula_for_at_in = Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in;;

let et_formula_vdot_name = Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name;;

let let_for_das_equal_das_vdot_make_tag_at_builder_list_in = Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in;;

let let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in = Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "for_at" -> for_at
  | "let_for_at_equal_retrieve_tag_at_in" -> let_for_at_equal_retrieve_tag_at_in
  | "let_make_soi_at_equal_function" -> let_make_soi_at_equal_function
  | "let_make_tag_at_equal" -> let_make_tag_at_equal
  | "let_name_for_at_equal" -> let_name_for_at_equal
  | "let_sym_at_equal_symbol_of_formula_for_at_in" -> let_sym_at_equal_symbol_of_formula_for_at_in
  | "et_formula_vdot_name" -> et_formula_vdot_name
  | "let_for_das_equal_das_vdot_make_tag_at_builder_list_in" -> let_for_das_equal_das_vdot_make_tag_at_builder_list_in
  | "let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in" -> let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_uno_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula_uno_top subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_uno_top_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_uno_top_symbol:Camlline_for_formula_uno_top_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_formula_uno_top implementation_for_symbol symbol at 9:15 6 May 2013. *)



