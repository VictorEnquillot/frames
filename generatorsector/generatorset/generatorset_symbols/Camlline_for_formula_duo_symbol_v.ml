(** {3 Camlline_for_formula_duo_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_duo_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol sym_dbd ->
    Camlline_for_formula_duo_builder_data_symbol_v.name sym_dbd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol sym_ddb ->
    Camlline_for_formula_duo_localset_builder_symbol_v.name sym_ddb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol sym_ddb ->
    Camlline_for_formula_duo_localset_data_symbol_v.name sym_ddb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol sym_dmb ->
    Camlline_for_formula_duo_main_builder_symbol_v.name sym_dmb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol sym_dmd ->
    Camlline_for_formula_duo_main_data_symbol_v.name sym_dmd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol sym_dsb ->
    Camlline_for_formula_duo_son_builder_symbol_v.name sym_dsb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol sym_dsd ->
    Camlline_for_formula_duo_son_data_symbol_v.name sym_dsd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol sym_dsm ->
    Camlline_for_formula_duo_son_main_symbol_v.name sym_dsm
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol sym_dst ->
    Camlline_for_formula_duo_son_top_symbol_v.name sym_dst
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol sym_dtb ->
    Camlline_for_formula_duo_top_builder_symbol_v.name sym_dtb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol sym_dtd ->
    Camlline_for_formula_duo_top_data_symbol_v.name sym_dtd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol sym_dtm ->
    Camlline_for_formula_duo_top_main_symbol_v.name sym_dtm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol sym_dbd ->
  Camlline_for_formula_duo_builder_data_symbol_v.string_off sym_dbd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol sym_ddb ->
  Camlline_for_formula_duo_localset_builder_symbol_v.string_off sym_ddb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol sym_ddb ->
  Camlline_for_formula_duo_localset_data_symbol_v.string_off sym_ddb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol sym_dmb ->
  Camlline_for_formula_duo_main_builder_symbol_v.string_off sym_dmb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol sym_dmd ->
  Camlline_for_formula_duo_main_data_symbol_v.string_off sym_dmd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol sym_dsb ->
  Camlline_for_formula_duo_son_builder_symbol_v.string_off sym_dsb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol sym_dsd ->
  Camlline_for_formula_duo_son_data_symbol_v.string_off sym_dsd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol sym_dsm ->
  Camlline_for_formula_duo_son_main_symbol_v.string_off sym_dsm
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol sym_dst ->
  Camlline_for_formula_duo_son_top_symbol_v.string_off sym_dst
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol sym_dtb ->
  Camlline_for_formula_duo_top_builder_symbol_v.string_off sym_dtb
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol sym_dtd ->
  Camlline_for_formula_duo_top_data_symbol_v.string_off sym_dtd
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol sym_dtm ->
  Camlline_for_formula_duo_top_main_symbol_v.string_off sym_dtm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ffd =
  Format.sprintf "Camlline_for_formula_duo_symbol_t.%s" (String.capitalize (name sym_ffd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ffd =
  Format.sprintf "%s \"%s\"" (longname sym_ffd) (string_off sym_ffd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol sym_dbd -> sym_dbd
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_builder_data_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol sym_ddb -> sym_ddb
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_localset_builder_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol sym_ddb -> sym_ddb
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_localset_data_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol sym_dmb -> sym_dmb
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_main_builder_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol sym_dmd -> sym_dmd
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_main_data_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol sym_dsb -> sym_dsb
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_son_builder_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol sym_dsd -> sym_dsd
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_son_data_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol sym_dsm -> sym_dsm
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_son_main_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol sym_dst -> sym_dst
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_son_top_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol sym_dtb -> sym_dtb
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_top_builder_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol sym_dtd -> sym_dtd
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_top_data_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol sym_dtm -> sym_dtm
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol"
      "Camlline_for_formula_duo_top_main_symbol"
      (name sym_ffd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol = function
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_ffd =
  if not (is_camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dbd = camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_builder_data_symbol_v.is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_dbd
    end
;;

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_ffd =
  if not (is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_ddb = camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_localset_builder_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_ddb
    end
;;

let is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_ffd =
  if not (is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_ddb = camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_localset_builder_symbol_v.is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_ddb
    end
;;

let is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_ffd =
  if not (is_camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dmb = camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_main_builder_symbol_v.is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_dmb
    end
;;

let is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_ffd =
  if not (is_camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dmd = camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_main_data_symbol_v.is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_dmd
    end
;;

let is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_ffd =
  if not (is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsb = camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_builder_symbol_v.is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_dsb
    end
;;

let is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_ffd =
  if not (is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsb = camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_builder_symbol_v.is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_dsb
    end
;;

let is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_ffd =
  if not (is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsb = camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_builder_symbol_v.is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_dsb
    end
;;

let is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_ffd =
  if not (is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsd = camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_data_symbol_v.is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_dsd
    end
;;

let is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_ffd =
  if not (is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsd = camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_data_symbol_v.is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_dsd
    end
;;

let is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_ffd =
  if not (is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsd = camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_data_symbol_v.is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_dsd
    end
;;

let is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_ffd =
  if not (is_camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dsm = camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_main_symbol_v.is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_dsm
    end
;;

let is_et_formula_tdot_es_formula sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_et_formula_tdot_es_formula sym_dst
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_dst
    end
;;

let is_pipe_et_formula_tdot_es_underscore_arrow sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_pipe_et_formula_tdot_es_underscore_arrow sym_dst
    end
;;

let is_et_formula_tdot_es_for_das sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_et_formula_tdot_es_for_das sym_dst
    end
;;

let is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_dst
    end
;;

let is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_ffd =
  if not (is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dst = camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_son_top_symbol_v.is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_dst
    end
;;

let is_eb_tag_list_off_et_formula_for_at sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_eb_tag_list_off_et_formula_for_at sym_dtb
    end
;;

let is_let_eb_tag_list_off_et_formula_equal_function sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_eb_tag_list_off_et_formula_equal_function sym_dtb
    end
;;

let is_let_eb_tag_list_off_et_tag_tag_at_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_eb_tag_list_off_et_tag_tag_at_equal sym_dtb
    end
;;

let is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_dtb
    end
;;

let is_let_iter_f_of_tag_ab_for_at_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_iter_f_of_tag_ab_for_at_equal sym_dtb
    end
;;

let is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_dtb
    end
;;

let is_let_map_f_of_tag_ab_for_at_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_map_f_of_tag_ab_for_at_equal sym_dtb
    end
;;

let is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_dtb
    end
;;

let is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_dtb
    end
;;

let is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_ffd =
  if not (is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtb = camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_builder_symbol_v.is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_dtb
    end
;;

let is_let_ed_tag_list_off_et_formula_equal_function sym_ffd =
  if not (is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtd = camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_data_symbol_v.is_let_ed_tag_list_off_et_formula_equal_function sym_dtd
    end
;;

let is_let_ed_tag_list_off_et_formula_for_at_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtd = camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_data_symbol_v.is_let_ed_tag_list_off_et_formula_for_at_equal sym_dtd
    end
;;

let is_let_ed_tag_list_off_et_tag_tag_at_equal sym_ffd =
  if not (is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtd = camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_data_symbol_v.is_let_ed_tag_list_off_et_tag_tag_at_equal sym_dtd
    end
;;

let is_ed_tag_list_off_et_formula_for_at sym_ffd =
  if not (is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtd = camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_data_symbol_v.is_ed_tag_list_off_et_formula_for_at sym_dtd
    end
;;

let is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_ffd =
  if not (is_camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd)
  then false
  else
    begin
      let sym_dtm = camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_duo_symbol sym_ffd in
      Camlline_for_formula_duo_top_main_symbol_v.is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_dtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_dbd = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol sym_dbd
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ddb = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol sym_ddb
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_data_symbol sym_ddb = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol sym_ddb
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_dmb = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol sym_dmb
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_data_symbol sym_dmd = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol sym_dmd
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_dsb = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol sym_dsb
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol sym_dsd = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol sym_dsd
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_main_symbol sym_dsm = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol sym_dsm
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol sym_dst = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol sym_dst
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_dtb = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol sym_dtb
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol sym_dtd = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol sym_dtd
;;

let camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_main_symbol sym_dtm = 
  Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol sym_dtm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_builder_data_symbol Camlline_for_formula_duo_builder_data_symbol_v.eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in;;

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_builder_symbol Camlline_for_formula_duo_localset_builder_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_builder_symbol Camlline_for_formula_duo_localset_builder_symbol_v.list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon;;

let one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_builder_symbol Camlline_for_formula_duo_main_builder_symbol_v.one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in;;

let one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_data_symbol Camlline_for_formula_duo_main_data_symbol_v.one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in;;

let es_formula_vdot_eb_tag_list_off_es_formula_for_as = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol Camlline_for_formula_duo_son_builder_symbol_v.es_formula_vdot_eb_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_eb_tag_tdot_eb_tag_list = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol Camlline_for_formula_duo_son_builder_symbol_v.pipe_es_constructor_of_eb_tag_tdot_eb_tag_list;;

let pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol Camlline_for_formula_duo_son_builder_symbol_v.pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list;;

let es_formula_vdot_ed_tag_list_off_es_formula_for_as = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol Camlline_for_formula_duo_son_data_symbol_v.es_formula_vdot_ed_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_ed_tag_tdot_ed_tag_list = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol Camlline_for_formula_duo_son_data_symbol_v.pipe_es_constructor_of_ed_tag_tdot_ed_tag_list;;

let pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol Camlline_for_formula_duo_son_data_symbol_v.pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list;;

let lpar_es_formula_vdot_make_sym_as_soi_am_rpar = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_main_symbol Camlline_for_formula_duo_son_main_symbol_v.lpar_es_formula_vdot_make_sym_as_soi_am_rpar;;

let et_formula_tdot_es_formula = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.et_formula_tdot_es_formula;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow;;

let pipe_et_formula_tdot_es_underscore_arrow = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.pipe_et_formula_tdot_es_underscore_arrow;;

let et_formula_tdot_es_for_das = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.et_formula_tdot_es_for_das;;

let let_nam_as_equal_es_tag_vdot_name_for_at_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.let_nam_as_equal_es_tag_vdot_name_for_at_in;;

let let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol Camlline_for_formula_duo_son_top_symbol_v.let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in;;

let eb_tag_list_off_et_formula_for_at = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.eb_tag_list_off_et_formula_for_at;;

let let_eb_tag_list_off_et_formula_equal_function = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_eb_tag_list_off_et_formula_equal_function;;

let let_eb_tag_list_off_et_tag_tag_at_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_eb_tag_list_off_et_tag_tag_at_equal;;

let let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_iter_f_of_tag_ab_for_at_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_iter_f_of_tag_ab_for_at_equal;;

let let_map2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_map2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_map_f_of_tag_ab_for_at_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_map_f_of_tag_ab_for_at_equal;;

let let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in;;

let let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in;;

let let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in;;

let let_ed_tag_list_off_et_formula_equal_function = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol Camlline_for_formula_duo_top_data_symbol_v.let_ed_tag_list_off_et_formula_equal_function;;

let let_ed_tag_list_off_et_formula_for_at_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol Camlline_for_formula_duo_top_data_symbol_v.let_ed_tag_list_off_et_formula_for_at_equal;;

let let_ed_tag_list_off_et_tag_tag_at_equal = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol Camlline_for_formula_duo_top_data_symbol_v.let_ed_tag_list_off_et_tag_tag_at_equal;;

let ed_tag_list_off_et_formula_for_at = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol Camlline_for_formula_duo_top_data_symbol_v.ed_tag_list_off_et_formula_for_at;;

let let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in = camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_main_symbol Camlline_for_formula_duo_top_main_symbol_v.let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_builder_data_symbol
      (Camlline_for_formula_duo_builder_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_builder_data_symbol:Camlline_for_formula_duo_builder_data_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_localset_builder_symbol
      (Camlline_for_formula_duo_localset_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_localset_builder_symbol:Camlline_for_formula_duo_localset_builder_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_builder_symbol
      (Camlline_for_formula_duo_main_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_main_builder_symbol:Camlline_for_formula_duo_main_builder_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_main_data_symbol
      (Camlline_for_formula_duo_main_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_main_data_symbol:Camlline_for_formula_duo_main_data_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_builder_symbol
      (Camlline_for_formula_duo_son_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_son_builder_symbol:Camlline_for_formula_duo_son_builder_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_data_symbol
      (Camlline_for_formula_duo_son_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_son_data_symbol:Camlline_for_formula_duo_son_data_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_main_symbol
      (Camlline_for_formula_duo_son_main_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_son_main_symbol:Camlline_for_formula_duo_son_main_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_son_top_symbol
      (Camlline_for_formula_duo_son_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_son_top_symbol:Camlline_for_formula_duo_son_top_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_builder_symbol
      (Camlline_for_formula_duo_top_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_top_builder_symbol:Camlline_for_formula_duo_top_builder_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_data_symbol
      (Camlline_for_formula_duo_top_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_top_data_symbol:Camlline_for_formula_duo_top_data_symbol_v:make" ->
  try camlline_for_formula_duo_symbol_of_camlline_for_formula_duo_top_main_symbol
      (Camlline_for_formula_duo_top_main_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_duo_top_main_symbol:Camlline_for_formula_duo_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_duo_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula_duo subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_duo_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_duo_symbol:Camlline_for_formula_duo_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_formula_duo implementation_for_symbol symbol at 9:15 6 May 2013. *)



