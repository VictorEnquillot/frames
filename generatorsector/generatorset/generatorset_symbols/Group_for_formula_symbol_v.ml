(** {3 Group_for_formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_gfb ->
    Group_for_formula_body_symbol_v.name sym_gfb
  | Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_gfh ->
    Group_for_formula_header_symbol_v.name sym_gfh
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_gfb ->
  Group_for_formula_body_symbol_v.string_off sym_gfb
  | Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_gfh ->
  Group_for_formula_header_symbol_v.string_off sym_gfh
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gff =
  Format.sprintf "Group_for_formula_symbol_t.%s" (String.capitalize (name sym_gff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gff =
  Format.sprintf "%s \"%s\"" (longname sym_gff) (string_off sym_gff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_formula_body_symbol_off_group_for_formula_symbol = function
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_gfb -> sym_gfb
  | sym_gff -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_symbol_off_group_for_formula_symbol"
      "Group_for_formula_body_symbol"
      (name sym_gff) "check"
;;

let group_for_formula_header_symbol_off_group_for_formula_symbol = function
  | Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_gfh -> sym_gfh
  | sym_gff -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_header_symbol_off_group_for_formula_symbol"
      "Group_for_formula_header_symbol"
      (name sym_gff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let group_for_formula_body_builder_alone_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_builder_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_data_alone_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_localset_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_localset_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_main_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_main_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_top_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_top_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_top_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_top_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_top_main_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_alone_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_alone_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_builder_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_data_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_body_top_main_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_body_symbol_v.group_for_formula_body_top_main_symbol_off_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_header_constant_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_header_symbol_v.group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_header_top_builder_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_header_symbol_v.group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_header_top_data_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_header_symbol_v.group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_header_top_main_symbol_off_group_for_formula_symbol sym_gff = 
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
    Group_for_formula_header_symbol_v.group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_formula_body_symbol_off_group_for_formula_symbol = function
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_header_symbol_off_group_for_formula_symbol = function
  | Group_for_formula_symbol_t.Group_for_formula_header_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_make_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_make_builder_tag_list sym_gfb
    end
;;

let is_data_formula_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_data_formula_list sym_gfb
    end
;;

let is_make_data_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_make_data_tag_list sym_gfb
    end
;;

let is_localset_symbol_builder_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_localset_symbol_builder_list sym_gfb
    end
;;

let is_store_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_store_builder_tag_list sym_gfb
    end
;;

let is_localset_symbol_data_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_localset_symbol_data_list sym_gfb
    end
;;

let is_store_data_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_store_data_tag_list sym_gfb
    end
;;

let is_builder_node_symbol_builder_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_node_symbol_builder_list sym_gfb
    end
;;

let is_sole_index_builder_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_sole_index_builder_list sym_gfb
    end
;;

let is_builder_stem_symbol_data_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_stem_symbol_data_list sym_gfb
    end
;;

let is_sole_index_data_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_sole_index_data_list sym_gfb
    end
;;

let is_pipe_topson_formula_type_bare_one_constructor sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_pipe_topson_formula_type_bare_one_constructor sym_gfb
    end
;;

let is_pipe_topson_formula_type_ofstring_one_constructor sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_pipe_topson_formula_type_ofstring_one_constructor sym_gfb
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_gfb
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_gfb
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_gfb
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_gfb
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gfb
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gfb
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_gfb
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_gfb
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_gfb
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_gfb
    end
;;

let is_make_topson_pattern_bare_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_make_topson_pattern_bare_for_formula sym_gfb
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_gfb
    end
;;

let is_symbol_of_formula_in_name_top sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_symbol_of_formula_in_name_top sym_gfb
    end
;;

let is_symbol_of_formula_in_string_off_top sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_symbol_of_formula_in_string_off_top sym_gfb
    end
;;

let is_builder_formula_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_formula_list sym_gfb
    end
;;

let is_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_tag_list sym_gfb
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_builder_tag_list_of_tag_for_formula sym_gfb
    end
;;

let is_iter2_on_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_iter2_on_builder_tag_list sym_gfb
    end
;;

let is_iter_on_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_iter_on_builder_tag_list sym_gfb
    end
;;

let is_map2_on_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_map2_on_builder_tag_list sym_gfb
    end
;;

let is_map_on_builder_tag_list sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_map_on_builder_tag_list sym_gfb
    end
;;

let is_documentation_list_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_documentation_list_for_formula sym_gfb
    end
;;

let is_data_tag_list_of_tag_for_formula sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_data_tag_list_of_tag_for_formula sym_gfb
    end
;;

let is_main_tag_off_top_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_body_symbol_v.is_main_tag_off_top_symbol sym_gfb
    end
;;

let is_let_symbol_of_formula_equal_function sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_symbol_of_formula_equal_function sym_gfh
    end
;;

let is_let_builder_tag_list_off_top_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_builder_tag_list_off_top_formula sym_gfh
    end
;;

let is_let_builder_tag_list_off_top_tag sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_builder_tag_list_off_top_tag sym_gfh
    end
;;

let is_let_iter2_for_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_iter2_for_formula sym_gfh
    end
;;

let is_let_iter_for_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_iter_for_formula sym_gfh
    end
;;

let is_let_map2_for_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_map2_for_formula sym_gfh
    end
;;

let is_let_map_for_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_map_for_formula sym_gfh
    end
;;

let is_let_data_tag_list_off_top_formula sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_data_tag_list_off_top_formula sym_gfh
    end
;;

let is_let_data_tag_list_off_top_tag sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_data_tag_list_off_top_tag sym_gfh
    end
;;

let is_let_build_n_store_basic_sons sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_build_n_store_basic_sons sym_gfh
    end
;;

let is_let_build_n_store_proper_sons sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_build_n_store_proper_sons sym_gfh
    end
;;

let is_let_make_arguments_equal_match_with sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
      let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
      Group_for_formula_header_symbol_v.is_let_make_arguments_equal_match_with sym_gfh
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_group_for_formula_body_builder_alone_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_builder_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_data_alone_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_localset_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_main_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_main_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_top_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_alone_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_data_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_body_top_main_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfb = group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_body_symbol_v.is_group_for_formula_body_top_main_symbol_off_group_for_formula_body_symbol sym_gfb
    end
;;

let is_group_for_formula_header_constant_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_header_symbol_v.is_group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol sym_gfh
    end
;;

let is_group_for_formula_header_top_builder_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_header_symbol_v.is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh
    end
;;

let is_group_for_formula_header_top_data_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_header_symbol_v.is_group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh
    end
;;

let is_group_for_formula_header_top_main_symbol_off_group_for_formula_symbol sym_gff =
  if not (is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff)
  then false
  else
    begin
  let sym_gfh = group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff in
  Group_for_formula_header_symbol_v.is_group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb = 
  Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh = 
  Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_gfh
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let group_for_formula_symbol_of_group_for_formula_body_builder_alone_symbol sym_gba = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_builder_alone_symbol sym_gba in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_builder_data_symbol sym_gbd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_builder_data_symbol sym_gbd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_data_alone_symbol sym_gda = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_data_alone_symbol sym_gda in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_localset_builder_symbol sym_gdb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_localset_builder_symbol sym_gdb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_localset_data_symbol sym_gdd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_localset_data_symbol sym_gdd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_main_builder_symbol sym_gmb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_main_builder_symbol sym_gmb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_main_data_symbol sym_gmd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_main_data_symbol sym_gmd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_symbol sym_gbs = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_top_symbol sym_gst = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_top_symbol sym_gst in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_symbol sym_gbt = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_alone_symbol sym_gta = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_alone_symbol sym_gta in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_data_symbol sym_gtd = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_data_symbol sym_gtd in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_body_top_main_symbol sym_gtm = 
  let sym_gfb = Group_for_formula_body_symbol_v.group_for_formula_body_symbol_of_group_for_formula_body_top_main_symbol sym_gtm in
    group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb
;;

let group_for_formula_symbol_of_group_for_formula_header_constant_symbol sym_ghc = 
  let sym_gfh = Group_for_formula_header_symbol_v.group_for_formula_header_symbol_of_group_for_formula_header_constant_symbol sym_ghc in
    group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_symbol_of_group_for_formula_header_top_builder_symbol sym_gtb = 
  let sym_gfh = Group_for_formula_header_symbol_v.group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol sym_gtb in
    group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_symbol_of_group_for_formula_header_top_data_symbol sym_gtd = 
  let sym_gfh = Group_for_formula_header_symbol_v.group_for_formula_header_symbol_of_group_for_formula_header_top_data_symbol sym_gtd in
    group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh
;;

let group_for_formula_symbol_of_group_for_formula_header_top_main_symbol sym_gtm = 
  let sym_gfh = Group_for_formula_header_symbol_v.group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol sym_gtm in
    group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let make_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.make_builder_tag_list;;

let data_formula_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.data_formula_list;;

let make_data_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.make_data_tag_list;;

let localset_symbol_builder_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.localset_symbol_builder_list;;

let store_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.store_builder_tag_list;;

let localset_symbol_data_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.localset_symbol_data_list;;

let store_data_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.store_data_tag_list;;

let builder_node_symbol_builder_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_node_symbol_builder_list;;

let sole_index_builder_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.sole_index_builder_list;;

let builder_stem_symbol_data_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_stem_symbol_data_list;;

let sole_index_data_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.sole_index_data_list;;

let pipe_topson_formula_type_bare_one_constructor = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.pipe_topson_formula_type_bare_one_constructor;;

let pipe_topson_formula_type_ofstring_one_constructor = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.pipe_topson_formula_type_ofstring_one_constructor;;

let symbol_of_formula_topson_pattern_bare = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_formula_list;;

let builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_tag_list;;

let builder_tag_list_of_tag_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.data_tag_list_of_tag_for_formula;;

let main_tag_off_top_symbol = group_for_formula_symbol_of_group_for_formula_body_symbol Group_for_formula_body_symbol_v.main_tag_off_top_symbol;;

let let_symbol_of_formula_equal_function = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_map2_for_formula;;

let let_map_for_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = group_for_formula_symbol_of_group_for_formula_header_symbol Group_for_formula_header_symbol_v.let_make_arguments_equal_match_with;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_formula_symbol_of_group_for_formula_body_symbol
      (Group_for_formula_body_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_symbol:Group_for_formula_body_symbol_v:make" ->
  try group_for_formula_symbol_of_group_for_formula_header_symbol
      (Group_for_formula_header_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_header_symbol:Group_for_formula_header_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_symbol:Group_for_formula_symbol_v.ml:make"
;;


(** Group_for_formula_symbol_v at 16:47:5 on 30 May 2013. created by version v1.13 of generator *)



