(** {3 Section_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_symbol_t.Section_for_any_symbol sym_sfa ->
    Section_for_any_symbol_v.name sym_sfa
  | Section_symbol_t.Section_for_formula_symbol sym_sff ->
    Section_for_formula_symbol_v.name sym_sff
  | Section_symbol_t.Section_for_symbol_symbol sym_sfs ->
    Section_for_symbol_symbol_v.name sym_sfs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_symbol_t.Section_for_any_symbol sym_sfa ->
  Section_for_any_symbol_v.string_off sym_sfa
  | Section_symbol_t.Section_for_formula_symbol sym_sff ->
  Section_for_formula_symbol_v.string_off sym_sff
  | Section_symbol_t.Section_for_symbol_symbol sym_sfs ->
  Section_for_symbol_symbol_v.string_off sym_sfs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sec =
  Format.sprintf "Section_symbol_t.%s" (String.capitalize (name sym_sec))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sec =
  Format.sprintf "%s \"%s\"" (longname sym_sec) (string_off sym_sec)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_any_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_any_symbol sym_sfa -> sym_sfa
  | sym_sec -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_symbol_off_section_symbol"
      "Section_for_any_symbol"
      (name sym_sec) "check"
;;

let section_for_formula_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_formula_symbol sym_sff -> sym_sff
  | sym_sec -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_symbol_off_section_symbol"
      "Section_for_formula_symbol"
      (name sym_sec) "check"
;;

let section_for_symbol_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_symbol_symbol sym_sfs -> sym_sfs
  | sym_sec -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_symbol_off_section_symbol"
      "Section_for_symbol_symbol"
      (name sym_sec) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let section_for_any_body_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_body_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_body_son_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_body_son_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_body_top_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_body_top_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_body_top_main_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_body_top_main_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_header_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_header_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_header_constant_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_header_constant_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_header_top_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_header_top_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_any_footer_symbol_off_section_symbol sym_sec = 
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
    Section_for_any_symbol_v.section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa
;;

let section_for_formula_body_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_builder_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_builder_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_localset_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_localset_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_top_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_top_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_top_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_top_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_top_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_top_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_top_main_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_top_main_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_son_top_main_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_builder_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_builder_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_main_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_main_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_body_top_main_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_body_top_main_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_header_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_header_constant_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_header_constant_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_header_top_builder_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_header_top_builder_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_header_top_data_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_header_top_data_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_formula_header_top_main_symbol_off_section_symbol sym_sec = 
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
    Section_for_formula_symbol_v.section_for_formula_header_top_main_symbol_off_section_for_formula_symbol sym_sff
;;

let section_for_symbol_header_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_header_constant_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_constant_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_header_current_son_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_header_current_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_current_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_header_son_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_son_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_header_son_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_header_son_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_current_son_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_son_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_son_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_son_bare_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_son_bare_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_son_ofstring_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_son_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_son_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_body_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_body_top_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_footer_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs
;;

let section_for_symbol_footer_top_symbol_off_section_symbol sym_sec = 
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
    Section_for_symbol_symbol_v.section_for_symbol_footer_top_symbol_off_section_for_symbol_symbol sym_sfs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_any_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_any_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_formula_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_symbol_off_section_symbol = function
  | Section_symbol_t.Section_for_symbol_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_topson_any_type_notleaf_constructors sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_pipe_topson_any_type_notleaf_constructors sym_sfa
    end
;;

let is_sprintf_for_any_fullname sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_sprintf_for_any_fullname sym_sfa
    end
;;

let is_sprintf_for_any_longname sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_sprintf_for_any_longname sym_sfa
    end
;;

let is_make_tag_top sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_make_tag_top sym_sfa
    end
;;

let is_let_documentation sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_documentation sym_sfa
    end
;;

let is_let_nam_cod_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_nam_cod_equal sym_sfa
    end
;;

let is_type_et_any_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_type_et_any_equal sym_sfa
    end
;;

let is_camlfile_title sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_camlfile_title sym_sfa
    end
;;

let is_item_title sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_item_title sym_sfa
    end
;;

let is_let_name_argument_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_name_argument_equal sym_sfa
    end
;;

let is_let_longname_argument_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_longname_argument_equal sym_sfa
    end
;;

let is_let_fullname_argument_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_fullname_argument_equal sym_sfa
    end
;;

let is_let_retrieve_tag_top_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_retrieve_tag_top_equal sym_sfa
    end
;;

let is_let_string_off_argument_equal sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_let_string_off_argument_equal sym_sfa
    end
;;

let is_ending sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_ending sym_sfa
    end
;;

let is_double_semicolon sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
      Section_for_any_symbol_v.is_double_semicolon sym_sfa
    end
;;

let is_data_formula_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_formula_list sym_sff
    end
;;

let is_data_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_tag_list sym_sff
    end
;;

let is_builder_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_tag_list sym_sff
    end
;;

let is_pipe_topson_formula_type_bare_constructors sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_pipe_topson_formula_type_bare_constructors sym_sff
    end
;;

let is_pipe_topson_formula_type_ofstring_constructors sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_pipe_topson_formula_type_ofstring_constructors sym_sff
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_sff
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_sff
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_sff
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_sff
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_sff
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_sff
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_sff
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_sff
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_sff
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_sff
    end
;;

let is_make_topson_pattern_bare_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_make_topson_pattern_bare_for_formula sym_sff
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_sff
    end
;;

let is_symbol_of_formula_in_name_top sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_symbol_of_formula_in_name_top sym_sff
    end
;;

let is_symbol_of_formula_in_string_off_top sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_symbol_of_formula_in_string_off_top sym_sff
    end
;;

let is_builder_formula_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_formula_list sym_sff
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_tag_list_of_tag_for_formula sym_sff
    end
;;

let is_iter2_on_builder_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_iter2_on_builder_tag_list sym_sff
    end
;;

let is_iter_on_builder_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_iter_on_builder_tag_list sym_sff
    end
;;

let is_map2_on_builder_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_map2_on_builder_tag_list sym_sff
    end
;;

let is_map_on_builder_tag_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_map_on_builder_tag_list sym_sff
    end
;;

let is_documentation_list_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_documentation_list_for_formula sym_sff
    end
;;

let is_data_tag_list_of_tag_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_data_tag_list_of_tag_for_formula sym_sff
    end
;;

let is_builder_node_sole_index_builder_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_node_sole_index_builder_list sym_sff
    end
;;

let is_builder_stem_sole_index_data_list sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_builder_stem_sole_index_data_list sym_sff
    end
;;

let is_let_symbol_of_formula_equal_function sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_symbol_of_formula_equal_function sym_sff
    end
;;

let is_let_builder_tag_list_off_top_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_builder_tag_list_off_top_formula sym_sff
    end
;;

let is_let_builder_tag_list_off_top_tag sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_builder_tag_list_off_top_tag sym_sff
    end
;;

let is_let_iter2_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_iter2_for_formula sym_sff
    end
;;

let is_let_iter_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_iter_for_formula sym_sff
    end
;;

let is_let_map2_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_map2_for_formula sym_sff
    end
;;

let is_let_map_for_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_map_for_formula sym_sff
    end
;;

let is_let_data_tag_list_off_top_formula sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_data_tag_list_off_top_formula sym_sff
    end
;;

let is_let_data_tag_list_off_top_tag sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_data_tag_list_off_top_tag sym_sff
    end
;;

let is_let_build_n_store_basic_sons sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_build_n_store_basic_sons sym_sff
    end
;;

let is_let_build_n_store_proper_sons sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_build_n_store_proper_sons sym_sff
    end
;;

let is_let_make_arguments_equal_match_with sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
      Section_for_formula_symbol_v.is_let_make_arguments_equal_match_with sym_sff
    end
;;

let is_let_make_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_make_equal_function sym_sfs
    end
;;

let is_let_make_nam_s_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_make_nam_s_equal sym_sfs
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_make_of_topson_bare_nam_equal sym_sfs
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_sfs
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_sfs
    end
;;

let is_let_name_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_name_equal_function sym_sfs
    end
;;

let is_let_name_of_topson_bare_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_name_of_topson_bare_equal_function sym_sfs
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_sfs
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_sfs
    end
;;

let is_let_string_off_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_string_off_equal_function sym_sfs
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_sfs
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_sfs
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_sfs
    end
;;

let is_let_abbreviate_grandson_bare sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_abbreviate_grandson_bare sym_sfs
    end
;;

let is_let_abbreviate_grandson_ofstring sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_abbreviate_grandson_ofstring sym_sfs
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sfs
    end
;;

let is_let_is_grandson_bare sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_grandson_bare sym_sfs
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sfs
    end
;;

let is_let_is_grandson_ofstring sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_grandson_ofstring sym_sfs
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_sfs
    end
;;

let is_let_is_topson_bare sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_topson_bare sym_sfs
    end
;;

let is_let_is_topson_ofstring sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_topson_ofstring sym_sfs
    end
;;

let is_let_abbreviate_topson_bare sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_abbreviate_topson_bare sym_sfs
    end
;;

let is_let_abbreviate_topson_ofstring sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_abbreviate_topson_ofstring sym_sfs
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_sfs
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_sfs
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_sfs
    end
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_sfs
    end
;;

let is_if_not_is_topson_begin_bare_end sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_if_not_is_topson_begin_bare_end sym_sfs
    end
;;

let is_if_not_is_topson_begin_ofstring_end sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_if_not_is_topson_begin_ofstring_end sym_sfs
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_sfs
    end
;;

let is_upgrade_grandson_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_upgrade_grandson_symbol sym_sfs
    end
;;

let is_make_ecstring_pattern_bare_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_make_ecstring_pattern_bare_for_symbol sym_sfs
    end
;;

let is_pipe_topson_symbol_type_bare_constructors sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_topson_symbol_type_bare_constructors sym_sfs
    end
;;

let is_make_ecstring_pattern_ofstring_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_make_ecstring_pattern_ofstring_for_symbol sym_sfs
    end
;;

let is_pipe_topson_symbol_type_ofstring_constructors sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_topson_symbol_type_ofstring_constructors sym_sfs
    end
;;

let is_is_one_topson_bare_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_one_topson_bare_off_pattern_for_symbol sym_sfs
    end
;;

let is_is_one_topson_notleaf_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_one_topson_notleaf_off_pattern_for_symbol sym_sfs
    end
;;

let is_is_one_topson_ofstring_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_one_topson_ofstring_off_pattern_for_symbol sym_sfs
    end
;;

let is_is_onlyson_bare_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_onlyson_bare_off_pattern_for_symbol sym_sfs
    end
;;

let is_is_onlyson_notleaf_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_onlyson_notleaf_off_pattern_for_symbol sym_sfs
    end
;;

let is_is_onlyson_ofstring_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_is_onlyson_ofstring_off_pattern_for_symbol sym_sfs
    end
;;

let is_name_topson_pattern_bare_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_name_topson_pattern_bare_for_symbol sym_sfs
    end
;;

let is_name_topson_pattern_notleaf_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_name_topson_pattern_notleaf_for_symbol sym_sfs
    end
;;

let is_name_topson_pattern_ofstring_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_name_topson_pattern_ofstring_for_symbol sym_sfs
    end
;;

let is_one_topson_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_one_topson_off_pattern_for_symbol sym_sfs
    end
;;

let is_onlyson_off_pattern_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_onlyson_off_pattern_for_symbol sym_sfs
    end
;;

let is_string_off_topson_pattern_bare_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_string_off_topson_pattern_bare_for_symbol sym_sfs
    end
;;

let is_string_off_topson_pattern_notleaf_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_string_off_topson_pattern_notleaf_for_symbol sym_sfs
    end
;;

let is_string_off_topson_pattern_ofstring_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_string_off_topson_pattern_ofstring_for_symbol sym_sfs
    end
;;

let is_try_make_of_topson_with_failure_arrow sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_try_make_of_topson_with_failure_arrow sym_sfs
    end
;;

let is_try_name_of_topson_with_failure_arrow sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_try_name_of_topson_with_failure_arrow sym_sfs
    end
;;

let is_try_string_off_of_topson_with_failure_arrow sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_try_string_off_of_topson_with_failure_arrow sym_sfs
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_try_top_of_topson_with_failure_arrow sym_sfs
    end
;;

let is_upgrade_topson_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_upgrade_topson_symbol sym_sfs
    end
;;

let is_documentation_list_for_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_documentation_list_for_symbol sym_sfs
    end
;;

let is_failwith_not_a_topson_notleaf sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_failwith_not_a_topson_notleaf sym_sfs
    end
;;

let is_let_underscore_print_error_failwith_make sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_underscore_print_error_failwith_make sym_sfs
    end
;;

let is_let_underscore_print_error_failwith_name sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_underscore_print_error_failwith_name sym_sfs
    end
;;

let is_let_underscore_print_error_failwith_string_off sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_let_underscore_print_error_failwith_string_off sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_make sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_name sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_sfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_sfs
    end
;;

let is_print_fatal_error_make sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_print_fatal_error_make sym_sfs
    end
;;

let is_print_fatal_error_name sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_print_fatal_error_name sym_sfs
    end
;;

let is_print_fatal_error_string_off sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
      let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
      Section_for_symbol_symbol_v.is_print_fatal_error_string_off sym_sfs
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_section_for_any_body_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_body_son_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_body_son_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_body_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_body_top_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_body_top_main_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_body_top_main_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_header_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_header_constant_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_header_constant_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_header_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_header_top_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_any_footer_symbol_off_section_symbol sym_sec =
  if not (is_section_for_any_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfa = section_for_any_symbol_off_section_symbol sym_sec in
  Section_for_any_symbol_v.is_section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa
    end
;;

let is_section_for_formula_body_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_builder_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_builder_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_localset_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_localset_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_top_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_top_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_top_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_top_main_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_top_main_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_son_top_main_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_builder_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_builder_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_main_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_main_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_body_top_main_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_body_top_main_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_header_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_header_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_header_constant_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_header_constant_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_header_top_builder_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_header_top_builder_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_header_top_data_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_header_top_data_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_formula_header_top_main_symbol_off_section_symbol sym_sec =
  if not (is_section_for_formula_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sff = section_for_formula_symbol_off_section_symbol sym_sec in
  Section_for_formula_symbol_v.is_section_for_formula_header_top_main_symbol_off_section_for_formula_symbol sym_sff
    end
;;

let is_section_for_symbol_header_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_header_constant_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_constant_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_header_current_son_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_header_current_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_header_son_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_son_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_header_son_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_current_son_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_son_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_son_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_son_bare_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_son_ofstring_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_son_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_body_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_body_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_footer_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;

let is_section_for_symbol_footer_top_symbol_off_section_symbol sym_sec =
  if not (is_section_for_symbol_symbol_off_section_symbol sym_sec)
  then false
  else
    begin
  let sym_sfs = section_for_symbol_symbol_off_section_symbol sym_sec in
  Section_for_symbol_symbol_v.is_section_for_symbol_footer_top_symbol_off_section_for_symbol_symbol sym_sfs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_symbol_of_section_for_any_symbol sym_sfa = 
  Section_symbol_t.Section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_formula_symbol sym_sff = 
  Section_symbol_t.Section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_symbol_symbol sym_sfs = 
  Section_symbol_t.Section_for_symbol_symbol sym_sfs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let section_symbol_of_section_for_any_body_symbol sym_sab = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_body_symbol sym_sab in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_body_son_symbol sym_sbs = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_body_son_symbol sym_sbs in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_body_top_symbol sym_sbt = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_body_top_symbol sym_sbt in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_body_top_main_symbol sym_stm = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_body_top_main_symbol sym_stm in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_header_symbol sym_sah = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_header_symbol sym_sah in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_header_constant_symbol sym_shc = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_header_constant_symbol sym_shc in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_header_top_symbol sym_sht = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_header_top_symbol sym_sht in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_any_footer_symbol sym_saf = 
  let sym_sfa = Section_for_any_symbol_v.section_for_any_symbol_of_section_for_any_footer_symbol sym_saf in
    section_symbol_of_section_for_any_symbol sym_sfa
;;

let section_symbol_of_section_for_formula_body_symbol sym_sfb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_symbol sym_sfb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_builder_data_symbol sym_sbd = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_builder_data_symbol sym_sbd in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_localset_builder_symbol sym_sdb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_localset_builder_symbol sym_sdb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_localset_data_symbol sym_sdb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_localset_data_symbol sym_sdb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_builder_symbol sym_ssb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_builder_symbol sym_ssb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_top_symbol sym_sst = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_top_symbol sym_sst in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_top_builder_symbol sym_stb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_top_builder_symbol sym_stb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_top_data_symbol sym_std = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_top_data_symbol sym_std in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_top_main_symbol sym_stm = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_top_main_symbol sym_stm in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_smb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_smb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_symbol sym_sbt = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_symbol sym_sbt in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_builder_symbol sym_stb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_builder_symbol sym_stb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbd = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbd in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_data_symbol sym_std = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_data_symbol sym_std in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_main_builder_symbol sym_smb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_main_builder_symbol sym_smb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_body_top_main_data_symbol sym_smd = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_body_top_main_data_symbol sym_smd in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_header_symbol sym_sfh = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_header_symbol sym_sfh in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_header_constant_symbol sym_shc = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_header_constant_symbol sym_shc in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_header_top_builder_symbol sym_stb = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_header_top_builder_symbol sym_stb in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_header_top_data_symbol sym_std = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_header_top_data_symbol sym_std in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_formula_header_top_main_symbol sym_stm = 
  let sym_sff = Section_for_formula_symbol_v.section_for_formula_symbol_of_section_for_formula_header_top_main_symbol sym_stm in
    section_symbol_of_section_for_formula_symbol sym_sff
;;

let section_symbol_of_section_for_symbol_header_symbol sym_ssh = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_ssh in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_header_constant_symbol sym_shc = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_constant_symbol sym_shc in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_header_current_son_top_symbol sym_sst = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_current_son_top_symbol sym_sst in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_header_current_top_symbol sym_sct = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_current_top_symbol sym_sct in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_header_son_symbol sym_shs = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_son_symbol sym_shs in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_header_son_top_symbol sym_sst = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_header_son_top_symbol sym_sst in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_symbol sym_ssb = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_ssb in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_sst = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_current_son_top_symbol sym_sst in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_son_symbol sym_sbs = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_son_symbol sym_sbs in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_son_bare_symbol sym_ssb = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_son_bare_symbol sym_ssb in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_sso = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_sso in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_son_top_symbol sym_sst = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_son_top_symbol sym_sst in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_body_top_symbol sym_sbt = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_body_top_symbol sym_sbt in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_footer_symbol sym_ssf = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_footer_symbol sym_ssf in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;

let section_symbol_of_section_for_symbol_footer_top_symbol sym_sft = 
  let sym_sfs = Section_for_symbol_symbol_v.section_for_symbol_symbol_of_section_for_symbol_footer_top_symbol sym_sft in
    section_symbol_of_section_for_symbol_symbol sym_sfs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_topson_any_type_notleaf_constructors = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.pipe_topson_any_type_notleaf_constructors;;

let sprintf_for_any_fullname = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.sprintf_for_any_longname;;

let make_tag_top = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.make_tag_top;;

let let_documentation = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_documentation;;

let let_nam_cod_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_nam_cod_equal;;

let type_et_any_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.type_et_any_equal;;

let camlfile_title = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.camlfile_title;;

let item_title = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.item_title;;

let let_name_argument_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_name_argument_equal;;

let let_longname_argument_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_longname_argument_equal;;

let let_fullname_argument_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_fullname_argument_equal;;

let let_retrieve_tag_top_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.let_string_off_argument_equal;;

let ending = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.ending;;

let double_semicolon = section_symbol_of_section_for_any_symbol Section_for_any_symbol_v.double_semicolon;;

let data_formula_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_formula_list;;

let data_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_tag_list;;

let builder_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_tag_list;;

let pipe_topson_formula_type_bare_constructors = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.pipe_topson_formula_type_bare_constructors;;

let pipe_topson_formula_type_ofstring_constructors = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.pipe_topson_formula_type_ofstring_constructors;;

let symbol_of_formula_topson_pattern_bare = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_formula_list;;

let builder_tag_list_of_tag_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.data_tag_list_of_tag_for_formula;;

let builder_node_sole_index_builder_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_node_sole_index_builder_list;;

let builder_stem_sole_index_data_list = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.builder_stem_sole_index_data_list;;

let let_symbol_of_formula_equal_function = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_map2_for_formula;;

let let_map_for_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = section_symbol_of_section_for_formula_symbol Section_for_formula_symbol_v.let_make_arguments_equal_match_with;;

let let_make_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let if_not_is_topson_begin_bare_end = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.if_not_is_topson_begin_bare_end;;

let if_not_is_topson_begin_ofstring_end = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.if_not_is_topson_begin_ofstring_end;;

let if_not_is_topson_begin_notleaf_end = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.if_not_is_topson_begin_notleaf_end;;

let upgrade_grandson_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.upgrade_grandson_symbol;;

let make_ecstring_pattern_bare_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.make_ecstring_pattern_bare_for_symbol;;

let pipe_topson_symbol_type_bare_constructors = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_topson_symbol_type_bare_constructors;;

let make_ecstring_pattern_ofstring_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.make_ecstring_pattern_ofstring_for_symbol;;

let pipe_topson_symbol_type_ofstring_constructors = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_topson_symbol_type_ofstring_constructors;;

let is_one_topson_bare_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_one_topson_bare_off_pattern_for_symbol;;

let is_one_topson_notleaf_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_one_topson_notleaf_off_pattern_for_symbol;;

let is_one_topson_ofstring_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_one_topson_ofstring_off_pattern_for_symbol;;

let is_onlyson_bare_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_onlyson_bare_off_pattern_for_symbol;;

let is_onlyson_notleaf_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_onlyson_notleaf_off_pattern_for_symbol;;

let is_onlyson_ofstring_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.is_onlyson_ofstring_off_pattern_for_symbol;;

let name_topson_pattern_bare_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.name_topson_pattern_bare_for_symbol;;

let name_topson_pattern_notleaf_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.name_topson_pattern_notleaf_for_symbol;;

let name_topson_pattern_ofstring_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.name_topson_pattern_ofstring_for_symbol;;

let one_topson_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.one_topson_off_pattern_for_symbol;;

let onlyson_off_pattern_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.onlyson_off_pattern_for_symbol;;

let string_off_topson_pattern_bare_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.string_off_topson_pattern_bare_for_symbol;;

let string_off_topson_pattern_notleaf_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.string_off_topson_pattern_notleaf_for_symbol;;

let string_off_topson_pattern_ofstring_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.string_off_topson_pattern_ofstring_for_symbol;;

let try_make_of_topson_with_failure_arrow = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.try_make_of_topson_with_failure_arrow;;

let try_name_of_topson_with_failure_arrow = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.try_name_of_topson_with_failure_arrow;;

let try_string_off_of_topson_with_failure_arrow = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.try_string_off_of_topson_with_failure_arrow;;

let try_top_of_topson_with_failure_arrow = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.upgrade_topson_symbol;;

let documentation_list_for_symbol = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.documentation_list_for_symbol;;

let failwith_not_a_topson_notleaf = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.print_fatal_error_make;;

let print_fatal_error_name = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.print_fatal_error_name;;

let print_fatal_error_string_off = section_symbol_of_section_for_symbol_symbol Section_for_symbol_symbol_v.print_fatal_error_string_off;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_symbol_of_section_for_any_symbol
      (Section_for_any_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_symbol:Section_for_any_symbol_v:make" ->
  try section_symbol_of_section_for_formula_symbol
      (Section_for_formula_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_symbol:Section_for_formula_symbol_v:make" ->
  try section_symbol_of_section_for_symbol_symbol
      (Section_for_symbol_symbol_v.make nam s)
  with Failure "Not_a_section_for_symbol_symbol:Section_for_symbol_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section subtype" nam s)
      "it does not exists"
      "Check file Section_symbol_v.ml"
    in
    failwith "Not_a_section_symbol:Section_symbol_v.ml:make"
;;


(** Section_symbol_v at 11:55:47 on 30 May 2013. created by version v1.13 of generator *)



