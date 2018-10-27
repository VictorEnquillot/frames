(** {3 Top_symbol_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Top_symbol_t.Top_for_any_only_top_symbol sym_aot ->
    Top_for_any_only_top_symbol_v.name sym_aot
  | Top_symbol_t.Top_for_formula_symbol sym_iff ->
    Top_for_formula_symbol_v.name sym_iff
  | Top_symbol_t.Top_for_symbol_symbol sym_ifs ->
    Top_for_symbol_symbol_v.name sym_ifs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Top_symbol_t.Top_for_any_only_top_symbol sym_aot ->
  Top_for_any_only_top_symbol_v.string_off sym_aot
  | Top_symbol_t.Top_for_formula_symbol sym_iff ->
  Top_for_formula_symbol_v.string_off sym_iff
  | Top_symbol_t.Top_for_symbol_symbol sym_ifs ->
  Top_for_symbol_symbol_v.string_off sym_ifs
;;


(** {6 Longnaming_for_symbol} *)

(* camlparagraph_for_symbol_let_argument : let_longname_argument_for_symbol *)
(* section_for_any_header_top : let_longname_argument_equal *)
(* group_for_any_header_top : let_longname_argument_equal *)
let longname sym_top =
  Format.sprintf "Top_symbol_t.%s" (String.capitalize (name sym_top))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_top =
  Format.sprintf "%s \"%s\"" (longname sym_top) (string_off sym_top)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let top_for_any_only_top_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_any_only_top_symbol sym_aot -> sym_aot
  | sym_top -> Error_messages_v.print_fatal_error
      nam_cod "top_for_any_only_top_symbol_off_top_symbol"
      "Top_for_any_only_top_symbol"
      (name sym_top) "check"
;;

let top_for_formula_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_formula_symbol sym_iff -> sym_iff
  | sym_top -> Error_messages_v.print_fatal_error
      nam_cod "top_for_formula_symbol_off_top_symbol"
      "Top_for_formula_symbol"
      (name sym_top) "check"
;;

let top_for_symbol_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_symbol_symbol sym_ifs -> sym_ifs
  | sym_top -> Error_messages_v.print_fatal_error
      nam_cod "top_for_symbol_symbol_off_top_symbol"
      "Top_for_symbol_symbol"
      (name sym_top) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let top_for_formula_by_group_topsons_symbol_off_top_symbol sym_top = 
  let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
    Top_for_formula_symbol_v.top_for_formula_by_group_topsons_symbol_off_top_for_formula_symbol sym_iff
;;

let top_for_formula_only_top_symbol_off_top_symbol sym_top = 
  let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
    Top_for_formula_symbol_v.top_for_formula_only_top_symbol_off_top_for_formula_symbol sym_iff
;;

let top_for_symbol_each_grandson_bare_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_grandson_bare_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_each_grandson_notleaf_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_grandson_notleaf_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_each_grandson_ofstring_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_grandson_ofstring_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_each_topson_bare_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_topson_bare_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_each_topson_notleaf_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_topson_notleaf_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_each_topson_ofstring_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_each_topson_ofstring_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_only_top_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_only_top_symbol_off_top_for_symbol_symbol sym_ifs
;;

let top_for_symbol_by_group_topsons_symbol_off_top_symbol sym_top = 
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
    Top_for_symbol_symbol_v.top_for_symbol_by_group_topsons_symbol_off_top_for_symbol_symbol sym_ifs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_top_for_any_only_top_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_any_only_top_symbol _ -> true
  | _ -> false
;;

let is_top_for_formula_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_formula_symbol _ -> true
  | _ -> false
;;

let is_top_for_symbol_symbol_off_top_symbol = function
  | Top_symbol_t.Top_for_symbol_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_ending sym_top =
  if not (is_top_for_any_only_top_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_aot = top_for_any_only_top_symbol_off_top_symbol sym_top in
      Top_for_any_only_top_symbol_v.is_ending sym_aot
    end
;;

let is_heading sym_top =
  if not (is_top_for_any_only_top_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_aot = top_for_any_only_top_symbol_off_top_symbol sym_top in
      Top_for_any_only_top_symbol_v.is_heading sym_aot
    end
;;

let is_builder_leaf_tag_listing_off_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_builder_leaf_tag_listing_off_formula sym_iff
    end
;;

let is_builder_tag_listing_off_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_builder_tag_listing_off_formula sym_iff
    end
;;

let is_toprating_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_toprating_for_formula sym_iff
    end
;;

let is_toprating_two_functions_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_toprating_two_functions_for_formula sym_iff
    end
;;

let is_making_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_making_for_formula sym_iff
    end
;;

let is_symbolizing_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_symbolizing_for_formula sym_iff
    end
;;

let is_typing_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_typing_for_formula sym_iff
    end
;;

let is_builder_leaf_tag_listing_off_tag sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_builder_leaf_tag_listing_off_tag sym_iff
    end
;;

let is_builder_tag_listing_off_tag sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_builder_tag_listing_off_tag sym_iff
    end
;;

let is_building_and_storing_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_building_and_storing_for_formula sym_iff
    end
;;

let is_documenting_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_documenting_for_formula sym_iff
    end
;;

let is_fullnaming_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_fullnaming_for_formula sym_iff
    end
;;

let is_longnaming_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_longnaming_for_formula sym_iff
    end
;;

let is_naming_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_naming_for_formula sym_iff
    end
;;

let is_retrieving_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_retrieving_for_formula sym_iff
    end
;;

let is_string_offing_for_formula sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
      Top_for_formula_symbol_v.is_string_offing_for_formula sym_iff
    end
;;

let is_abbreviating_grandson_bare_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_abbreviating_grandson_bare_for_symbol sym_ifs
    end
;;

let is_querying_grandson_bare_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_grandson_bare_for_symbol sym_ifs
    end
;;

let is_extracting_grandson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_extracting_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_querying_grandson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_upgrading_grandson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_upgrading_grandson_notleaf_for_symbol sym_ifs
    end
;;

let is_abbreviating_grandson_ofstring_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_abbreviating_grandson_ofstring_for_symbol sym_ifs
    end
;;

let is_querying_grandson_ofstring_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_grandson_ofstring_for_symbol sym_ifs
    end
;;

let is_abbreviating_topson_bare_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_abbreviating_topson_bare_for_symbol sym_ifs
    end
;;

let is_querying_topson_bare_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_topson_bare_for_symbol sym_ifs
    end
;;

let is_extracting_topson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_extracting_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_querying_topson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_upgrading_topson_notleaf_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_upgrading_topson_notleaf_for_symbol sym_ifs
    end
;;

let is_abbreviating_topson_ofstring_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_abbreviating_topson_ofstring_for_symbol sym_ifs
    end
;;

let is_querying_topson_ofstring_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_querying_topson_ofstring_for_symbol sym_ifs
    end
;;

let is_documenting_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_documenting_for_symbol sym_ifs
    end
;;

let is_longnaming_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_longnaming_for_symbol sym_ifs
    end
;;

let is_fullnaming_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_fullnaming_for_symbol sym_ifs
    end
;;

let is_listing_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_listing_for_symbol sym_ifs
    end
;;

let is_making_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_making_for_symbol sym_ifs
    end
;;

let is_making_for_symbol_bare sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_making_for_symbol_bare sym_ifs
    end
;;

let is_making_for_symbol_notleaf sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_making_for_symbol_notleaf sym_ifs
    end
;;

let is_making_for_symbol_ofstring sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_making_for_symbol_ofstring sym_ifs
    end
;;

let is_naming_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_naming_for_symbol sym_ifs
    end
;;

let is_naming_for_symbol_bare sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_naming_for_symbol_bare sym_ifs
    end
;;

let is_naming_for_symbol_notleaf sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_naming_for_symbol_notleaf sym_ifs
    end
;;

let is_naming_for_symbol_ofstring sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_naming_for_symbol_ofstring sym_ifs
    end
;;

let is_string_offing_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_string_offing_for_symbol sym_ifs
    end
;;

let is_string_offing_for_symbol_bare sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_string_offing_for_symbol_bare sym_ifs
    end
;;

let is_string_offing_for_symbol_notleaf sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_string_offing_for_symbol_notleaf sym_ifs
    end
;;

let is_string_offing_for_symbol_ofstring sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_string_offing_for_symbol_ofstring sym_ifs
    end
;;

let is_typing_for_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
      let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
      Top_for_symbol_symbol_v.is_typing_for_symbol sym_ifs
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_top_for_formula_by_group_topsons_symbol_off_top_symbol sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
  Top_for_formula_symbol_v.is_top_for_formula_by_group_topsons_symbol_off_top_for_formula_symbol sym_iff
    end
;;

let is_top_for_formula_only_top_symbol_off_top_symbol sym_top =
  if not (is_top_for_formula_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_iff = top_for_formula_symbol_off_top_symbol sym_top in
  Top_for_formula_symbol_v.is_top_for_formula_only_top_symbol_off_top_for_formula_symbol sym_iff
    end
;;

let is_top_for_symbol_each_grandson_bare_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_grandson_bare_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_each_grandson_notleaf_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_grandson_notleaf_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_each_grandson_ofstring_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_grandson_ofstring_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_each_topson_bare_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_topson_bare_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_each_topson_notleaf_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_topson_notleaf_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_each_topson_ofstring_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_each_topson_ofstring_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_only_top_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_only_top_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;

let is_top_for_symbol_by_group_topsons_symbol_off_top_symbol sym_top =
  if not (is_top_for_symbol_symbol_off_top_symbol sym_top)
  then false
  else
    begin
  let sym_ifs = top_for_symbol_symbol_off_top_symbol sym_top in
  Top_for_symbol_symbol_v.is_top_for_symbol_by_group_topsons_symbol_off_top_for_symbol_symbol sym_ifs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let top_symbol_of_top_for_any_only_top_symbol sym_aot = 
  Top_symbol_t.Top_for_any_only_top_symbol sym_aot
;;

let top_symbol_of_top_for_formula_symbol sym_iff = 
  Top_symbol_t.Top_for_formula_symbol sym_iff
;;

let top_symbol_of_top_for_symbol_symbol sym_ifs = 
  Top_symbol_t.Top_for_symbol_symbol sym_ifs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let top_symbol_of_top_for_formula_by_group_topsons_symbol sym_bgt = 
  let sym_iff = Top_for_formula_symbol_v.top_for_formula_symbol_of_top_for_formula_by_group_topsons_symbol sym_bgt in
    top_symbol_of_top_for_formula_symbol sym_iff
;;

let top_symbol_of_top_for_formula_only_top_symbol sym_fot = 
  let sym_iff = Top_for_formula_symbol_v.top_for_formula_symbol_of_top_for_formula_only_top_symbol sym_fot in
    top_symbol_of_top_for_formula_symbol sym_iff
;;

let top_symbol_of_top_for_symbol_each_grandson_bare_symbol sym_egb = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_grandson_bare_symbol sym_egb in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_each_grandson_notleaf_symbol sym_egn = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_grandson_notleaf_symbol sym_egn in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_each_grandson_ofstring_symbol sym_ego = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_grandson_ofstring_symbol sym_ego in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_each_topson_bare_symbol sym_etb = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_topson_bare_symbol sym_etb in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_each_topson_notleaf_symbol sym_etn = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_topson_notleaf_symbol sym_etn in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_each_topson_ofstring_symbol sym_eto = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_each_topson_ofstring_symbol sym_eto in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_only_top_symbol sym_sot = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_only_top_symbol sym_sot in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;

let top_symbol_of_top_for_symbol_by_group_topsons_symbol sym_bgt = 
  let sym_ifs = Top_for_symbol_symbol_v.top_for_symbol_symbol_of_top_for_symbol_by_group_topsons_symbol sym_bgt in
    top_symbol_of_top_for_symbol_symbol sym_ifs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let ending = top_symbol_of_top_for_any_only_top_symbol Top_for_any_only_top_symbol_v.ending;;

let heading = top_symbol_of_top_for_any_only_top_symbol Top_for_any_only_top_symbol_v.heading;;

let builder_leaf_tag_listing_off_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.builder_leaf_tag_listing_off_formula;;

let builder_tag_listing_off_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.builder_tag_listing_off_formula;;

let iterating_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.iterating_for_formula;;

let iterating_two_functions_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.iterating_two_functions_for_formula;;

let making_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.making_for_formula;;

let symbolizing_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.symbolizing_for_formula;;

let typing_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.typing_for_formula;;

let builder_leaf_tag_listing_off_tag = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.builder_leaf_tag_listing_off_tag;;

let builder_tag_listing_off_tag = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.builder_tag_listing_off_tag;;

let building_and_storing_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.building_and_storing_for_formula;;

let documenting_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.documenting_for_formula;;

let fullnaming_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.fullnaming_for_formula;;

let longnaming_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.longnaming_for_formula;;

let naming_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.naming_for_formula;;

let retrieving_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.retrieving_for_formula;;

let string_offing_for_formula = top_symbol_of_top_for_formula_symbol Top_for_formula_symbol_v.string_offing_for_formula;;

let abbreviating_grandson_bare_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.abbreviating_grandson_bare_for_symbol;;

let querying_grandson_bare_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_grandson_bare_for_symbol;;

let extracting_grandson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.extracting_grandson_notleaf_for_symbol;;

let querying_grandson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_grandson_notleaf_for_symbol;;

let upgrading_grandson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.upgrading_grandson_notleaf_for_symbol;;

let abbreviating_grandson_ofstring_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.abbreviating_grandson_ofstring_for_symbol;;

let querying_grandson_ofstring_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_grandson_ofstring_for_symbol;;

let abbreviating_topson_bare_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.abbreviating_topson_bare_for_symbol;;

let querying_topson_bare_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_topson_bare_for_symbol;;

let extracting_topson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.extracting_topson_notleaf_for_symbol;;

let querying_topson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_topson_notleaf_for_symbol;;

let upgrading_topson_notleaf_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.upgrading_topson_notleaf_for_symbol;;

let abbreviating_topson_ofstring_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.abbreviating_topson_ofstring_for_symbol;;

let querying_topson_ofstring_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.querying_topson_ofstring_for_symbol;;

let documenting_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.documenting_for_symbol;;

let longnaming_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.longnaming_for_symbol;;

let fullnaming_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.fullnaming_for_symbol;;

let listing_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.listing_for_symbol;;

let making_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.making_for_symbol;;

let making_for_symbol_bare = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.making_for_symbol_bare;;

let making_for_symbol_notleaf = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.making_for_symbol_notleaf;;

let making_for_symbol_ofstring = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.making_for_symbol_ofstring;;

let naming_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.naming_for_symbol;;

let naming_for_symbol_bare = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.naming_for_symbol_bare;;

let naming_for_symbol_notleaf = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.naming_for_symbol_notleaf;;

let naming_for_symbol_ofstring = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.naming_for_symbol_ofstring;;

let string_offing_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.string_offing_for_symbol;;

let string_offing_for_symbol_bare = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.string_offing_for_symbol_bare;;

let string_offing_for_symbol_notleaf = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.string_offing_for_symbol_notleaf;;

let string_offing_for_symbol_ofstring = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.string_offing_for_symbol_ofstring;;

let typing_for_symbol = top_symbol_of_top_for_symbol_symbol Top_for_symbol_symbol_v.typing_for_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try top_symbol_of_top_for_any_only_top_symbol
      (Top_for_any_only_top_symbol_v.make nam s)
  with Failure "Not_Top_for_any_only_top_symbol:Top_for_any_only_top_symbol_v:make" ->
  try top_symbol_of_top_for_formula_symbol
      (Top_for_formula_symbol_v.make nam s)
  with Failure "Not_Top_for_formula_symbol:Top_for_formula_symbol_v:make" ->
  try top_symbol_of_top_for_symbol_symbol
      (Top_for_symbol_symbol_v.make nam s)
  with Failure "Not_Top_for_symbol_symbol:Top_for_symbol_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Top subtype" nam s)
      "it does not exists"
      "Check file top_symbol_v.ml"
    in
    failwith "Not_a_valid_top_symbol:Top_symbol_v.ml:make"
;;




