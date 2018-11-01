(** {3 Item_for_formula_only_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_for_formula_only_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag -> "builder_tag_listing_off_tag"
  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons -> "building_and_storing_basic_sons"
  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons -> "building_and_storing_proper_sons"
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula -> "data_tag_listing_off_formula"
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag -> "data_tag_listing_off_tag"
  | Item_for_formula_only_top_symbol_t.Documenting_for_formula -> "documenting_for_formula"
  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula -> "fullnaming_for_formula"
  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula -> "iterating_one_function_for_formula"
  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula -> "iterating_two_functions_for_formula"
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula -> "longnaming_for_formula"
  | Item_for_formula_only_top_symbol_t.Naming_for_formula -> "naming_for_formula"
  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula -> "retrieving_for_formula"
  | Item_for_formula_only_top_symbol_t.String_offing_for_formula -> "string_offing_for_formula"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag -> ""
  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons -> ""
  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons -> ""
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula -> ""
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag -> ""
  | Item_for_formula_only_top_symbol_t.Documenting_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Naming_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula -> ""
  | Item_for_formula_only_top_symbol_t.String_offing_for_formula -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_iot =
  Format.sprintf "Item_for_formula_only_top_symbol_t.%s" (String.capitalize_ascii (name sym_iot))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_iot =
  Format.sprintf "%s \"%s\"" (longname sym_iot) (string_off sym_iot)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_builder_tag_listing_off_tag = function
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag -> true
  | _ -> false
;;

let is_building_and_storing_basic_sons = function
  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons -> true
  | _ -> false
;;

let is_building_and_storing_proper_sons = function
  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons -> true
  | _ -> false
;;

let is_data_tag_listing_off_formula = function
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula -> true
  | _ -> false
;;

let is_data_tag_listing_off_tag = function
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag -> true
  | _ -> false
;;

let is_documenting_for_formula = function
  | Item_for_formula_only_top_symbol_t.Documenting_for_formula -> true
  | _ -> false
;;

let is_fullnaming_for_formula = function
  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula -> true
  | _ -> false
;;

let is_iterating_one_function_for_formula = function
  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula -> true
  | _ -> false
;;

let is_iterating_two_functions_for_formula = function
  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula -> true
  | _ -> false
;;

let is_longnaming_for_formula = function
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula -> true
  | _ -> false
;;

let is_naming_for_formula = function
  | Item_for_formula_only_top_symbol_t.Naming_for_formula -> true
  | _ -> false
;;

let is_retrieving_for_formula = function
  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula -> true
  | _ -> false
;;

let is_string_offing_for_formula = function
  | Item_for_formula_only_top_symbol_t.String_offing_for_formula -> true
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

let builder_tag_listing_off_tag = Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag;;

let building_and_storing_basic_sons = Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons;;

let building_and_storing_proper_sons = Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons;;

let data_tag_listing_off_formula = Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula;;

let data_tag_listing_off_tag = Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag;;

let documenting_for_formula = Item_for_formula_only_top_symbol_t.Documenting_for_formula;;

let fullnaming_for_formula = Item_for_formula_only_top_symbol_t.Fullnaming_for_formula;;

let iterating_one_function_for_formula = Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula;;

let iterating_two_functions_for_formula = Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula;;

let longnaming_for_formula = Item_for_formula_only_top_symbol_t.Longnaming_for_formula;;

let naming_for_formula = Item_for_formula_only_top_symbol_t.Naming_for_formula;;

let retrieving_for_formula = Item_for_formula_only_top_symbol_t.Retrieving_for_formula;;

let string_offing_for_formula = Item_for_formula_only_top_symbol_t.String_offing_for_formula;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "builder_tag_listing_off_tag" -> builder_tag_listing_off_tag
  | "building_and_storing_basic_sons" -> building_and_storing_basic_sons
  | "building_and_storing_proper_sons" -> building_and_storing_proper_sons
  | "data_tag_listing_off_formula" -> data_tag_listing_off_formula
  | "data_tag_listing_off_tag" -> data_tag_listing_off_tag
  | "documenting_for_formula" -> documenting_for_formula
  | "fullnaming_for_formula" -> fullnaming_for_formula
  | "iterating_one_function_for_formula" -> iterating_one_function_for_formula
  | "iterating_two_functions_for_formula" -> iterating_two_functions_for_formula
  | "longnaming_for_formula" -> longnaming_for_formula
  | "naming_for_formula" -> naming_for_formula
  | "retrieving_for_formula" -> retrieving_for_formula
  | "string_offing_for_formula" -> string_offing_for_formula
  | _ ->
  failwith "Not_a_topson_bare:Item_for_formula_only_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_for_formula_only_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Item_for_formula_only_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_for_formula_only_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_for_formula_only_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_for_formula_only_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item_for_formula_only_top subtype" nam s)
      "it does not exists"
      "Check file Item_for_formula_only_top_symbol_v.ml"
    in
    failwith "Not_a_item_for_formula_only_top_symbol:Item_for_formula_only_top_symbol_v.ml:make"
;;


(** Item_for_formula_only_top_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



