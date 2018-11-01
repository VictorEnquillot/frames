(** {3 Camlline_for_formula_uno_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_uno_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_fub ->
    Camlline_for_formula_uno_builder_symbol_v.name sym_fub
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_fud ->
    Camlline_for_formula_uno_data_symbol_v.name sym_fud
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_fud ->
    Camlline_for_formula_uno_main_symbol_v.name sym_fud
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_fus ->
    Camlline_for_formula_uno_son_symbol_v.name sym_fus
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_fut ->
    Camlline_for_formula_uno_top_symbol_v.name sym_fut
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_fub ->
  Camlline_for_formula_uno_builder_symbol_v.string_off sym_fub
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_fud ->
  Camlline_for_formula_uno_data_symbol_v.string_off sym_fud
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_fud ->
  Camlline_for_formula_uno_main_symbol_v.string_off sym_fud
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_fus ->
  Camlline_for_formula_uno_son_symbol_v.string_off sym_fus
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_fut ->
  Camlline_for_formula_uno_top_symbol_v.string_off sym_fut
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ffu =
  Format.sprintf "Camlline_for_formula_uno_symbol_t.%s" (String.capitalize_ascii (name sym_ffu))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ffu =
  Format.sprintf "%s \"%s\"" (longname sym_ffu) (string_off sym_ffu)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_fub -> sym_fub
  | sym_ffu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol"
      "Camlline_for_formula_uno_builder_symbol"
      (name sym_ffu) "check"
;;

let camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_fud -> sym_fud
  | sym_ffu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol"
      "Camlline_for_formula_uno_data_symbol"
      (name sym_ffu) "check"
;;

let camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_fud -> sym_fud
  | sym_ffu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol"
      "Camlline_for_formula_uno_main_symbol"
      (name sym_ffu) "check"
;;

let camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_fus -> sym_fus
  | sym_ffu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol"
      "Camlline_for_formula_uno_son_symbol"
      (name sym_ffu) "check"
;;

let camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_fut -> sym_fut
  | sym_ffu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol"
      "Camlline_for_formula_uno_top_symbol"
      (name sym_ffu) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol = function
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_fub
    end
;;

let is_let_soi_ab_l_equal sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_let_soi_ab_l_equal sym_fub
    end
;;

let is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_fub
    end
;;

let is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_fub
    end
;;

let is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_fub
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_fub
    end
;;

let is_list_dot_map_f_of_tag_ab_tag_ab_l sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_list_dot_map_f_of_tag_ab_tag_ab_l sym_fub
    end
;;

let is_double_quote_builders sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_double_quote_builders sym_fub
    end
;;

let is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_ffu =
  if not (is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fub = camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_builder_symbol_v.is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_fub
    end
;;

let is_double_quote_data sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_double_quote_data sym_fud
    end
;;

let is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_fud
    end
;;

let is_let_soi_ad_l_equal sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_let_soi_ad_l_equal sym_fud
    end
;;

let is_let_tag_ad_ll_equal_list_dot_map sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_let_tag_ad_ll_equal_list_dot_map sym_fud
    end
;;

let is_list_dot_flatten_tag_ad_ll sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_list_dot_flatten_tag_ad_ll sym_fud
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_ffu =
  if not (is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fud = camlline_for_formula_uno_data_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_data_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_fud
    end
;;

let is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_ffu =
  if not (is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fus = camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_son_symbol_v.is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_fus
    end
;;

let is_es_formula_vdot_map_for_as sym_ffu =
  if not (is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fus = camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_son_symbol_v.is_es_formula_vdot_map_for_as sym_fus
    end
;;

let is_es_formula_vdot_name_for_as sym_ffu =
  if not (is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fus = camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_son_symbol_v.is_es_formula_vdot_name_for_as sym_fus
    end
;;

let is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_ffu =
  if not (is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fus = camlline_for_formula_uno_son_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_son_symbol_v.is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_fus
    end
;;

let is_for_at sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_for_at sym_fut
    end
;;

let is_let_for_at_equal_retrieve_tag_at_in sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_for_at_equal_retrieve_tag_at_in sym_fut
    end
;;

let is_let_make_soi_at_equal_function sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_make_soi_at_equal_function sym_fut
    end
;;

let is_let_make_tag_at_equal sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_make_tag_at_equal sym_fut
    end
;;

let is_let_name_for_at_equal sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_name_for_at_equal sym_fut
    end
;;

let is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_ffu =
  if not (is_camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_main_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_main_symbol_v.is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_fut
    end
;;

let is_let_sym_at_equal_symbol_of_formula_for_at_in sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_sym_at_equal_symbol_of_formula_for_at_in sym_fut
    end
;;

let is_et_formula_vdot_name sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_et_formula_vdot_name sym_fut
    end
;;

let is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_fut
    end
;;

let is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_ffu =
  if not (is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu)
  then false
  else
    begin
      let sym_fut = camlline_for_formula_uno_top_symbol_off_camlline_for_formula_uno_symbol sym_ffu in
      Camlline_for_formula_uno_top_symbol_v.is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_fut
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol sym_fub = 
  Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_fub
;;

let camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol sym_fud = 
  Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_fud
;;

let camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_main_symbol sym_fud = 
  Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_fud
;;

let camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol sym_fus = 
  Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_fus
;;

let camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol sym_fut = 
  Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_fut
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in;;

let let_soi_ab_l_equal = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.let_soi_ab_l_equal;;

let list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_iter_f_of_tag_ab_tag_ab_l = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.list_dot_iter_f_of_tag_ab_tag_ab_l;;

let list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l;;

let list_dot_map_f_of_tag_ab_tag_ab_l = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.list_dot_map_f_of_tag_ab_tag_ab_l;;

let double_quote_builders = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.double_quote_builders;;

let tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol Camlline_for_formula_uno_builder_symbol_v.tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l;;

let double_quote_data = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.double_quote_data;;

let let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in;;

let let_soi_ad_l_equal = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.let_soi_ad_l_equal;;

let let_tag_ad_ll_equal_list_dot_map = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.let_tag_ad_ll_equal_list_dot_map;;

let list_dot_flatten_tag_ad_ll = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.list_dot_flatten_tag_ad_ll;;

let list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol Camlline_for_formula_uno_data_symbol_v.list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l;;

let lpar_es_formula_vdot_symbol_of_formula_for_as_rpar = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol Camlline_for_formula_uno_son_symbol_v.lpar_es_formula_vdot_symbol_of_formula_for_as_rpar;;

let es_formula_vdot_map_for_as = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol Camlline_for_formula_uno_son_symbol_v.es_formula_vdot_map_for_as;;

let es_formula_vdot_name_for_as = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol Camlline_for_formula_uno_son_symbol_v.es_formula_vdot_name_for_as;;

let let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol Camlline_for_formula_uno_son_symbol_v.let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in;;

let for_at = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.for_at;;

let let_for_at_equal_retrieve_tag_at_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_for_at_equal_retrieve_tag_at_in;;

let let_make_soi_at_equal_function = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_make_soi_at_equal_function;;

let let_make_tag_at_equal = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_make_tag_at_equal;;

let let_name_for_at_equal = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_name_for_at_equal;;

let let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_main_symbol Camlline_for_formula_uno_main_symbol_v.let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in;;

let let_sym_at_equal_symbol_of_formula_for_at_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_sym_at_equal_symbol_of_formula_for_at_in;;

let et_formula_vdot_name = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.et_formula_vdot_name;;

let let_for_das_equal_das_vdot_make_tag_at_builder_list_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_for_das_equal_das_vdot_make_tag_at_builder_list_in;;

let let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol Camlline_for_formula_uno_top_symbol_v.let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_builder_symbol
      (Camlline_for_formula_uno_builder_symbol_v.make nam s)
  with Failure s1 ->
    match s1 with
    | "Not_Camlline_for_formula_uno_builder_symbol:Camlline_for_formula_uno_builder_symbol_v:make" ->
	begin
	  try camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_data_symbol
	      (Camlline_for_formula_uno_data_symbol_v.make nam s)
	  with Failure s2 ->
	    match s2 with
	    | "Not_Camlline_for_formula_uno_data_symbol:Camlline_for_formula_uno_data_symbol_v:make" ->
		begin
		  try camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_son_symbol
		      (Camlline_for_formula_uno_son_symbol_v.make nam s)
		  with Failure s3 ->
		    match s3 with
		    | "Not_Camlline_for_formula_uno_son_symbol:Camlline_for_formula_uno_son_symbol_v:make" ->
			begin
			  try camlline_for_formula_uno_symbol_of_camlline_for_formula_uno_top_symbol
			      (Camlline_for_formula_uno_top_symbol_v.make nam s)
			  with Failure s4 ->
			    match s4 with
			    | "Not_Camlline_for_formula_uno_top_symbol:Camlline_for_formula_uno_top_symbol_v:make" ->
				failwith "Not_a_topson_notleaf:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_notleaf"
			    | _ -> failwith s4
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;


(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_formula_uno_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_formula_uno_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_formula_uno_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 10:50:44 (UTC+0100) *)




