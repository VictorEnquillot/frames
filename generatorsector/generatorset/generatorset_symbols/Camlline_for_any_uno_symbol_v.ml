(** {3 Camlline_for_any_uno_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camlfile_symbol sym_auc ->
    Camlline_for_any_uno_camlfile_symbol_v.name sym_auc
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol sym_auc ->
    Camlline_for_any_uno_camltype_symbol_v.name sym_auc
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol sym_aus ->
    Camlline_for_any_uno_son_symbol_v.name sym_aus
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_top_symbol sym_aut ->
    Camlline_for_any_uno_top_symbol_v.name sym_aut
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camlfile_symbol sym_auc ->
  Camlline_for_any_uno_camlfile_symbol_v.string_off sym_auc
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol sym_auc ->
  Camlline_for_any_uno_camltype_symbol_v.string_off sym_auc
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol sym_aus ->
  Camlline_for_any_uno_son_symbol_v.string_off sym_aus
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_top_symbol sym_aut ->
  Camlline_for_any_uno_top_symbol_v.string_off sym_aut
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fau =
  Format.sprintf "Camlline_for_any_uno_symbol_t.%s" (String.capitalize_ascii (name sym_fau))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fau =
  Format.sprintf "%s \"%s\"" (longname sym_fau) (string_off sym_fau)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camlfile_symbol sym_auc -> sym_auc
  | sym_fau -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol"
      "Camlline_for_any_uno_camlfile_symbol"
      (name sym_fau) "check"
;;

let camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol sym_auc -> sym_auc
  | sym_fau -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol"
      "Camlline_for_any_uno_camltype_symbol"
      (name sym_fau) "check"
;;

let camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol sym_aus -> sym_aus
  | sym_fau -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol"
      "Camlline_for_any_uno_son_symbol"
      (name sym_fau) "check"
;;

let camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_top_symbol sym_aut -> sym_aut
  | sym_fau -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol"
      "Camlline_for_any_uno_top_symbol"
      (name sym_fau) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_symbol sym_fau = 
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
    Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_symbol sym_fau = 
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
    Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_symbol sym_fau = 
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
    Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_symbol sym_fau = 
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
    Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camlfile_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol = function
  | Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_camlfile_title sym_fau =
  if not (is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camlfile_symbol_v.is_camlfile_title sym_auc
    end
;;

let is_ending sym_fau =
  if not (is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camlfile_symbol_v.is_ending sym_auc
    end
;;

let is_pipe_es sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_pipe_es sym_auc
    end
;;

let is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_auc
    end
;;

let is_pipe_es_constructor_of_string sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_pipe_es_constructor_of_string sym_auc
    end
;;

let is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_auc
    end
;;

let is_type_et_any_equal sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_type_et_any_equal sym_auc
    end
;;

let is_type_et_any_equal_et sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_type_et_any_equal_et sym_auc
    end
;;

let is_type_et_any_equal_private sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_camltype_symbol_v.is_type_et_any_equal_private sym_auc
    end
;;

let is_comment_es_comment sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_comment_es_comment sym_aus
    end
;;

let is_es_any_vdot_fullname_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_es_any_vdot_fullname_ac_as sym_aus
    end
;;

let is_es_any_vdot_longname_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_es_any_vdot_longname_ac_as sym_aus
    end
;;

let is_es_any_vdot_make_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_es_any_vdot_make_ac_as sym_aus
    end
;;

let is_es_any_vdot_name_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_es_any_vdot_name_ac_as sym_aus
    end
;;

let is_es_any_vdot_string_off_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_es_any_vdot_string_off_ac_as sym_aus
    end
;;

let is_format_sprintf_fullname_ac_as_string_off_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_format_sprintf_fullname_ac_as_string_off_ac_as sym_aus
    end
;;

let is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_aus
    end
;;

let is_let_is_es_any_equal_function sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_let_is_es_any_equal_function sym_aus
    end
;;

let is_let_is_es_equal_function sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_let_is_es_equal_function sym_aus
    end
;;

let is_pipe_datastructure_ac_as_arrow sym_fau =
  if not (is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aus = camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_son_symbol_v.is_pipe_datastructure_ac_as_arrow sym_aus
    end
;;

let is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_aut
    end
;;

let is_let_fullname_ac_at_equal sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_let_fullname_ac_at_equal sym_aut
    end
;;

let is_let_longname_ac_at_equal sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_let_longname_ac_at_equal sym_aut
    end
;;

let is_let_name_ac_at_equal sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_let_name_ac_at_equal sym_aut
    end
;;

let is_let_retrieve_tag_top_equal sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_let_retrieve_tag_top_equal sym_aut
    end
;;

let is_let_string_off_ac_at_equal sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_let_string_off_ac_at_equal sym_aut
    end
;;

let is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_aut
    end
;;

let is_double_quote_current sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_double_quote_current sym_aut
    end
;;

let is_sprintf_for_any_fullname sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_sprintf_for_any_fullname sym_aut
    end
;;

let is_sprintf_for_any_longname sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_sprintf_for_any_longname sym_aut
    end
;;

let is_try_name_of_topson_bare sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_name_of_topson_bare sym_aut
    end
;;

let is_try_name_of_topson_notleaf sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_name_of_topson_notleaf sym_aut
    end
;;

let is_try_name_of_topson_ofstring sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_name_of_topson_ofstring sym_aut
    end
;;

let is_try_string_off_of_topson_bare sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_string_off_of_topson_bare sym_aut
    end
;;

let is_try_string_off_of_topson_notleaf sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_string_off_of_topson_notleaf sym_aut
    end
;;

let is_try_string_off_of_topson_ofstring sym_fau =
  if not (is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
      let sym_aut = camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau in
      Camlline_for_any_uno_top_symbol_v.is_try_string_off_of_topson_ofstring sym_aut
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_symbol sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
  Camlline_for_any_uno_camltype_symbol_v.is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
    end
;;

let is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_symbol sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
  Camlline_for_any_uno_camltype_symbol_v.is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
    end
;;

let is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_symbol sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
  Camlline_for_any_uno_camltype_symbol_v.is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
    end
;;

let is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_symbol sym_fau =
  if not (is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau)
  then false
  else
    begin
  let sym_auc = camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau in
  Camlline_for_any_uno_camltype_symbol_v.is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camlfile_symbol sym_auc = 
  Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camlfile_symbol sym_auc
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc = 
  Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol sym_aus = 
  Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol sym_aus
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol sym_aut = 
  Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_top_symbol sym_aut
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb = 
  let sym_auc = Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb in
    camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn = 
  let sym_auc = Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn in
    camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso = 
  let sym_auc = Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso in
    camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc
;;

let camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct = 
  let sym_auc = Camlline_for_any_uno_camltype_symbol_v.camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct in
    camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let camlfile_title = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camlfile_symbol Camlline_for_any_uno_camlfile_symbol_v.camlfile_title;;

let ending = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camlfile_symbol Camlline_for_any_uno_camlfile_symbol_v.ending;;

let pipe_es = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.pipe_es;;

let pipe_es_any_constructor_of_es_any_tdot_es_any = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.pipe_es_any_constructor_of_es_any_tdot_es_any;;

let pipe_es_constructor_of_string = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.pipe_es_constructor_of_string;;

let pipe_et_any_constructor_of_et_any_tdot_et_any = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.pipe_et_any_constructor_of_et_any_tdot_et_any;;

let type_et_any_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.type_et_any_equal;;

let type_et_any_equal_et = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.type_et_any_equal_et;;

let type_et_any_equal_private = camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol Camlline_for_any_uno_camltype_symbol_v.type_et_any_equal_private;;

let comment_es_comment = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.comment_es_comment;;

let es_any_vdot_fullname_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.es_any_vdot_fullname_ac_as;;

let es_any_vdot_longname_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.es_any_vdot_longname_ac_as;;

let es_any_vdot_make_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.es_any_vdot_make_ac_as;;

let es_any_vdot_name_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.es_any_vdot_name_ac_as;;

let es_any_vdot_string_off_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.es_any_vdot_string_off_ac_as;;

let format_sprintf_fullname_ac_as_string_off_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.format_sprintf_fullname_ac_as_string_off_ac_as;;

let format_sprintf_longname_es_tdot_string_capitalize_name_ac_as = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.format_sprintf_longname_es_tdot_string_capitalize_name_ac_as;;

let let_is_es_any_equal_function = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.let_is_es_any_equal_function;;

let let_is_es_equal_function = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.let_is_es_equal_function;;

let pipe_datastructure_ac_as_arrow = camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol Camlline_for_any_uno_son_symbol_v.pipe_datastructure_ac_as_arrow;;

let format_sprintf_doublequote_et_any_tdot_percents_doublequote = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.format_sprintf_doublequote_et_any_tdot_percents_doublequote;;

let let_fullname_ac_at_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.let_fullname_ac_at_equal;;

let let_longname_ac_at_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.let_longname_ac_at_equal;;

let let_name_ac_at_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.let_name_ac_at_equal;;

let let_retrieve_tag_top_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_ac_at_equal = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.let_string_off_ac_at_equal;;

let lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar;;

let double_quote_current = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.double_quote_current;;

let sprintf_for_any_fullname = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.sprintf_for_any_longname;;

let try_name_of_topson_bare = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_name_of_topson_bare;;

let try_name_of_topson_notleaf = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_name_of_topson_notleaf;;

let try_name_of_topson_ofstring = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_name_of_topson_ofstring;;

let try_string_off_of_topson_bare = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_string_off_of_topson_bare;;

let try_string_off_of_topson_notleaf = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_string_off_of_topson_notleaf;;

let try_string_off_of_topson_ofstring = camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol Camlline_for_any_uno_top_symbol_v.try_string_off_of_topson_ofstring;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_any_uno_symbol_of_camlline_for_any_uno_camlfile_symbol
      (Camlline_for_any_uno_camlfile_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camlfile_symbol:Camlline_for_any_uno_camlfile_symbol_v:make" ->
  try camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol
      (Camlline_for_any_uno_camltype_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camltype_symbol:Camlline_for_any_uno_camltype_symbol_v:make" ->
  try camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol
      (Camlline_for_any_uno_son_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_son_symbol:Camlline_for_any_uno_son_symbol_v:make" ->
  try camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol
      (Camlline_for_any_uno_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_top_symbol:Camlline_for_any_uno_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_symbol:Camlline_for_any_uno_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno implementation_for_symbol symbol at 9:15 6 May 2013. *)



