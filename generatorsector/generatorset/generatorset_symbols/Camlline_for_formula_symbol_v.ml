(** {3 Camlline_for_formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol sym_ffd ->
    Camlline_for_formula_datastructure_symbol_v.name sym_ffd
  | Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol sym_ffd ->
    Camlline_for_formula_duo_symbol_v.name sym_ffd
  | Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol sym_fft ->
    Camlline_for_formula_trio_symbol_v.name sym_fft
  | Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol sym_ffu ->
    Camlline_for_formula_uno_symbol_v.name sym_ffu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol sym_ffd ->
  Camlline_for_formula_datastructure_symbol_v.string_off sym_ffd
  | Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol sym_ffd ->
  Camlline_for_formula_duo_symbol_v.string_off sym_ffd
  | Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol sym_fft ->
  Camlline_for_formula_trio_symbol_v.string_off sym_fft
  | Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol sym_ffu ->
  Camlline_for_formula_uno_symbol_v.string_off sym_ffu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cff =
  Format.sprintf "Camlline_for_formula_symbol_t.%s" (String.capitalize_ascii (name sym_cff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cff =
  Format.sprintf "%s \"%s\"" (longname sym_cff) (string_off sym_cff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol sym_ffd -> sym_ffd
  | sym_cff -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol"
      "Camlline_for_formula_datastructure_symbol"
      (name sym_cff) "check"
;;

let camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol sym_ffd -> sym_ffd
  | sym_cff -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol"
      "Camlline_for_formula_duo_symbol"
      (name sym_cff) "check"
;;

let camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol sym_fft -> sym_fft
  | sym_cff -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol"
      "Camlline_for_formula_trio_symbol"
      (name sym_cff) "check"
;;

let camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol sym_ffu -> sym_ffu
  | sym_cff -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol"
      "Camlline_for_formula_uno_symbol"
      (name sym_cff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_uno_data_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_uno_main_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_uno_son_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_uno_top_symbol_off_camlline_for_formula_symbol sym_cff = 
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
    Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol = function
  | Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_das_vdot_name_nam_a_for_at sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_datastructure_symbol_v.is_das_vdot_name_nam_a_for_at sym_ffd
    end
;;

let is_das_vdot_name_nam_a_nam_b_for_at sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_datastructure_symbol_v.is_das_vdot_name_nam_a_nam_b_for_at sym_ffd
    end
;;

let is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_datastructure_symbol_v.is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_ffd
    end
;;

let is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_ffd
    end
;;

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_ffd
    end
;;

let is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_ffd
    end
;;

let is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_ffd
    end
;;

let is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_ffd
    end
;;

let is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_ffd
    end
;;

let is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_ffd
    end
;;

let is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_ffd
    end
;;

let is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_ffd
    end
;;

let is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_ffd
    end
;;

let is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_ffd
    end
;;

let is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_ffd
    end
;;

let is_et_formula_tdot_es_formula sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_et_formula_tdot_es_formula sym_ffd
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_ffd
    end
;;

let is_pipe_et_formula_tdot_es_underscore_arrow sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_pipe_et_formula_tdot_es_underscore_arrow sym_ffd
    end
;;

let is_et_formula_tdot_es_for_das sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_et_formula_tdot_es_for_das sym_ffd
    end
;;

let is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_ffd
    end
;;

let is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_ffd
    end
;;

let is_eb_tag_list_off_et_formula_for_at sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_eb_tag_list_off_et_formula_for_at sym_ffd
    end
;;

let is_let_eb_tag_list_off_et_formula_equal_function sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_eb_tag_list_off_et_formula_equal_function sym_ffd
    end
;;

let is_let_eb_tag_list_off_et_tag_tag_at_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_eb_tag_list_off_et_tag_tag_at_equal sym_ffd
    end
;;

let is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_ffd
    end
;;

let is_let_iter_f_of_tag_ab_for_at_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_iter_f_of_tag_ab_for_at_equal sym_ffd
    end
;;

let is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_ffd
    end
;;

let is_let_map_f_of_tag_ab_for_at_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_map_f_of_tag_ab_for_at_equal sym_ffd
    end
;;

let is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_ffd
    end
;;

let is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_ffd
    end
;;

let is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_ffd
    end
;;

let is_let_ed_tag_list_off_et_formula_equal_function sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_ed_tag_list_off_et_formula_equal_function sym_ffd
    end
;;

let is_let_ed_tag_list_off_et_formula_for_at_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_ed_tag_list_off_et_formula_for_at_equal sym_ffd
    end
;;

let is_let_ed_tag_list_off_et_tag_tag_at_equal sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_ed_tag_list_off_et_tag_tag_at_equal sym_ffd
    end
;;

let is_ed_tag_list_off_et_formula_for_at sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_ed_tag_list_off_et_formula_for_at sym_ffd
    end
;;

let is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_duo_symbol_v.is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_ffd
    end
;;

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_fft
    end
;;

let is_et_formula_tdot_es_tag_ab_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_et_formula_tdot_es_tag_ab_l sym_fft
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_fft
    end
;;

let is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_fft
    end
;;

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_fft
    end
;;

let is_et_formula_tdot_es_tag_ad_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_et_formula_tdot_es_tag_ad_l sym_fft
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_fft
    end
;;

let is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_fft
    end
;;

let is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_fft
    end
;;

let is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_trio_symbol_v.is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_fft
    end
;;

let is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_ffu
    end
;;

let is_let_soi_ab_l_equal sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_soi_ab_l_equal sym_ffu
    end
;;

let is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_ffu
    end
;;

let is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_ffu
    end
;;

let is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_ffu
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_ffu
    end
;;

let is_list_dot_map_f_of_tag_ab_tag_ab_l sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_map_f_of_tag_ab_tag_ab_l sym_ffu
    end
;;

let is_double_quote_builders sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_double_quote_builders sym_ffu
    end
;;

let is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_ffu
    end
;;

let is_double_quote_data sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_double_quote_data sym_ffu
    end
;;

let is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_ffu
    end
;;

let is_let_soi_ad_l_equal sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_soi_ad_l_equal sym_ffu
    end
;;

let is_let_tag_ad_ll_equal_list_dot_map sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_tag_ad_ll_equal_list_dot_map sym_ffu
    end
;;

let is_list_dot_flatten_tag_ad_ll sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_flatten_tag_ad_ll sym_ffu
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_ffu
    end
;;

let is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_ffu
    end
;;

let is_es_formula_vdot_map_for_as sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_es_formula_vdot_map_for_as sym_ffu
    end
;;

let is_es_formula_vdot_name_for_as sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_es_formula_vdot_name_for_as sym_ffu
    end
;;

let is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_ffu
    end
;;

let is_for_at sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_for_at sym_ffu
    end
;;

let is_let_for_at_equal_retrieve_tag_at_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_for_at_equal_retrieve_tag_at_in sym_ffu
    end
;;

let is_let_make_soi_at_equal_function sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_make_soi_at_equal_function sym_ffu
    end
;;

let is_let_make_tag_at_equal sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_make_tag_at_equal sym_ffu
    end
;;

let is_let_name_for_at_equal sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_name_for_at_equal sym_ffu
    end
;;

let is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_ffu
    end
;;

let is_let_sym_at_equal_symbol_of_formula_for_at_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_sym_at_equal_symbol_of_formula_for_at_in sym_ffu
    end
;;

let is_et_formula_vdot_name sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_et_formula_vdot_name sym_ffu
    end
;;

let is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_ffu
    end
;;

let is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
      Camlline_for_formula_uno_symbol_v.is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_ffu
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_datastructure_symbol_v.is_camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
    end
;;

let is_camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_datastructure_symbol_v.is_camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
    end
;;

let is_camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_datastructure_symbol_v.is_camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffd = camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_duo_symbol_v.is_camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd
    end
;;

let is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_trio_symbol_v.is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft
    end
;;

let is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_trio_symbol_v.is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft
    end
;;

let is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_trio_symbol_v.is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol sym_fft
    end
;;

let is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_fft = camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_trio_symbol_v.is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft
    end
;;

let is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_uno_symbol_v.is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu
    end
;;

let is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_uno_symbol_v.is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu
    end
;;

let is_camlline_for_formula_uno_main_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_uno_symbol_v.is_camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol sym_ffu
    end
;;

let is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_uno_symbol_v.is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu
    end
;;

let is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_symbol sym_cff =
  if not (is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffu = camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff in
  Camlline_for_formula_uno_symbol_v.is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd = 
  Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd = 
  Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft = 
  Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu = 
  Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol sym_ffu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_formula_symbol_of_camlline_for_formula_datastructure_uno_symbol sym_fdu = 
  let sym_ffd = Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_uno_symbol sym_fdu in
    camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_datastructure_duo_symbol sym_fdd = 
  let sym_ffd = Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_duo_symbol sym_fdd in
    camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_datastructure_trio_symbol sym_fdt = 
  let sym_ffd = Camlline_for_formula_datastructure_symbol_v.camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_trio_symbol sym_fdt in
    camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_dbd = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_dbd in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ddb = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ddb in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_localset_data_symbol sym_ddb = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_data_symbol sym_ddb in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_dmb = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_dmb in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_main_data_symbol sym_dmd = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_data_symbol sym_dmd in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_dsb = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_dsb in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_son_data_symbol sym_dsd = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol sym_dsd in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_son_main_symbol sym_dsm = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_main_symbol sym_dsm in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_son_top_symbol sym_dst = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol sym_dst in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_dtb = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_dtb in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_top_data_symbol sym_dtd = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol sym_dtd in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_duo_top_main_symbol sym_dtm = 
  let sym_ffd = Camlline_for_formula_duo_symbol_v.camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_main_symbol sym_dtm in
    camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd
;;

let camlline_for_formula_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_stb = 
  let sym_fft = Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_stb in
    camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_std = 
  let sym_fft = Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_std in
    camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_symbol_of_camlline_for_formula_trio_top_builder_data_symbol sym_tbd = 
  let sym_fft = Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_builder_data_symbol sym_tbd in
    camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_tmb = 
  let sym_fft = Camlline_for_formula_trio_symbol_v.camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_tmb in
    camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_builder_symbol sym_fub = 
  let sym_ffu = Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol sym_fub in
    camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_data_symbol sym_fud = 
  let sym_ffu = Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol sym_fud in
    camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_main_symbol sym_fud = 
  let sym_ffu = Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_main_symbol sym_fud in
    camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_son_symbol sym_fus = 
  let sym_ffu = Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol sym_fus in
    camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu
;;

let camlline_for_formula_symbol_of_camlline_for_formula_uno_top_symbol sym_fut = 
  let sym_ffu = Camlline_for_formula_uno_symbol_v.camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol sym_fut in
    camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let das_vdot_name_nam_a_for_at = camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol Camlline_for_formula_datastructure_symbol_v.das_vdot_name_nam_a_for_at;;

let das_vdot_name_nam_a_nam_b_for_at = camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol Camlline_for_formula_datastructure_symbol_v.das_vdot_name_nam_a_nam_b_for_at;;

let das_vdot_name_nam_a_nam_b_nam_c_for_at = camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol Camlline_for_formula_datastructure_symbol_v.das_vdot_name_nam_a_nam_b_nam_c_for_at;;

let eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in;;

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon;;

let one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in;;

let one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in;;

let es_formula_vdot_eb_tag_list_off_es_formula_for_as = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.es_formula_vdot_eb_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_eb_tag_tdot_eb_tag_list = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_es_constructor_of_eb_tag_tdot_eb_tag_list;;

let pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list;;

let es_formula_vdot_ed_tag_list_off_es_formula_for_as = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.es_formula_vdot_ed_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_ed_tag_tdot_ed_tag_list = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_es_constructor_of_ed_tag_tdot_ed_tag_list;;

let pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list;;

let lpar_es_formula_vdot_make_sym_as_soi_am_rpar = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.lpar_es_formula_vdot_make_sym_as_soi_am_rpar;;

let et_formula_tdot_es_formula = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.et_formula_tdot_es_formula;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow;;

let pipe_et_formula_tdot_es_underscore_arrow = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.pipe_et_formula_tdot_es_underscore_arrow;;

let et_formula_tdot_es_for_das = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.et_formula_tdot_es_for_das;;

let let_nam_as_equal_es_tag_vdot_name_for_at_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_nam_as_equal_es_tag_vdot_name_for_at_in;;

let let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in;;

let eb_tag_list_off_et_formula_for_at = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.eb_tag_list_off_et_formula_for_at;;

let let_eb_tag_list_off_et_formula_equal_function = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_eb_tag_list_off_et_formula_equal_function;;

let let_eb_tag_list_off_et_tag_tag_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_eb_tag_list_off_et_tag_tag_at_equal;;

let let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_iter_f_of_tag_ab_for_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_iter_f_of_tag_ab_for_at_equal;;

let let_map2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_map2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_map_f_of_tag_ab_for_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_map_f_of_tag_ab_for_at_equal;;

let let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in;;

let let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in;;

let let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in;;

let let_ed_tag_list_off_et_formula_equal_function = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_ed_tag_list_off_et_formula_equal_function;;

let let_ed_tag_list_off_et_formula_for_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_ed_tag_list_off_et_formula_for_at_equal;;

let let_ed_tag_list_off_et_tag_tag_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_ed_tag_list_off_et_tag_tag_at_equal;;

let ed_tag_list_off_et_formula_for_at = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.ed_tag_list_off_et_formula_for_at;;

let let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in = camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol Camlline_for_formula_duo_symbol_v.let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in;;

let et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar;;

let et_formula_tdot_es_tag_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.et_formula_tdot_es_tag_ab_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l;;

let pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l;;

let et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar;;

let et_formula_tdot_es_tag_ad_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.et_formula_tdot_es_tag_ad_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l;;

let pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l;;

let let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in;;

let let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in = camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol Camlline_for_formula_trio_symbol_v.let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in;;

let let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in;;

let let_soi_ab_l_equal = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_soi_ab_l_equal;;

let list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_iter_f_of_tag_ab_tag_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_iter_f_of_tag_ab_tag_ab_l;;

let list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l;;

let list_dot_map_f_of_tag_ab_tag_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_map_f_of_tag_ab_tag_ab_l;;

let double_quote_builders = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.double_quote_builders;;

let tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l;;

let double_quote_data = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.double_quote_data;;

let let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in;;

let let_soi_ad_l_equal = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_soi_ad_l_equal;;

let let_tag_ad_ll_equal_list_dot_map = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_tag_ad_ll_equal_list_dot_map;;

let list_dot_flatten_tag_ad_ll = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_flatten_tag_ad_ll;;

let list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l;;

let lpar_es_formula_vdot_symbol_of_formula_for_as_rpar = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.lpar_es_formula_vdot_symbol_of_formula_for_as_rpar;;

let es_formula_vdot_map_for_as = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.es_formula_vdot_map_for_as;;

let es_formula_vdot_name_for_as = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.es_formula_vdot_name_for_as;;

let let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in;;

let for_at = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.for_at;;

let let_for_at_equal_retrieve_tag_at_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_for_at_equal_retrieve_tag_at_in;;

let let_make_soi_at_equal_function = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_make_soi_at_equal_function;;

let let_make_tag_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_make_tag_at_equal;;

let let_name_for_at_equal = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_name_for_at_equal;;

let let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in;;

let let_sym_at_equal_symbol_of_formula_for_at_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_sym_at_equal_symbol_of_formula_for_at_in;;

let et_formula_vdot_name = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.et_formula_vdot_name;;

let let_for_das_equal_das_vdot_make_tag_at_builder_list_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_for_das_equal_das_vdot_make_tag_at_builder_list_in;;

let let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol Camlline_for_formula_uno_symbol_v.let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol
      (Camlline_for_formula_datastructure_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_datastructure_symbol:Camlline_for_formula_datastructure_symbol_v:make" ->
  try camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_symbol:Camlline_for_formula_duo_symbol_v:make" ->
  try camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol
      (Camlline_for_formula_trio_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_trio_symbol:Camlline_for_formula_trio_symbol_v:make" ->
  try camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_uno_symbol:Camlline_for_formula_uno_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_symbol:Camlline_for_formula_symbol_v.ml:make"
;;




