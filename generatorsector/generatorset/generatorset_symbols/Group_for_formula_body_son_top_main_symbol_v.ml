(** {3 Group_for_formula_body_son_top_main_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_body_son_top_main_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula -> "make_topson_pattern_notleaf_for_formula"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gtm =
  Format.sprintf "Group_for_formula_body_son_top_main_symbol_t.%s" (String.capitalize (name sym_gtm))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gtm =
  Format.sprintf "%s \"%s\"" (longname sym_gtm) (string_off sym_gtm)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_make_topson_pattern_notleaf_for_formula = function
  | Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let make_topson_pattern_notleaf_for_formula = Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "make_topson_pattern_notleaf_for_formula" -> make_topson_pattern_notleaf_for_formula
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_body_son_top_main_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula_body_son_top_main subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_body_son_top_main_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_body_son_top_main_symbol:Group_for_formula_body_son_top_main_symbol_v.ml:make"
;;


(** Group_for_formula_body_son_top_main_symbol_v at 15:33:13 on 30 May 2013. created by version v1.13 of generator *)



