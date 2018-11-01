(** {3 Camlparagraph_for_symbol_let_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_symbol_let_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol sym_sla ->
    Camlparagraph_for_symbol_let_argument_symbol_v.name sym_sla
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol sym_sla ->
    Camlparagraph_for_symbol_let_abbreviate_symbol_v.name sym_sla
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol sym_slm ->
    Camlparagraph_for_symbol_let_match_symbol_v.name sym_slm
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol sym_slm ->
    Camlparagraph_for_symbol_let_mixed_symbol_v.name sym_slm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol sym_sla ->
  Camlparagraph_for_symbol_let_argument_symbol_v.string_off sym_sla
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol sym_sla ->
  Camlparagraph_for_symbol_let_abbreviate_symbol_v.string_off sym_sla
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol sym_slm ->
  Camlparagraph_for_symbol_let_match_symbol_v.string_off sym_slm
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol sym_slm ->
  Camlparagraph_for_symbol_let_mixed_symbol_v.string_off sym_slm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsl =
  Format.sprintf "Camlparagraph_for_symbol_let_symbol_t.%s" (String.capitalize_ascii (name sym_fsl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsl =
  Format.sprintf "%s \"%s\"" (longname sym_fsl) (string_off sym_fsl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol sym_sla -> sym_sla
  | sym_fsl -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol"
      "Camlparagraph_for_symbol_let_argument_symbol"
      (name sym_fsl) "check"
;;

let camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol sym_sla -> sym_sla
  | sym_fsl -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol"
      "Camlparagraph_for_symbol_let_abbreviate_symbol"
      (name sym_fsl) "check"
;;

let camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol sym_slm -> sym_slm
  | sym_fsl -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol"
      "Camlparagraph_for_symbol_let_match_symbol"
      (name sym_fsl) "check"
;;

let camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol sym_slm -> sym_slm
  | sym_fsl -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol"
      "Camlparagraph_for_symbol_let_mixed_symbol"
      (name sym_fsl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol = function
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_documentation_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_documentation_for_symbol sym_sla
    end
;;

let is_let_es_symbol_off_et_symbol_datastructure_argument sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_es_symbol_off_et_symbol_datastructure_argument sym_sla
    end
;;

let is_let_fullname_argument_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_fullname_argument_for_symbol sym_sla
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol sym_sla
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol sym_sla
    end
;;

let is_let_is_grandson_bare sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_is_grandson_bare sym_sla
    end
;;

let is_let_is_grandson_ofstring sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_is_grandson_ofstring sym_sla
    end
;;

let is_let_longname_argument_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_longname_argument_for_symbol sym_sla
    end
;;

let is_let_make_argument_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_make_argument_for_symbol sym_sla
    end
;;

let is_let_make_nam_s_equal_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_make_nam_s_equal_for_symbol sym_sla
    end
;;

let is_let_make_of_topson_bare_nam_equal_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_make_of_topson_bare_nam_equal_for_symbol sym_sla
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal_for_symbol sym_sla
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal_for_symbol sym_sla
    end
;;

let is_let_name_argument_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_name_argument_for_symbol sym_sla
    end
;;

let is_let_string_off_argument_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_string_off_argument_for_symbol sym_sla
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol sym_sla
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_argument_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol sym_sla
    end
;;

let is_let_abbreviate_inancestorself sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_inancestorself sym_sla
    end
;;

let is_let_abbreviate_topson_basicnullary sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_topson_basicnullary sym_sla
    end
;;

let is_let_abbreviate_topson_bare sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_topson_bare sym_sla
    end
;;

let is_let_abbreviate_topson_ofstring sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_topson_ofstring sym_sla
    end
;;

let is_let_abbreviate_grandson_basicnullary sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_grandson_basicnullary sym_sla
    end
;;

let is_let_abbreviate_grandson_bare sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_grandson_bare sym_sla
    end
;;

let is_let_abbreviate_grandson_ofstring sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_grandson_ofstring sym_sla
    end
;;

let is_let_abbreviate_inself sym_fsl =
  if not (is_camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_sla = camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_abbreviate_symbol_v.is_let_abbreviate_inself sym_sla
    end
;;

let is_let_is_onlyson_bare sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_onlyson_bare sym_slm
    end
;;

let is_let_is_onlyson_ofstring sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_onlyson_ofstring sym_slm
    end
;;

let is_let_is_onlyson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_onlyson_notleaf_symbol_off_top_symbol sym_slm
    end
;;

let is_let_is_topson_bare sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_topson_bare sym_slm
    end
;;

let is_let_is_topson_ofstring sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_topson_ofstring sym_slm
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol sym_slm
    end
;;

let is_let_longname_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_longname_equal_function_for_symbol sym_slm
    end
;;

let is_let_make_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_make_equal_function_for_symbol sym_slm
    end
;;

let is_let_name_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_name_equal_function_for_symbol sym_slm
    end
;;

let is_let_name_of_topson_bare_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_name_of_topson_bare_equal_function_for_symbol sym_slm
    end
;;

let is_let_name_of_topson_notleaf_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_name_of_topson_notleaf_equal_function_for_symbol sym_slm
    end
;;

let is_let_name_of_topson_ofstring_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_name_of_topson_ofstring_equal_function_for_symbol sym_slm
    end
;;

let is_let_onlyson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_onlyson_notleaf_symbol_off_top_symbol sym_slm
    end
;;

let is_let_print_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_print_function_for_symbol sym_slm
    end
;;

let is_let_string_off_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_string_off_equal_function_for_symbol sym_slm
    end
;;

let is_let_string_off_of_topson_bare_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_string_off_of_topson_bare_equal_function_for_symbol sym_slm
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_string_off_of_topson_notleaf_equal_function_for_symbol sym_slm
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_string_off_of_topson_ofstring_equal_function_for_symbol sym_slm
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_match_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol sym_slm
    end
;;

let is_let_fullname_argument_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_mixed_symbol_v.is_let_fullname_argument_equal_function_for_symbol sym_slm
    end
;;

let is_let_make_argument_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_mixed_symbol_v.is_let_make_argument_equal_function_for_symbol sym_slm
    end
;;

let is_let_name_argument_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_mixed_symbol_v.is_let_name_argument_equal_function_for_symbol sym_slm
    end
;;

let is_let_symbol_list_argument_equal_function_for_symbol sym_fsl =
  if not (is_camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl)
  then false
  else
    begin
      let sym_slm = camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_for_symbol_let_symbol sym_fsl in
      Camlparagraph_for_symbol_let_mixed_symbol_v.is_let_symbol_list_argument_equal_function_for_symbol sym_slm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_sla = 
  Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol sym_sla
;;

let camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol sym_sla = 
  Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol sym_sla
;;

let camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol sym_slm = 
  Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol sym_slm
;;

let camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol sym_slm = 
  Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol sym_slm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_documentation_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_documentation_for_symbol;;

let let_es_symbol_off_et_symbol_datastructure_argument = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_es_symbol_off_et_symbol_datastructure_argument;;

let let_fullname_argument_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_fullname_argument_for_symbol;;

let let_grandson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_bare = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_is_grandson_bare;;

let let_is_grandson_ofstring = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_is_grandson_ofstring;;

let let_longname_argument_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_longname_argument_for_symbol;;

let let_make_argument_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_make_argument_for_symbol;;

let let_make_nam_s_equal_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_make_nam_s_equal_for_symbol;;

let let_make_of_topson_bare_nam_equal_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_bare_nam_equal_for_symbol;;

let let_make_of_topson_ofstring_nam_s_equal_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_ofstring_nam_s_equal_for_symbol;;

let let_make_of_topson_notleaf_nam_s_equal_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_notleaf_nam_s_equal_for_symbol;;

let let_name_argument_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_name_argument_for_symbol;;

let let_string_off_argument_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_string_off_argument_for_symbol;;

let let_top_symbol_of_grandson_notleaf_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_top_symbol_of_grandson_notleaf_symbol;;

let let_top_symbol_of_topson_notleaf_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol Camlparagraph_for_symbol_let_argument_symbol_v.let_top_symbol_of_topson_notleaf_symbol;;

let let_abbreviate_inancestorself = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_inancestorself;;

let let_abbreviate_topson_basicnullary = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_topson_basicnullary;;

let let_abbreviate_topson_bare = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_topson_ofstring;;

let let_abbreviate_grandson_basicnullary = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_grandson_basicnullary;;

let let_abbreviate_grandson_bare = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_grandson_ofstring;;

let let_abbreviate_inself = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_inself;;

let let_is_onlyson_bare = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_onlyson_bare;;

let let_is_onlyson_ofstring = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_onlyson_ofstring;;

let let_is_onlyson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_onlyson_notleaf_symbol_off_top_symbol;;

let let_is_topson_bare = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol;;

let let_longname_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_longname_equal_function_for_symbol;;

let let_make_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_make_equal_function_for_symbol;;

let let_name_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_name_equal_function_for_symbol;;

let let_name_of_topson_bare_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_name_of_topson_bare_equal_function_for_symbol;;

let let_name_of_topson_notleaf_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_name_of_topson_notleaf_equal_function_for_symbol;;

let let_name_of_topson_ofstring_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_name_of_topson_ofstring_equal_function_for_symbol;;

let let_onlyson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_onlyson_notleaf_symbol_off_top_symbol;;

let let_print_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_print_function_for_symbol;;

let let_string_off_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_string_off_equal_function_for_symbol;;

let let_string_off_of_topson_bare_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_string_off_of_topson_bare_equal_function_for_symbol;;

let let_string_off_of_topson_notleaf_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_string_off_of_topson_notleaf_equal_function_for_symbol;;

let let_string_off_of_topson_ofstring_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_string_off_of_topson_ofstring_equal_function_for_symbol;;

let let_topson_notleaf_symbol_off_top_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol Camlparagraph_for_symbol_let_match_symbol_v.let_topson_notleaf_symbol_off_top_symbol;;

let let_fullname_argument_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol Camlparagraph_for_symbol_let_mixed_symbol_v.let_fullname_argument_equal_function_for_symbol;;

let let_make_argument_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol Camlparagraph_for_symbol_let_mixed_symbol_v.let_make_argument_equal_function_for_symbol;;

let let_name_argument_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol Camlparagraph_for_symbol_let_mixed_symbol_v.let_name_argument_equal_function_for_symbol;;

let let_symbol_list_argument_equal_function_for_symbol = camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol Camlparagraph_for_symbol_let_mixed_symbol_v.let_symbol_list_argument_equal_function_for_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_argument_symbol
      (Camlparagraph_for_symbol_let_argument_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_symbol_let_argument_symbol:Camlparagraph_for_symbol_let_argument_symbol_v:make" ->
  try camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol
      (Camlparagraph_for_symbol_let_abbreviate_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_symbol_let_abbreviate_symbol:Camlparagraph_for_symbol_let_abbreviate_symbol_v:make" ->
  try camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_match_symbol
      (Camlparagraph_for_symbol_let_match_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_symbol_let_match_symbol:Camlparagraph_for_symbol_let_match_symbol_v:make" ->
  try camlparagraph_for_symbol_let_symbol_of_camlparagraph_for_symbol_let_mixed_symbol
      (Camlparagraph_for_symbol_let_mixed_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_symbol_let_mixed_symbol:Camlparagraph_for_symbol_let_mixed_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_symbol_let_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_symbol_let subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_symbol_let_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_symbol_let_symbol:Camlparagraph_for_symbol_let_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_symbol_let implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



