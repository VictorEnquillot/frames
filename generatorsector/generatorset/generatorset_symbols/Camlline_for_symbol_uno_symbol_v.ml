(** {3 Camlline_for_symbol_uno_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_symbol_uno_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol sym_sub ->
    Camlline_for_symbol_uno_builder_symbol_v.name sym_sub
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol sym_sut ->
    Camlline_for_symbol_uno_top_symbol_v.name sym_sut
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol sym_sus ->
    Camlline_for_symbol_uno_son_symbol_v.name sym_sus
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol sym_suc ->
    Camlline_for_symbol_uno_current_symbol_v.name sym_suc
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol sym_sub ->
  Camlline_for_symbol_uno_builder_symbol_v.string_off sym_sub
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol sym_sut ->
  Camlline_for_symbol_uno_top_symbol_v.string_off sym_sut
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol sym_sus ->
  Camlline_for_symbol_uno_son_symbol_v.string_off sym_sus
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol sym_suc ->
  Camlline_for_symbol_uno_current_symbol_v.string_off sym_suc
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsu =
  Format.sprintf "Camlline_for_symbol_uno_symbol_t.%s" (String.capitalize (name sym_fsu))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsu =
  Format.sprintf "%s \"%s\"" (longname sym_fsu) (string_off sym_fsu)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol sym_sub -> sym_sub
  | sym_fsu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol"
      "Camlline_for_symbol_uno_builder_symbol"
      (name sym_fsu) "check"
;;

let camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol sym_sut -> sym_sut
  | sym_fsu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol"
      "Camlline_for_symbol_uno_top_symbol"
      (name sym_fsu) "check"
;;

let camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol sym_sus -> sym_sus
  | sym_fsu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol"
      "Camlline_for_symbol_uno_son_symbol"
      (name sym_fsu) "check"
;;

let camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol sym_suc -> sym_suc
  | sym_fsu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol"
      "Camlline_for_symbol_uno_current_symbol"
      (name sym_fsu) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_symbol sym_fsu = 
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
    Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
;;

let camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_symbol sym_fsu = 
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
    Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
;;

let camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_symbol sym_fsu = 
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
    Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol = function
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_fsu =
  if not (is_camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sub = camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_builder_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_sub
    end
;;

let is_et_symbol_vdot_name_sym_at sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_et_symbol_vdot_name_sym_at sym_sut
    end
;;

let is_et_symbol_vdot_string_off_sym_at sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_et_symbol_vdot_string_off_sym_at sym_sut
    end
;;

let is_let_et_symbol_equal_et_symbol_tdot_et sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_et_symbol_equal_et_symbol_tdot_et sym_sut
    end
;;

let is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_sut
    end
;;

let is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_sut
    end
;;

let is_failwith_not_a_et_symbol_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_et_symbol_make sym_sut
    end
;;

let is_failwith_not_a_et_symbol_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_et_symbol_name sym_sut
    end
;;

let is_failwith_not_a_et_symbol_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_et_symbol_string_off sym_sut
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_bare_et_symbol_make sym_sut
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_bare_et_symbol_name sym_sut
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_bare_et_symbol_string_off sym_sut
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_make sym_sut
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_name sym_sut
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_sut
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_make sym_sut
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_name sym_sut
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_sut
    end
;;

let is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_sut
    end
;;

let is_let_underscore_print_error_make_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_underscore_print_error_make_et_of_string_of_string sym_sut
    end
;;

let is_let_underscore_print_error_name_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_underscore_print_error_name_et_of_string_of_string sym_sut
    end
;;

let is_let_underscore_print_error_string_off_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_let_underscore_print_error_string_off_et_of_string_of_string sym_sut
    end
;;

let is_print_fatal_error_make_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_print_fatal_error_make_et_of_string_of_string sym_sut
    end
;;

let is_print_fatal_error_name_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_print_fatal_error_name_et_of_string_of_string sym_sut
    end
;;

let is_print_fatal_error_string_off_et_of_string_of_string sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_print_fatal_error_string_off_et_of_string_of_string sym_sut
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_sut
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_sut
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_sut
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_sut
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_sut
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_sut
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_sut
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_sut
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_sut
    end
;;

let is_match_sym_at_with sym_fsu =
  if not (is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sut = camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_top_symbol_v.is_match_sym_at_with sym_sut
    end
;;

let is_pipe_esstring_arrow_es sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_pipe_esstring_arrow_es sym_sus
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_pipe_esstring_arrow_es_sarg sym_sus
    end
;;

let is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_sus
    end
;;

let is_failwith_not_es_symbol sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_failwith_not_es_symbol sym_sus
    end
;;

let is_with_failure_not_es_symbol_arrow sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_with_failure_not_es_symbol_arrow sym_sus
    end
;;

let is_es_symbol_vdot_string_off_sym_as sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_es_symbol_vdot_string_off_sym_as sym_sus
    end
;;

let is_es_symbol_vdot_name_sym_as sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_son_symbol_v.is_es_symbol_vdot_name_sym_as sym_sus
    end
;;

let is_pipe_string_arrow_ec sym_fsu =
  if not (is_camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
      let sym_suc = camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
      Camlline_for_symbol_uno_current_symbol_v.is_pipe_string_arrow_ec sym_suc
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_symbol sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
  Camlline_for_symbol_uno_son_symbol_v.is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
    end
;;

let is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_symbol sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
  Camlline_for_symbol_uno_son_symbol_v.is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
    end
;;

let is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_symbol sym_fsu =
  if not (is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu)
  then false
  else
    begin
  let sym_sus = camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu in
  Camlline_for_symbol_uno_son_symbol_v.is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_builder_symbol sym_sub = 
  Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol sym_sub
;;

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol sym_sut = 
  Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol sym_sut
;;

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus = 
  Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol sym_sus
;;

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_current_symbol sym_suc = 
  Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol sym_suc
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb = 
  let sym_sus = Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb in
    camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus
;;

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso = 
  let sym_sus = Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso in
    camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus
;;

let camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn = 
  let sym_sus = Camlline_for_symbol_uno_son_symbol_v.camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn in
    camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_builder_symbol Camlline_for_symbol_uno_builder_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let et_symbol_vdot_name_sym_at = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.et_symbol_vdot_name_sym_at;;

let et_symbol_vdot_string_off_sym_at = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.et_symbol_vdot_string_off_sym_at;;

let let_et_symbol_equal_et_symbol_tdot_et = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_et_symbol_equal_et_symbol_tdot_et;;

let let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in;;

let pipe_et_symbol_tdot_et_symbol_arrow_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.pipe_et_symbol_tdot_et_symbol_arrow_string;;

let failwith_not_a_et_symbol_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_make;;

let failwith_not_a_et_symbol_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_name;;

let failwith_not_a_et_symbol_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_string_off;;

let failwith_not_a_topson_bare_et_symbol_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_make;;

let failwith_not_a_topson_bare_et_symbol_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_name;;

let failwith_not_a_topson_bare_et_symbol_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_string_off;;

let failwith_not_a_topson_notleaf_et_symbol_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_make;;

let failwith_not_a_topson_notleaf_et_symbol_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_name;;

let failwith_not_a_topson_notleaf_et_symbol_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_string_off;;

let failwith_not_a_topson_ofstring_et_symbol_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_make;;

let failwith_not_a_topson_ofstring_et_symbol_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_name;;

let failwith_not_a_topson_ofstring_et_symbol_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_string_off;;

let let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in;;

let let_underscore_print_error_make_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_make_et_of_string_of_string;;

let let_underscore_print_error_name_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_name_et_of_string_of_string;;

let let_underscore_print_error_string_off_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_string_off_et_of_string_of_string;;

let print_fatal_error_make_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_make_et_of_string_of_string;;

let print_fatal_error_name_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_name_et_of_string_of_string;;

let print_fatal_error_string_off_et_of_string_of_string = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_string_off_et_of_string_of_string;;

let with_failure_not_a_topson_bare_et_symbol_arrow_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_make;;

let with_failure_not_a_topson_bare_et_symbol_arrow_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_name;;

let with_failure_not_a_topson_bare_et_symbol_arrow_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_make;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_name;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_make = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_make;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_name = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_name;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off;;

let match_sym_at_with = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol Camlline_for_symbol_uno_top_symbol_v.match_sym_at_with;;

let pipe_esstring_arrow_es = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.pipe_esstring_arrow_es_sarg;;

let lpar_es_symbol_vdot_make_of_string_of_string_rpar = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;;

let failwith_not_es_symbol = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.failwith_not_es_symbol;;

let with_failure_not_es_symbol_arrow = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.with_failure_not_es_symbol_arrow;;

let es_symbol_vdot_string_off_sym_as = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.es_symbol_vdot_string_off_sym_as;;

let es_symbol_vdot_name_sym_as = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol Camlline_for_symbol_uno_son_symbol_v.es_symbol_vdot_name_sym_as;;

let pipe_string_arrow_ec = camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_current_symbol Camlline_for_symbol_uno_current_symbol_v.pipe_string_arrow_ec;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_builder_symbol
      (Camlline_for_symbol_uno_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_builder_symbol:Camlline_for_symbol_uno_builder_symbol_v:make" ->
  try camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol
      (Camlline_for_symbol_uno_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_top_symbol:Camlline_for_symbol_uno_top_symbol_v:make" ->
  try camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol
      (Camlline_for_symbol_uno_son_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_son_symbol:Camlline_for_symbol_uno_son_symbol_v:make" ->
  try camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_current_symbol
      (Camlline_for_symbol_uno_current_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_current_symbol:Camlline_for_symbol_uno_current_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_symbol_uno_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_symbol_uno subtype" nam s)
      "it does not exists"
      "Check file camlline_for_symbol_uno_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_symbol_uno_symbol:Camlline_for_symbol_uno_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_symbol_uno implementation_for_symbol symbol at 9:15 6 May 2013. *)



