(** {3 Camlparagraph_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cfa ->
    Camlparagraph_for_any_symbol_v.name sym_cfa
  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cff ->
    Camlparagraph_for_formula_symbol_v.name sym_cff
  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cfs ->
    Camlparagraph_for_symbol_symbol_v.name sym_cfs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cfa ->
  Camlparagraph_for_any_symbol_v.string_off sym_cfa
  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cff ->
  Camlparagraph_for_formula_symbol_v.string_off sym_cff
  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cfs ->
  Camlparagraph_for_symbol_symbol_v.string_off sym_cfs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cam =
  Format.sprintf "Camlparagraph_symbol_t.%s" (String.capitalize_ascii (name sym_cam))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cam =
  Format.sprintf "%s \"%s\"" (longname sym_cam) (string_off sym_cam)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlparagraph_for_any_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cfa -> sym_cfa
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_any_symbol_off_camlparagraph_symbol"
      "Camlparagraph_for_any_symbol"
      (name sym_cam) "check"
;;

let camlparagraph_for_formula_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cff -> sym_cff
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_formula_symbol_off_camlparagraph_symbol"
      "Camlparagraph_for_formula_symbol"
      (name sym_cam) "check"
;;

let camlparagraph_for_symbol_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cfs -> sym_cfs
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_symbol_symbol_off_camlparagraph_symbol"
      "Camlparagraph_for_symbol_symbol"
      (name sym_cam) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlparagraph_for_any_comment_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_any_symbol_v.camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa
;;

let camlparagraph_for_any_function_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_any_symbol_v.camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol sym_cfa
;;

let camlparagraph_for_formula_let_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_for_formula_let_match_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_for_symbol_let_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_let_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_symbol sym_cam = 
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
    Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlparagraph_for_any_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol = function
  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_camlfile_title sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_any_symbol_v.is_camlfile_title sym_cfa
    end
;;

let is_empty sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_any_symbol_v.is_empty sym_cfa
    end
;;

let is_ending sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_any_symbol_v.is_ending sym_cfa
    end
;;

let is_item_title sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_any_symbol_v.is_item_title sym_cfa
    end
;;

let is_let_nam_cod_equal sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_any_symbol_v.is_let_nam_cod_equal sym_cfa
    end
;;

let is_let_build_n_store_basic_sons sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_build_n_store_basic_sons sym_cff
    end
;;

let is_let_build_n_store_proper_sons sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_build_n_store_proper_sons sym_cff
    end
;;

let is_let_builder_tag_list_off_top_tag sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_builder_tag_list_off_top_tag sym_cff
    end
;;

let is_let_data_tag_list_off_top_tag sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_data_tag_list_off_top_tag sym_cff
    end
;;

let is_let_documentation_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_documentation_for_formula sym_cff
    end
;;

let is_let_fullname_argument_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_fullname_argument_for_formula sym_cff
    end
;;

let is_let_iter2_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_iter2_for_formula sym_cff
    end
;;

let is_let_iter_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_iter_for_formula sym_cff
    end
;;

let is_let_longname_argument_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_longname_argument_for_formula sym_cff
    end
;;

let is_let_make_arguments_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_make_arguments_for_formula sym_cff
    end
;;

let is_let_map2_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_map2_for_formula sym_cff
    end
;;

let is_let_map_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_map_for_formula sym_cff
    end
;;

let is_let_name_argument_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_name_argument_for_formula sym_cff
    end
;;

let is_let_retrieve_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_retrieve_for_formula sym_cff
    end
;;

let is_let_string_off_argument_for_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_string_off_argument_for_formula sym_cff
    end
;;

let is_let_builder_tag_list_off_top_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_builder_tag_list_off_top_formula sym_cff
    end
;;

let is_let_data_tag_list_off_top_formula sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_data_tag_list_off_top_formula sym_cff
    end
;;

let is_let_symbol_of_formula_equal_function sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_let_symbol_of_formula_equal_function sym_cff
    end
;;

let is_camlparagraph_for_formula_type sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_formula_symbol_v.is_camlparagraph_for_formula_type sym_cff
    end
;;

let is_let_documentation_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_documentation_for_symbol sym_cfs
    end
;;

let is_let_es_symbol_off_et_symbol_datastructure_argument sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_es_symbol_off_et_symbol_datastructure_argument sym_cfs
    end
;;

let is_let_fullname_argument_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_fullname_argument_for_symbol sym_cfs
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_is_grandson_bare sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_grandson_bare sym_cfs
    end
;;

let is_let_is_grandson_ofstring sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_grandson_ofstring sym_cfs
    end
;;

let is_let_longname_argument_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_longname_argument_for_symbol sym_cfs
    end
;;

let is_let_make_argument_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_argument_for_symbol sym_cfs
    end
;;

let is_let_make_nam_s_equal_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_nam_s_equal_for_symbol sym_cfs
    end
;;

let is_let_make_of_topson_bare_nam_equal_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_of_topson_bare_nam_equal_for_symbol sym_cfs
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal_for_symbol sym_cfs
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal_for_symbol sym_cfs
    end
;;

let is_let_name_argument_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_argument_for_symbol sym_cfs
    end
;;

let is_let_string_off_argument_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_string_off_argument_for_symbol sym_cfs
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol sym_cfs
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol sym_cfs
    end
;;

let is_let_abbreviate_inancestorself sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_inancestorself sym_cfs
    end
;;

let is_let_abbreviate_topson_basicnullary sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_topson_basicnullary sym_cfs
    end
;;

let is_let_abbreviate_topson_bare sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_topson_bare sym_cfs
    end
;;

let is_let_abbreviate_topson_ofstring sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_topson_ofstring sym_cfs
    end
;;

let is_let_abbreviate_grandson_basicnullary sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_grandson_basicnullary sym_cfs
    end
;;

let is_let_abbreviate_grandson_bare sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_grandson_bare sym_cfs
    end
;;

let is_let_abbreviate_grandson_ofstring sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_grandson_ofstring sym_cfs
    end
;;

let is_let_abbreviate_inself sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_abbreviate_inself sym_cfs
    end
;;

let is_let_is_onlyson_bare sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_onlyson_bare sym_cfs
    end
;;

let is_let_is_onlyson_ofstring sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_onlyson_ofstring sym_cfs
    end
;;

let is_let_is_onlyson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_onlyson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_is_topson_bare sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_topson_bare sym_cfs
    end
;;

let is_let_is_topson_ofstring sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_topson_ofstring sym_cfs
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_longname_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_longname_equal_function_for_symbol sym_cfs
    end
;;

let is_let_make_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_equal_function_for_symbol sym_cfs
    end
;;

let is_let_name_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_equal_function_for_symbol sym_cfs
    end
;;

let is_let_name_of_topson_bare_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_of_topson_bare_equal_function_for_symbol sym_cfs
    end
;;

let is_let_name_of_topson_notleaf_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_of_topson_notleaf_equal_function_for_symbol sym_cfs
    end
;;

let is_let_name_of_topson_ofstring_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_of_topson_ofstring_equal_function_for_symbol sym_cfs
    end
;;

let is_let_onlyson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_onlyson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_print_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_print_function_for_symbol sym_cfs
    end
;;

let is_let_string_off_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_string_off_equal_function_for_symbol sym_cfs
    end
;;

let is_let_string_off_of_topson_bare_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_string_off_of_topson_bare_equal_function_for_symbol sym_cfs
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_string_off_of_topson_notleaf_equal_function_for_symbol sym_cfs
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_string_off_of_topson_ofstring_equal_function_for_symbol sym_cfs
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol sym_cfs
    end
;;

let is_let_fullname_argument_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_fullname_argument_equal_function_for_symbol sym_cfs
    end
;;

let is_let_make_argument_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_make_argument_equal_function_for_symbol sym_cfs
    end
;;

let is_let_name_argument_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_name_argument_equal_function_for_symbol sym_cfs
    end
;;

let is_let_symbol_list_argument_equal_function_for_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_let_symbol_list_argument_equal_function_for_symbol sym_cfs
    end
;;

let is_camlparagraph_for_symbol_type sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
      Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_type sym_cfs
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlparagraph_for_any_comment_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_any_symbol_v.is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa
    end
;;

let is_camlparagraph_for_any_function_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_any_symbol_v.is_camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol sym_cfa
    end
;;

let is_camlparagraph_for_formula_let_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_formula_symbol_v.is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff
    end
;;

let is_camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_formula_symbol_v.is_camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_symbol sym_cff
    end
;;

let is_camlparagraph_for_formula_let_match_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_formula_symbol_v.is_camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_symbol sym_cff
    end
;;

let is_camlparagraph_for_symbol_let_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_let_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
    end
;;

let is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
    end
;;

let is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
    end
;;

let is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
    end
;;

let is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_symbol sym_cam =
  if not (is_camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlparagraph_for_symbol_symbol_off_camlparagraph_symbol sym_cam in
  Camlparagraph_for_symbol_symbol_v.is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_symbol sym_cfs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlparagraph_symbol_of_camlparagraph_for_any_symbol sym_cfa = 
  Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cfa
;;

let camlparagraph_symbol_of_camlparagraph_for_formula_symbol sym_cff = 
  Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs = 
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cfs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_fac = 
  let sym_cfa = Camlparagraph_for_any_symbol_v.camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol sym_fac in
    camlparagraph_symbol_of_camlparagraph_for_any_symbol sym_cfa
;;

let camlparagraph_symbol_of_camlparagraph_for_any_function_symbol sym_faf = 
  let sym_cfa = Camlparagraph_for_any_symbol_v.camlparagraph_for_any_symbol_of_camlparagraph_for_any_function_symbol sym_faf in
    camlparagraph_symbol_of_camlparagraph_for_any_symbol sym_cfa
;;

let camlparagraph_symbol_of_camlparagraph_for_formula_let_symbol sym_ffl = 
  let sym_cff = Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol sym_ffl in
    camlparagraph_symbol_of_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_fla = 
  let sym_cff = Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_fla in
    camlparagraph_symbol_of_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_symbol_of_camlparagraph_for_formula_let_match_symbol sym_flm = 
  let sym_cff = Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_match_symbol sym_flm in
    camlparagraph_symbol_of_camlparagraph_for_formula_symbol sym_cff
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_let_symbol sym_fsl = 
  let sym_cfs = Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_symbol_of_camlparagraph_for_symbol_let_symbol sym_fsl in
    camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_sla = 
  let sym_cfs = Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_sla in
    camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol sym_sla = 
  let sym_cfs = Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol sym_sla in
    camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol sym_slm = 
  let sym_cfs = Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_symbol_of_camlparagraph_for_symbol_let_match_symbol sym_slm in
    camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs
;;

let camlparagraph_symbol_of_camlparagraph_for_symbol_let_mixed_symbol sym_slm = 
  let sym_cfs = Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_symbol_of_camlparagraph_for_symbol_let_mixed_symbol sym_slm in
    camlparagraph_symbol_of_camlparagraph_for_symbol_symbol sym_cfs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let camlfile_title = camlparagraph_symbol_of_camlparagraph_for_any_symbol Camlparagraph_for_any_symbol_v.camlfile_title;;

let empty = camlparagraph_symbol_of_camlparagraph_for_any_symbol Camlparagraph_for_any_symbol_v.empty;;

let ending = camlparagraph_symbol_of_camlparagraph_for_any_symbol Camlparagraph_for_any_symbol_v.ending;;

let item_title = camlparagraph_symbol_of_camlparagraph_for_any_symbol Camlparagraph_for_any_symbol_v.item_title;;

let let_nam_cod_equal = camlparagraph_symbol_of_camlparagraph_for_any_symbol Camlparagraph_for_any_symbol_v.let_nam_cod_equal;;

let let_build_n_store_basic_sons = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_build_n_store_proper_sons;;

let let_builder_tag_list_off_top_tag = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_builder_tag_list_off_top_tag;;

let let_data_tag_list_off_top_tag = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_data_tag_list_off_top_tag;;

let let_documentation_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_documentation_for_formula;;

let let_fullname_argument_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_fullname_argument_for_formula;;

let let_iter2_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_iter_for_formula;;

let let_longname_argument_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_longname_argument_for_formula;;

let let_make_arguments_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_make_arguments_for_formula;;

let let_map2_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_map2_for_formula;;

let let_map_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_map_for_formula;;

let let_name_argument_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_name_argument_for_formula;;

let let_retrieve_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_retrieve_for_formula;;

let let_string_off_argument_for_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_string_off_argument_for_formula;;

let let_builder_tag_list_off_top_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_builder_tag_list_off_top_formula;;

let let_data_tag_list_off_top_formula = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_data_tag_list_off_top_formula;;

let let_symbol_of_formula_equal_function = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.let_symbol_of_formula_equal_function;;

let camlparagraph_for_formula_type = camlparagraph_symbol_of_camlparagraph_for_formula_symbol Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_type;;

let let_documentation_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_documentation_for_symbol;;

let let_es_symbol_off_et_symbol_datastructure_argument = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_es_symbol_off_et_symbol_datastructure_argument;;

let let_fullname_argument_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_fullname_argument_for_symbol;;

let let_grandson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_bare = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_grandson_bare;;

let let_is_grandson_ofstring = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_grandson_ofstring;;

let let_longname_argument_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_longname_argument_for_symbol;;

let let_make_argument_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_argument_for_symbol;;

let let_make_nam_s_equal_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_nam_s_equal_for_symbol;;

let let_make_of_topson_bare_nam_equal_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_of_topson_bare_nam_equal_for_symbol;;

let let_make_of_topson_ofstring_nam_s_equal_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_of_topson_ofstring_nam_s_equal_for_symbol;;

let let_make_of_topson_notleaf_nam_s_equal_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_of_topson_notleaf_nam_s_equal_for_symbol;;

let let_name_argument_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_argument_for_symbol;;

let let_string_off_argument_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_string_off_argument_for_symbol;;

let let_top_symbol_of_grandson_notleaf_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_top_symbol_of_grandson_notleaf_symbol;;

let let_top_symbol_of_topson_notleaf_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_top_symbol_of_topson_notleaf_symbol;;

let let_abbreviate_inancestorself = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_inancestorself;;

let let_abbreviate_topson_basicnullary = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_topson_basicnullary;;

let let_abbreviate_topson_bare = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_topson_ofstring;;

let let_abbreviate_grandson_basicnullary = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_grandson_basicnullary;;

let let_abbreviate_grandson_bare = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_grandson_ofstring;;

let let_abbreviate_inself = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_abbreviate_inself;;

let let_is_onlyson_bare = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_onlyson_bare;;

let let_is_onlyson_ofstring = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_onlyson_ofstring;;

let let_is_onlyson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_onlyson_notleaf_symbol_off_top_symbol;;

let let_is_topson_bare = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol;;

let let_longname_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_longname_equal_function_for_symbol;;

let let_make_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_equal_function_for_symbol;;

let let_name_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_equal_function_for_symbol;;

let let_name_of_topson_bare_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_of_topson_bare_equal_function_for_symbol;;

let let_name_of_topson_notleaf_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_of_topson_notleaf_equal_function_for_symbol;;

let let_name_of_topson_ofstring_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_of_topson_ofstring_equal_function_for_symbol;;

let let_onlyson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_onlyson_notleaf_symbol_off_top_symbol;;

let let_print_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_print_function_for_symbol;;

let let_string_off_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_string_off_equal_function_for_symbol;;

let let_string_off_of_topson_bare_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_string_off_of_topson_bare_equal_function_for_symbol;;

let let_string_off_of_topson_notleaf_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_string_off_of_topson_notleaf_equal_function_for_symbol;;

let let_string_off_of_topson_ofstring_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_string_off_of_topson_ofstring_equal_function_for_symbol;;

let let_topson_notleaf_symbol_off_top_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_topson_notleaf_symbol_off_top_symbol;;

let let_fullname_argument_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_fullname_argument_equal_function_for_symbol;;

let let_make_argument_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_make_argument_equal_function_for_symbol;;

let let_name_argument_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_name_argument_equal_function_for_symbol;;

let let_symbol_list_argument_equal_function_for_symbol = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.let_symbol_list_argument_equal_function_for_symbol;;

let camlparagraph_for_symbol_type = camlparagraph_symbol_of_camlparagraph_for_symbol_symbol Camlparagraph_for_symbol_symbol_v.camlparagraph_for_symbol_type;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlparagraph_symbol_of_camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_any_symbol:Camlparagraph_for_any_symbol_v:make" ->
  try camlparagraph_symbol_of_camlparagraph_for_formula_symbol
      (Camlparagraph_for_formula_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_formula_symbol:Camlparagraph_for_formula_symbol_v:make" ->
  try camlparagraph_symbol_of_camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_symbol_symbol:Camlparagraph_for_symbol_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlparagraph_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_symbol:Camlparagraph_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



