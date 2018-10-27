(** {3 Item_for_formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol sym_igt ->
    Item_for_formula_by_group_topsons_symbol_v.name sym_igt
  | Item_for_formula_symbol_t.Item_for_formula_only_top_symbol sym_iot ->
    Item_for_formula_only_top_symbol_v.name sym_iot
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol sym_igt ->
  Item_for_formula_by_group_topsons_symbol_v.string_off sym_igt
  | Item_for_formula_symbol_t.Item_for_formula_only_top_symbol sym_iot ->
  Item_for_formula_only_top_symbol_v.string_off sym_iot
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_iff =
  Format.sprintf "Item_for_formula_symbol_t.%s" (String.capitalize (name sym_iff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_iff =
  Format.sprintf "%s \"%s\"" (longname sym_iff) (string_off sym_iff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol = function
  | Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol sym_igt -> sym_igt
  | sym_iff -> Error_messages_v.print_fatal_error
      nam_cod "item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol"
      "Item_for_formula_by_group_topsons_symbol"
      (name sym_iff) "check"
;;

let item_for_formula_only_top_symbol_off_item_for_formula_symbol = function
  | Item_for_formula_symbol_t.Item_for_formula_only_top_symbol sym_iot -> sym_iot
  | sym_iff -> Error_messages_v.print_fatal_error
      nam_cod "item_for_formula_only_top_symbol_off_item_for_formula_symbol"
      "Item_for_formula_only_top_symbol"
      (name sym_iff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol = function
  | Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol _ -> true
  | _ -> false
;;

let is_item_for_formula_only_top_symbol_off_item_for_formula_symbol = function
  | Item_for_formula_symbol_t.Item_for_formula_only_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_builder_tag_listing_off_formula sym_iff =
  if not (is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_igt = item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_by_group_topsons_symbol_v.is_builder_tag_listing_off_formula sym_igt
    end
;;

let is_making_for_formula sym_iff =
  if not (is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_igt = item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_by_group_topsons_symbol_v.is_making_for_formula sym_igt
    end
;;

let is_symbolizing_for_formula sym_iff =
  if not (is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_igt = item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_by_group_topsons_symbol_v.is_symbolizing_for_formula sym_igt
    end
;;

let is_typing_for_formula sym_iff =
  if not (is_item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_igt = item_for_formula_by_group_topsons_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_by_group_topsons_symbol_v.is_typing_for_formula sym_igt
    end
;;

let is_builder_tag_listing_off_tag sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_builder_tag_listing_off_tag sym_iot
    end
;;

let is_building_and_storing_basic_sons sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_building_and_storing_basic_sons sym_iot
    end
;;

let is_building_and_storing_proper_sons sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_building_and_storing_proper_sons sym_iot
    end
;;

let is_data_tag_listing_off_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_data_tag_listing_off_formula sym_iot
    end
;;

let is_data_tag_listing_off_tag sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_data_tag_listing_off_tag sym_iot
    end
;;

let is_documenting_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_documenting_for_formula sym_iot
    end
;;

let is_fullnaming_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_fullnaming_for_formula sym_iot
    end
;;

let is_iterating_one_function_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_iterating_one_function_for_formula sym_iot
    end
;;

let is_iterating_two_functions_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_iterating_two_functions_for_formula sym_iot
    end
;;

let is_longnaming_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_longnaming_for_formula sym_iot
    end
;;

let is_naming_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_naming_for_formula sym_iot
    end
;;

let is_retrieving_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_retrieving_for_formula sym_iot
    end
;;

let is_string_offing_for_formula sym_iff =
  if not (is_item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff)
  then false
  else
    begin
      let sym_iot = item_for_formula_only_top_symbol_off_item_for_formula_symbol sym_iff in
      Item_for_formula_only_top_symbol_v.is_string_offing_for_formula sym_iot
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol sym_igt = 
  Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol sym_igt
;;

let item_for_formula_symbol_of_item_for_formula_only_top_symbol sym_iot = 
  Item_for_formula_symbol_t.Item_for_formula_only_top_symbol sym_iot
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let builder_tag_listing_off_formula = item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol Item_for_formula_by_group_topsons_symbol_v.builder_tag_listing_off_formula;;

let making_for_formula = item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol Item_for_formula_by_group_topsons_symbol_v.making_for_formula;;

let symbolizing_for_formula = item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol Item_for_formula_by_group_topsons_symbol_v.symbolizing_for_formula;;

let typing_for_formula = item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol Item_for_formula_by_group_topsons_symbol_v.typing_for_formula;;

let builder_tag_listing_off_tag = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.builder_tag_listing_off_tag;;

let building_and_storing_basic_sons = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.building_and_storing_basic_sons;;

let building_and_storing_proper_sons = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.building_and_storing_proper_sons;;

let data_tag_listing_off_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.data_tag_listing_off_formula;;

let data_tag_listing_off_tag = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.data_tag_listing_off_tag;;

let documenting_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.documenting_for_formula;;

let fullnaming_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.fullnaming_for_formula;;

let iterating_one_function_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.iterating_one_function_for_formula;;

let iterating_two_functions_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.iterating_two_functions_for_formula;;

let longnaming_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.longnaming_for_formula;;

let naming_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.naming_for_formula;;

let retrieving_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.retrieving_for_formula;;

let string_offing_for_formula = item_for_formula_symbol_of_item_for_formula_only_top_symbol Item_for_formula_only_top_symbol_v.string_offing_for_formula;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Item_for_formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_for_formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try item_for_formula_symbol_of_item_for_formula_by_group_topsons_symbol
      (Item_for_formula_by_group_topsons_symbol_v.make nam s)
  with Failure "Not_a_item_for_formula_by_group_topsons_symbol:Item_for_formula_by_group_topsons_symbol_v.ml:make" ->
  try item_for_formula_symbol_of_item_for_formula_only_top_symbol
      (Item_for_formula_only_top_symbol_v.make nam s)
  with Failure "Not_a_item_for_formula_only_top_symbol:Item_for_formula_only_top_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Item_for_formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_for_formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_for_formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_for_formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item_for_formula subtype" nam s)
      "it does not exists"
      "Check file Item_for_formula_symbol_v.ml"
    in
    failwith "Not_a_item_for_formula_symbol:Item_for_formula_symbol_v.ml:make"
;;


(** Item_for_formula_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



