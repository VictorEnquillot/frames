(** {3 Section_for_formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_sfb ->
    Section_for_formula_body_symbol_v.name sym_sfb
  | Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_sfh ->
    Section_for_formula_header_symbol_v.name sym_sfh
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_sfb ->
  Section_for_formula_body_symbol_v.string_off sym_sfb
  | Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_sfh ->
  Section_for_formula_header_symbol_v.string_off sym_sfh
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sff =
  Format.sprintf "Section_for_formula_symbol_t.%s" (String.capitalize (name sym_sff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sff =
  Format.sprintf "%s \"%s\"" (longname sym_sff) (string_off sym_sff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_formula_body_symbol_off_section_for_formula_symbol = function
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_sfb -> sym_sfb
  | sym_sff -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_symbol_off_section_for_formula_symbol"
      "Section_for_formula_body_symbol"
      (name sym_sff) "check"
;;

let section_for_formula_header_symbol_off_section_for_formula_symbol = function
  | Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_sfh -> sym_sfh
  | sym_sff -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_header_symbol_off_section_for_formula_symbol"
      "Section_for_formula_header_symbol"
      (name sym_sff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let section_for_formula_body_builder_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_localset_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_top_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_top_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_top_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_top_main_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_builder_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_main_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_body_top_main_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_body_symbol_v.section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_header_constant_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_header_symbol_v.section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_header_top_builder_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_header_symbol_v.section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_header_top_data_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_header_symbol_v.section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_header_top_main_symbol_off_section_for_formula_symbol sym_sff = 
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
    Section_for_formula_header_symbol_v.section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_sfh
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_formula_body_symbol_off_section_for_formula_symbol = function
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_header_symbol_off_section_for_formula_symbol = function
  | Section_for_formula_symbol_t.Section_for_formula_header_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_data_formula_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_formula_list sym_sfb
    end
;;

let is_data_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_tag_list sym_sfb
    end
;;

let is_builder_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_tag_list sym_sfb
    end
;;

let is_pipe_topson_formula_type_bare_constructors sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_pipe_topson_formula_type_bare_constructors sym_sfb
    end
;;

let is_pipe_topson_formula_type_ofstring_constructors sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_pipe_topson_formula_type_ofstring_constructors sym_sfb
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_sfb
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_sfb
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_sfb
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_sfb
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_sfb
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_sfb
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_sfb
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_sfb
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_sfb
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_sfb
    end
;;

let is_make_topson_pattern_bare_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_make_topson_pattern_bare_for_formula sym_sfb
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_sfb
    end
;;

let is_symbol_of_formula_in_name_top sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_symbol_of_formula_in_name_top sym_sfb
    end
;;

let is_symbol_of_formula_in_string_off_top sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_symbol_of_formula_in_string_off_top sym_sfb
    end
;;

let is_builder_formula_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_formula_list sym_sfb
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_tag_list_of_tag_for_formula sym_sfb
    end
;;

let is_iter2_on_builder_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_iter2_on_builder_tag_list sym_sfb
    end
;;

let is_iter_on_builder_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_iter_on_builder_tag_list sym_sfb
    end
;;

let is_map2_on_builder_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_map2_on_builder_tag_list sym_sfb
    end
;;

let is_map_on_builder_tag_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_map_on_builder_tag_list sym_sfb
    end
;;

let is_documentation_list_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_documentation_list_for_formula sym_sfb
    end
;;

let is_data_tag_list_of_tag_for_formula sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_data_tag_list_of_tag_for_formula sym_sfb
    end
;;

let is_builder_node_sole_index_builder_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_node_sole_index_builder_list sym_sfb
    end
;;

let is_builder_stem_sole_index_data_list sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_body_symbol_v.is_builder_stem_sole_index_data_list sym_sfb
    end
;;

let is_let_symbol_of_formula_equal_function sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_symbol_of_formula_equal_function sym_sfh
    end
;;

let is_let_builder_tag_list_off_top_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_builder_tag_list_off_top_formula sym_sfh
    end
;;

let is_let_builder_tag_list_off_top_tag sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_builder_tag_list_off_top_tag sym_sfh
    end
;;

let is_let_iter2_for_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_iter2_for_formula sym_sfh
    end
;;

let is_let_iter_for_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_iter_for_formula sym_sfh
    end
;;

let is_let_map2_for_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_map2_for_formula sym_sfh
    end
;;

let is_let_map_for_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_map_for_formula sym_sfh
    end
;;

let is_let_data_tag_list_off_top_formula sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_data_tag_list_off_top_formula sym_sfh
    end
;;

let is_let_data_tag_list_off_top_tag sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_data_tag_list_off_top_tag sym_sfh
    end
;;

let is_let_build_n_store_basic_sons sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_build_n_store_basic_sons sym_sfh
    end
;;

let is_let_build_n_store_proper_sons sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_build_n_store_proper_sons sym_sfh
    end
;;

let is_let_make_arguments_equal_match_with sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
      let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
      Section_for_formula_header_symbol_v.is_let_make_arguments_equal_match_with sym_sfh
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_section_for_formula_body_builder_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_localset_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_top_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_top_main_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_builder_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_main_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_body_top_main_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfb = section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_body_symbol_v.is_section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol sym_sfb
    end
;;

let is_section_for_formula_header_constant_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_header_symbol_v.is_section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol sym_sfh
    end
;;

let is_section_for_formula_header_top_builder_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_header_symbol_v.is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_sfh
    end
;;

let is_section_for_formula_header_top_data_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_header_symbol_v.is_section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_sfh
    end
;;

let is_section_for_formula_header_top_main_symbol_off_section_for_formula_symbol sym_sff =
  if not (is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff)
  then false
  else
    begin
  let sym_sfh = section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff in
  Section_for_formula_header_symbol_v.is_section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_sfh
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb = 
  Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh = 
  Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_sfh
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let section_for_formula_symbol_of_section_for_formula_body_builder_data_symbol sym_sbd = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_builder_data_symbol sym_sbd in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_localset_builder_symbol sym_sdb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_localset_builder_symbol sym_sdb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_localset_data_symbol sym_sdb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_localset_data_symbol sym_sdb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_builder_symbol sym_ssb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_builder_symbol sym_ssb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_top_symbol sym_sst = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol sym_sst in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_top_builder_symbol sym_stb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol sym_stb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_top_data_symbol sym_std = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol sym_std in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_top_main_symbol sym_stm = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_symbol sym_stm in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_smb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_smb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_symbol sym_sbt = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_symbol sym_sbt in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_builder_symbol sym_stb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol sym_stb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbd = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbd in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_data_symbol sym_std = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_data_symbol sym_std in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_main_builder_symbol sym_smb = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_main_builder_symbol sym_smb in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_body_top_main_data_symbol sym_smd = 
  let sym_sfb = Section_for_formula_body_symbol_v.section_for_formula_body_symbol_of_section_for_formula_body_top_main_data_symbol sym_smd in
    section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb
;;

let section_for_formula_symbol_of_section_for_formula_header_constant_symbol sym_shc = 
  let sym_sfh = Section_for_formula_header_symbol_v.section_for_formula_header_symbol_of_section_for_formula_header_constant_symbol sym_shc in
    section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_symbol_of_section_for_formula_header_top_builder_symbol sym_stb = 
  let sym_sfh = Section_for_formula_header_symbol_v.section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol sym_stb in
    section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_symbol_of_section_for_formula_header_top_data_symbol sym_std = 
  let sym_sfh = Section_for_formula_header_symbol_v.section_for_formula_header_symbol_of_section_for_formula_header_top_data_symbol sym_std in
    section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh
;;

let section_for_formula_symbol_of_section_for_formula_header_top_main_symbol sym_stm = 
  let sym_sfh = Section_for_formula_header_symbol_v.section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol sym_stm in
    section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let data_formula_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_formula_list;;

let data_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_tag_list;;

let builder_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_tag_list;;

let pipe_topson_formula_type_bare_constructors = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.pipe_topson_formula_type_bare_constructors;;

let pipe_topson_formula_type_ofstring_constructors = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.pipe_topson_formula_type_ofstring_constructors;;

let symbol_of_formula_topson_pattern_bare = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_formula_list;;

let builder_tag_list_of_tag_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.data_tag_list_of_tag_for_formula;;

let builder_node_sole_index_builder_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_node_sole_index_builder_list;;

let builder_stem_sole_index_data_list = section_for_formula_symbol_of_section_for_formula_body_symbol Section_for_formula_body_symbol_v.builder_stem_sole_index_data_list;;

let let_symbol_of_formula_equal_function = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_map2_for_formula;;

let let_map_for_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = section_for_formula_symbol_of_section_for_formula_header_symbol Section_for_formula_header_symbol_v.let_make_arguments_equal_match_with;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_formula_symbol_of_section_for_formula_body_symbol
      (Section_for_formula_body_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_symbol:Section_for_formula_body_symbol_v:make" ->
  try section_for_formula_symbol_of_section_for_formula_header_symbol
      (Section_for_formula_header_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_header_symbol:Section_for_formula_header_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_formula subtype" nam s)
      "it does not exists"
      "Check file Section_for_formula_symbol_v.ml"
    in
    failwith "Not_a_section_for_formula_symbol:Section_for_formula_symbol_v.ml:make"
;;


(** Section_for_formula_symbol_v at 11:56:13 on 30 May 2013. created by version v1.13 of generator *)



