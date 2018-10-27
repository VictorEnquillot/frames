(** {3 Item_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_symbol_t.Item_for_any_only_top_symbol sym_iot ->
    Item_for_any_only_top_symbol_v.name sym_iot
  | Item_symbol_t.Item_for_formula_symbol sym_iff ->
    Item_for_formula_symbol_v.name sym_iff
  | Item_symbol_t.Item_for_symbol_symbol sym_ifs ->
    Item_for_symbol_symbol_v.name sym_ifs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_symbol_t.Item_for_any_only_top_symbol sym_iot ->
  Item_for_any_only_top_symbol_v.string_off sym_iot
  | Item_symbol_t.Item_for_formula_symbol sym_iff ->
  Item_for_formula_symbol_v.string_off sym_iff
  | Item_symbol_t.Item_for_symbol_symbol sym_ifs ->
  Item_for_symbol_symbol_v.string_off sym_ifs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ite =
  Format.sprintf "Item_symbol_t.%s" (String.capitalize (name sym_ite))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ite =
  Format.sprintf "%s \"%s\"" (longname sym_ite) (string_off sym_ite)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let item_for_any_only_top_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_any_only_top_symbol sym_iot -> sym_iot
  | sym_ite -> Error_messages_v.print_fatal_error
      nam_cod "item_for_any_only_top_symbol_off_item_symbol"
      "Item_for_any_only_top_symbol"
      (name sym_ite) "check"
;;

let item_for_formula_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_formula_symbol sym_iff -> sym_iff
  | sym_ite -> Error_messages_v.print_fatal_error
      nam_cod "item_for_formula_symbol_off_item_symbol"
      "Item_for_formula_symbol"
      (name sym_ite) "check"
;;

let item_for_symbol_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_symbol_symbol sym_ifs -> sym_ifs
  | sym_ite -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_symbol_off_item_symbol"
      "Item_for_symbol_symbol"
      (name sym_ite) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let item_for_formula_by_group_topsons_symbol_off_item_symbol sym_ite = 
  let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
    Item_for_formula_symbol_v.item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff
;;

let item_for_formula_only_top_symbol_off_item_symbol sym_ite = 
  let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
    Item_for_formula_symbol_v.item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff
;;

let item_for_symbol_each_grandson_bare_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_each_grandson_notleaf_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_each_grandson_ofstring_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_each_topson_bare_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_each_topson_notleaf_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_each_topson_ofstring_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_only_top_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs
;;

let item_for_symbol_by_group_topsons_symbol_off_item_symbol sym_ite = 
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
    Item_for_symbol_symbol_v.item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_item_for_any_only_top_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_any_only_top_symbol _ -> true
  | _ -> false
;;

let is_item_for_formula_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_formula_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_symbol_off_item_symbol = function
  | Item_symbol_t.Item_for_symbol_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_ending sym_ite =
  if not (is_item_for_any_only_top_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iot = item_for_any_only_top_symbol_off_item_symbol sym_ite in
      Item_for_any_only_top_symbol_v.is_ending sym_iot
    end
;;

let is_heading sym_ite =
  if not (is_item_for_any_only_top_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iot = item_for_any_only_top_symbol_off_item_symbol sym_ite in
      Item_for_any_only_top_symbol_v.is_heading sym_iot
    end
;;

let is_builder_tag_listing_off_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_builder_tag_listing_off_formula sym_iff
    end
;;

let is_making_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_making_for_formula sym_iff
    end
;;

let is_symbolizing_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_symbolizing_for_formula sym_iff
    end
;;

let is_typing_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_typing_for_formula sym_iff
    end
;;

let is_builder_tag_listing_off_tag sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_builder_tag_listing_off_tag sym_iff
    end
;;

let is_building_and_storing_basic_sons sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_building_and_storing_basic_sons sym_iff
    end
;;

let is_building_and_storing_proper_sons sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_building_and_storing_proper_sons sym_iff
    end
;;

let is_data_tag_listing_off_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_data_tag_listing_off_formula sym_iff
    end
;;

let is_data_tag_listing_off_tag sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_data_tag_listing_off_tag sym_iff
    end
;;

let is_documenting_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_documenting_for_formula sym_iff
    end
;;

let is_fullnaming_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_fullnaming_for_formula sym_iff
    end
;;

let is_iterating_one_function_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_iterating_one_function_for_formula sym_iff
    end
;;

let is_iterating_two_functions_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_iterating_two_functions_for_formula sym_iff
    end
;;

let is_longnaming_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_longnaming_for_formula sym_iff
    end
;;

let is_naming_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_naming_for_formula sym_iff
    end
;;

let is_retrieving_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_retrieving_for_formula sym_iff
    end
;;

let is_string_offing_for_formula sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
      Item_for_formula_symbol_v.is_string_offing_for_formula sym_iff
    end
;;

let is_abbreviating_grandson_bare_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_abbreviating_grandson_bare_for_symbol sym_ifs
    end
;;

let is_querying_grandson_bare_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_grandson_bare_for_symbol sym_ifs
    end
;;

let is_extracting_grandson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_extracting_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_querying_grandson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_upgrading_grandson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_upgrading_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_abbreviating_grandson_ofstring_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_abbreviating_grandson_ofstring_for_symbol sym_ifs
    end
;;

let is_querying_grandson_ofstring_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_grandson_ofstring_for_symbol sym_ifs
    end
;;

let is_abbreviating_topson_bare_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_abbreviating_topson_bare_for_symbol sym_ifs
    end
;;

let is_querying_topson_bare_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_topson_bare_for_symbol sym_ifs
    end
;;

let is_extracting_topson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_extracting_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_querying_topson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_upgrading_topson_notleaf_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_upgrading_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_abbreviating_topson_ofstring_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_abbreviating_topson_ofstring_for_symbol sym_ifs
    end
;;

let is_querying_topson_ofstring_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_querying_topson_ofstring_for_symbol sym_ifs
    end
;;

let is_documenting_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_documenting_for_symbol sym_ifs
    end
;;

let is_longnaming_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_longnaming_for_symbol sym_ifs
    end
;;

let is_fullnaming_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_fullnaming_for_symbol sym_ifs
    end
;;

let is_listing_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_listing_for_symbol sym_ifs
    end
;;

let is_making_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_making_for_symbol sym_ifs
    end
;;

let is_making_for_symbol_bare sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_making_for_symbol_bare sym_ifs
    end
;;

let is_making_for_symbol_notleaf sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_making_for_symbol_notleaf sym_ifs
    end
;;

let is_making_for_symbol_ofstring sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_making_for_symbol_ofstring sym_ifs
    end
;;

let is_naming_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_naming_for_symbol sym_ifs
    end
;;

let is_naming_for_symbol_bare sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_naming_for_symbol_bare sym_ifs
    end
;;

let is_naming_for_symbol_notleaf sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_naming_for_symbol_notleaf sym_ifs
    end
;;

let is_naming_for_symbol_ofstring sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_naming_for_symbol_ofstring sym_ifs
    end
;;

let is_string_offing_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_string_offing_for_symbol sym_ifs
    end
;;

let is_string_offing_for_symbol_bare sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_string_offing_for_symbol_bare sym_ifs
    end
;;

let is_string_offing_for_symbol_notleaf sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_string_offing_for_symbol_notleaf sym_ifs
    end
;;

let is_string_offing_for_symbol_ofstring sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_string_offing_for_symbol_ofstring sym_ifs
    end
;;

let is_typing_for_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
      let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
      Item_for_symbol_symbol_v.is_typing_for_symbol sym_ifs
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_item_for_formula_by_group_topsons_symbol_off_item_symbol sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
  Item_for_formula_symbol_v.is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff
    end
;;

let is_item_for_formula_only_top_symbol_off_item_symbol sym_ite =
  if not (is_item_for_formula_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_iff = item_for_formula_symbol_off_item_symbol sym_ite in
  Item_for_formula_symbol_v.is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff
    end
;;

let is_item_for_symbol_each_grandson_bare_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_each_grandson_notleaf_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_each_grandson_ofstring_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_each_topson_bare_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_each_topson_notleaf_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_each_topson_ofstring_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_only_top_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;

let is_item_for_symbol_by_group_topsons_symbol_off_item_symbol sym_ite =
  if not (is_item_for_symbol_symbol_off_item_symbol sym_ite)
  then false
  else
    begin
  let sym_ifs = item_for_symbol_symbol_off_item_symbol sym_ite in
  Item_for_symbol_symbol_v.is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let item_symbol_of_item_for_any_only_top_symbol sym_iot = 
  Item_symbol_t.Item_for_any_only_top_symbol sym_iot
;;

let item_symbol_of_item_for_formula_symbol sym_iff = 
  Item_symbol_t.Item_for_formula_symbol sym_iff
;;

let item_symbol_of_item_for_symbol_symbol sym_ifs = 
  Item_symbol_t.Item_for_symbol_symbol sym_ifs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let item_symbol_of_item_for_formula_by_group_topsons_symbol sym_igt = 
  let sym_iff = Item_for_formula_symbol_v.item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol sym_igt in
    item_symbol_of_item_for_formula_symbol sym_iff
;;

let item_symbol_of_item_for_formula_only_top_symbol sym_iot = 
  let sym_iff = Item_for_formula_symbol_v.item_for_formula_symbol_of_item_for_formula_only_top_symbol sym_iot in
    item_symbol_of_item_for_formula_symbol sym_iff
;;

let item_symbol_of_item_for_symbol_each_grandson_bare_symbol sym_igb = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_grandson_bare_symbol sym_igb in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_ign = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_ign in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_each_grandson_ofstring_symbol sym_igo = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_grandson_ofstring_symbol sym_igo in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_each_topson_bare_symbol sym_itb = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_topson_bare_symbol sym_itb in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_itn = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_itn in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_each_topson_ofstring_symbol sym_ito = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_each_topson_ofstring_symbol sym_ito in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_only_top_symbol sym_iot = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_only_top_symbol sym_iot in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;

let item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_igt = 
  let sym_ifs = Item_for_symbol_symbol_v.item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol sym_igt in
    item_symbol_of_item_for_symbol_symbol sym_ifs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let ending = item_symbol_of_item_for_any_only_top_symbol Item_for_any_only_top_symbol_v.ending;;

let heading = item_symbol_of_item_for_any_only_top_symbol Item_for_any_only_top_symbol_v.heading;;

let builder_tag_listing_off_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.builder_tag_listing_off_formula;;

let making_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.making_for_formula;;

let symbolizing_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.symbolizing_for_formula;;

let typing_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.typing_for_formula;;

let builder_tag_listing_off_tag = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.builder_tag_listing_off_tag;;

let building_and_storing_basic_sons = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.building_and_storing_basic_sons;;

let building_and_storing_proper_sons = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.building_and_storing_proper_sons;;

let data_tag_listing_off_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.data_tag_listing_off_formula;;

let data_tag_listing_off_tag = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.data_tag_listing_off_tag;;

let documenting_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.documenting_for_formula;;

let fullnaming_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.fullnaming_for_formula;;

let iterating_one_function_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.iterating_one_function_for_formula;;

let iterating_two_functions_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.iterating_two_functions_for_formula;;

let longnaming_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.longnaming_for_formula;;

let naming_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.naming_for_formula;;

let retrieving_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.retrieving_for_formula;;

let string_offing_for_formula = item_symbol_of_item_for_formula_symbol Item_for_formula_symbol_v.string_offing_for_formula;;

let abbreviating_grandson_bare_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.abbreviating_grandson_bare_for_symbol;;

let querying_grandson_bare_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_grandson_bare_for_symbol;;

let extracting_grandson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.extracting_grandson_notleaf_for_symbol;;

let querying_grandson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_grandson_notleaf_for_symbol;;

let upgrading_grandson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.upgrading_grandson_notleaf_for_symbol;;

let abbreviating_grandson_ofstring_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.abbreviating_grandson_ofstring_for_symbol;;

let querying_grandson_ofstring_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_grandson_ofstring_for_symbol;;

let abbreviating_topson_bare_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.abbreviating_topson_bare_for_symbol;;

let querying_topson_bare_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_topson_bare_for_symbol;;

let extracting_topson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.extracting_topson_notleaf_for_symbol;;

let querying_topson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_topson_notleaf_for_symbol;;

let upgrading_topson_notleaf_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.upgrading_topson_notleaf_for_symbol;;

let abbreviating_topson_ofstring_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.abbreviating_topson_ofstring_for_symbol;;

let querying_topson_ofstring_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.querying_topson_ofstring_for_symbol;;

let documenting_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.documenting_for_symbol;;

let longnaming_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.longnaming_for_symbol;;

let fullnaming_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.fullnaming_for_symbol;;

let listing_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.listing_for_symbol;;

let making_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.making_for_symbol;;

let making_for_symbol_bare = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.making_for_symbol_bare;;

let making_for_symbol_notleaf = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.making_for_symbol_notleaf;;

let making_for_symbol_ofstring = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.making_for_symbol_ofstring;;

let naming_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.naming_for_symbol;;

let naming_for_symbol_bare = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.naming_for_symbol_bare;;

let naming_for_symbol_notleaf = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.naming_for_symbol_notleaf;;

let naming_for_symbol_ofstring = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.naming_for_symbol_ofstring;;

let string_offing_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.string_offing_for_symbol;;

let string_offing_for_symbol_bare = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.string_offing_for_symbol_bare;;

let string_offing_for_symbol_notleaf = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.string_offing_for_symbol_notleaf;;

let string_offing_for_symbol_ofstring = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.string_offing_for_symbol_ofstring;;

let typing_for_symbol = item_symbol_of_item_for_symbol_symbol Item_for_symbol_symbol_v.typing_for_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Item_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try item_symbol_of_item_for_any_only_top_symbol
      (Item_for_any_only_top_symbol_v.make nam s)
  with Failure "Not_a_item_for_any_only_top_symbol:Item_for_any_only_top_symbol_v.ml:make" ->
  try item_symbol_of_item_for_formula_symbol
      (Item_for_formula_symbol_v.make nam s)
  with Failure "Not_a_item_for_formula_symbol:Item_for_formula_symbol_v.ml:make" ->
  try item_symbol_of_item_for_symbol_symbol
      (Item_for_symbol_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_symbol:Item_for_symbol_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Item_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item subtype" nam s)
      "it does not exists"
      "Check file Item_symbol_v.ml"
    in
    failwith "Not_a_item_symbol:Item_symbol_v.ml:make"
;;


(** Item_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



