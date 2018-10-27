(** {3 Camlline_for_any_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_fad ->
    Camlline_for_any_duo_symbol_v.name sym_fad
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_fau ->
    Camlline_for_any_uno_symbol_v.name sym_fau
  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_fat ->
    Camlline_for_any_trio_symbol_v.name sym_fat
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_fad ->
  Camlline_for_any_duo_symbol_v.string_off sym_fad
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_fau ->
  Camlline_for_any_uno_symbol_v.string_off sym_fau
  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_fat ->
  Camlline_for_any_trio_symbol_v.string_off sym_fat
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cfa =
  Format.sprintf "Camlline_for_any_symbol_t.%s" (String.capitalize (name sym_cfa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cfa =
  Format.sprintf "%s \"%s\"" (longname sym_cfa) (string_off sym_cfa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_any_duo_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_fad -> sym_fad
  | sym_cfa -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_symbol_off_camlline_for_any_symbol"
      "Camlline_for_any_duo_symbol"
      (name sym_cfa) "check"
;;

let camlline_for_any_uno_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_fau -> sym_fau
  | sym_cfa -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_symbol_off_camlline_for_any_symbol"
      "Camlline_for_any_uno_symbol"
      (name sym_cfa) "check"
;;

let camlline_for_any_trio_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_fat -> sym_fat
  | sym_cfa -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_trio_symbol_off_camlline_for_any_symbol"
      "Camlline_for_any_trio_symbol"
      (name sym_cfa) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_any_duo_current_son_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_current_top_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_duo_top_main_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_duo_symbol_v.camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_camltype_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_son_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_uno_top_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_uno_symbol_v.camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_symbol sym_cfa = 
  let sym_fat = camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa in
    Camlline_for_any_trio_symbol_v.camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_trio_symbol_off_camlline_for_any_symbol = function
  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_es_any_vdot_ec_any_off_es_any_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_es_any_vdot_ec_any_off_es_any_ac_as sym_fad
    end
;;

let is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_fad
    end
;;

let is_es_any_vdot_is_ec_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_es_any_vdot_is_ec_ac_as sym_fad
    end
;;

let is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_fad
    end
;;

let is_let_et_any_of_ec_any_ac_ac_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_et_any_of_ec_any_ac_ac_equal sym_fad
    end
;;

let is_let_ec_any_off_et_any_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_ec_any_off_et_any_ac_at_equal sym_fad
    end
;;

let is_let_is_ec_any_off_et_any_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_is_ec_any_off_et_any_ac_at_equal sym_fad
    end
;;

let is_let_is_ec_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_is_ec_ac_at_equal sym_fad
    end
;;

let is_pipe_a_b_datastructure_of_a_b_datastructure sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_a_b_datastructure_of_a_b_datastructure sym_fad
    end
;;

let is_et_any_tdot_es sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_et_any_tdot_es sym_fad
    end
;;

let is_pipe_et_any_tdot_es sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es sym_fad
    end
;;

let is_pipe_et_any_tdot_es_arrow_true sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_arrow_true sym_fad
    end
;;

let is_et_any_tdot_es_sarg sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_et_any_tdot_es_sarg sym_fad
    end
;;

let is_pipe_et_any_tdot_es_underscore_arrow_true sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_underscore_arrow_true sym_fad
    end
;;

let is_et_any_tdot_es_any sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_et_any_tdot_es_any sym_fad
    end
;;

let is_if_not_is_es_any_off_et_any_ac_at sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_if_not_is_es_any_off_et_any_ac_at sym_fad
    end
;;

let is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_fad
    end
;;

let is_let_es_any_off_et_any_equal_function sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_es_any_off_et_any_equal_function sym_fad
    end
;;

let is_let_et_any_of_es_any_ac_as_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_et_any_of_es_any_ac_as_equal sym_fad
    end
;;

let is_let_is_es_any_off_et_any_equal_function sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_is_es_any_off_et_any_equal_function sym_fad
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow sym_fad
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_fad
    end
;;

let is_pipe_et_any_tdot_es_any_arrow sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_any_arrow sym_fad
    end
;;

let is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_fad
    end
;;

let is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_fad
    end
;;

let is_et_any_of_es_any_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_et_any_of_es_any_ac_as sym_fad
    end
;;

let is_et_any_tdot_es_any_ac_as sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_et_any_tdot_es_any_ac_as sym_fad
    end
;;

let is_let_build_n_store_sym_at_soi_am_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_build_n_store_sym_at_soi_am_equal sym_fad
    end
;;

let is_let_make_sym_at_soi_am_equal sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_make_sym_at_soi_am_equal sym_fad
    end
;;

let is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_fad
    end
;;

let is_make_sym_at_soi_am sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_duo_symbol_v.is_make_sym_at_soi_am sym_fad
    end
;;

let is_camlfile_title sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_camlfile_title sym_fau
    end
;;

let is_ending sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_ending sym_fau
    end
;;

let is_pipe_es sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_pipe_es sym_fau
    end
;;

let is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_fau
    end
;;

let is_pipe_es_constructor_of_string sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_pipe_es_constructor_of_string sym_fau
    end
;;

let is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_fau
    end
;;

let is_type_et_any_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_type_et_any_equal sym_fau
    end
;;

let is_type_et_any_equal_et sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_type_et_any_equal_et sym_fau
    end
;;

let is_type_et_any_equal_private sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_type_et_any_equal_private sym_fau
    end
;;

let is_comment_es_comment sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_comment_es_comment sym_fau
    end
;;

let is_es_any_vdot_fullname_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_es_any_vdot_fullname_ac_as sym_fau
    end
;;

let is_es_any_vdot_longname_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_es_any_vdot_longname_ac_as sym_fau
    end
;;

let is_es_any_vdot_make_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_es_any_vdot_make_ac_as sym_fau
    end
;;

let is_es_any_vdot_name_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_es_any_vdot_name_ac_as sym_fau
    end
;;

let is_es_any_vdot_string_off_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_es_any_vdot_string_off_ac_as sym_fau
    end
;;

let is_format_sprintf_fullname_ac_as_string_off_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_format_sprintf_fullname_ac_as_string_off_ac_as sym_fau
    end
;;

let is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_fau
    end
;;

let is_let_is_es_any_equal_function sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_is_es_any_equal_function sym_fau
    end
;;

let is_let_is_es_equal_function sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_is_es_equal_function sym_fau
    end
;;

let is_pipe_datastructure_ac_as_arrow sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_pipe_datastructure_ac_as_arrow sym_fau
    end
;;

let is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_fau
    end
;;

let is_let_fullname_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_fullname_ac_at_equal sym_fau
    end
;;

let is_let_longname_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_longname_ac_at_equal sym_fau
    end
;;

let is_let_name_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_name_ac_at_equal sym_fau
    end
;;

let is_let_retrieve_tag_top_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_retrieve_tag_top_equal sym_fau
    end
;;

let is_let_string_off_ac_at_equal sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_let_string_off_ac_at_equal sym_fau
    end
;;

let is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_fau
    end
;;

let is_double_quote_current sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_double_quote_current sym_fau
    end
;;

let is_sprintf_for_any_fullname sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_sprintf_for_any_fullname sym_fau
    end
;;

let is_sprintf_for_any_longname sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_sprintf_for_any_longname sym_fau
    end
;;

let is_try_name_of_topson_bare sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_name_of_topson_bare sym_fau
    end
;;

let is_try_name_of_topson_notleaf sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_name_of_topson_notleaf sym_fau
    end
;;

let is_try_name_of_topson_ofstring sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_name_of_topson_ofstring sym_fau
    end
;;

let is_try_string_off_of_topson_bare sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_string_off_of_topson_bare sym_fau
    end
;;

let is_try_string_off_of_topson_notleaf sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_string_off_of_topson_notleaf sym_fau
    end
;;

let is_try_string_off_of_topson_ofstring sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_uno_symbol_v.is_try_string_off_of_topson_ofstring sym_fau
    end
;;

let is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_cfa =
  if not (is_camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fat = camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_trio_symbol_v.is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_fat
    end
;;

let is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_cfa =
  if not (is_camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fat = camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa in
      Camlline_for_any_trio_symbol_v.is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_fat
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fad = camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_duo_symbol_v.is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad
    end
;;

let is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_son_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_son_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_uno_top_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fau = camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_uno_symbol_v.is_camlline_for_any_uno_top_symbol_off_camlline_for_any_uno_symbol sym_fau
    end
;;

let is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_symbol sym_cfa =
  if not (is_camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa)
  then false
  else
    begin
  let sym_fat = camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa in
  Camlline_for_any_trio_symbol_v.is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad = 
  Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau = 
  Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_trio_symbol sym_fat = 
  Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_fat
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_any_symbol_of_camlline_for_any_duo_current_son_symbol sym_dcs = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol sym_dcs in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_current_top_symbol sym_dct = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol sym_dct in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_datastructure_symbol sym_add = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_datastructure_symbol sym_add in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_stb = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_stb in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_sto = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_sto in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_stn = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_stn in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_duo_top_main_symbol sym_dtm = 
  let sym_fad = Camlline_for_any_duo_symbol_v.camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol sym_dtm in
    camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camlfile_symbol sym_auc = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camlfile_symbol sym_auc in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_son_symbol sym_aus = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_son_symbol sym_aus in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_uno_top_symbol sym_aut = 
  let sym_fau = Camlline_for_any_uno_symbol_v.camlline_for_any_uno_symbol_of_camlline_for_any_uno_top_symbol sym_aut in
    camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau
;;

let camlline_for_any_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cst = 
  let sym_fat = Camlline_for_any_trio_symbol_v.camlline_for_any_trio_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cst in
    camlline_for_any_symbol_of_camlline_for_any_trio_symbol sym_fat
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let es_any_vdot_ec_any_off_es_any_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.es_any_vdot_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_any_off_es_any_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.es_any_vdot_is_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.es_any_vdot_is_ec_ac_as;;

let let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in;;

let let_et_any_of_ec_any_ac_ac_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_et_any_of_ec_any_ac_ac_equal;;

let let_ec_any_off_et_any_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_any_off_et_any_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_is_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_is_ec_ac_at_equal;;

let pipe_a_b_datastructure_of_a_b_datastructure = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_a_b_datastructure_of_a_b_datastructure;;

let et_any_tdot_es = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.et_any_tdot_es;;

let pipe_et_any_tdot_es = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es;;

let pipe_et_any_tdot_es_arrow_true = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_arrow_true;;

let et_any_tdot_es_sarg = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.et_any_tdot_es_sarg;;

let pipe_et_any_tdot_es_underscore_arrow_true = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_underscore_arrow_true;;

let et_any_tdot_es_any = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.et_any_tdot_es_any;;

let if_not_is_es_any_off_et_any_ac_at = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.if_not_is_es_any_off_et_any_ac_at;;

let let_ac_as_equal_es_any_off_et_any_ac_at_in = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_ac_as_equal_es_any_off_et_any_ac_at_in;;

let let_es_any_off_et_any_equal_function = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_es_any_off_et_any_equal_function;;

let let_et_any_of_es_any_ac_as_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_et_any_of_es_any_ac_as_equal;;

let let_is_es_any_off_et_any_equal_function = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_is_es_any_off_et_any_equal_function;;

let pipe_et_any_tdot_es_any_ac_as_arrow = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow;;

let pipe_et_any_tdot_es_any_ac_as_arrow_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow_ac_as;;

let pipe_et_any_tdot_es_any_arrow = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_any_arrow;;

let pipe_et_any_tdot_es_any_underscore_arrow_true = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_et_any_tdot_es_any_underscore_arrow_true;;

let pipe_print_fatal_error_es_any_off_et_any_4_lines = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.pipe_print_fatal_error_es_any_off_et_any_4_lines;;

let et_any_of_es_any_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.et_any_of_es_any_ac_as;;

let et_any_tdot_es_any_ac_as = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.et_any_tdot_es_any_ac_as;;

let let_build_n_store_sym_at_soi_am_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_build_n_store_sym_at_soi_am_equal;;

let let_make_sym_at_soi_am_equal = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_make_sym_at_soi_am_equal;;

let let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in;;

let make_sym_at_soi_am = camlline_for_any_symbol_of_camlline_for_any_duo_symbol Camlline_for_any_duo_symbol_v.make_sym_at_soi_am;;

let camlfile_title = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.camlfile_title;;

let ending = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.ending;;

let pipe_es = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.pipe_es;;

let pipe_es_any_constructor_of_es_any_tdot_es_any = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.pipe_es_any_constructor_of_es_any_tdot_es_any;;

let pipe_es_constructor_of_string = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.pipe_es_constructor_of_string;;

let pipe_et_any_constructor_of_et_any_tdot_et_any = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.pipe_et_any_constructor_of_et_any_tdot_et_any;;

let type_et_any_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.type_et_any_equal;;

let type_et_any_equal_et = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.type_et_any_equal_et;;

let type_et_any_equal_private = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.type_et_any_equal_private;;

let comment_es_comment = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.comment_es_comment;;

let es_any_vdot_fullname_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.es_any_vdot_fullname_ac_as;;

let es_any_vdot_longname_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.es_any_vdot_longname_ac_as;;

let es_any_vdot_make_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.es_any_vdot_make_ac_as;;

let es_any_vdot_name_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.es_any_vdot_name_ac_as;;

let es_any_vdot_string_off_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.es_any_vdot_string_off_ac_as;;

let format_sprintf_fullname_ac_as_string_off_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.format_sprintf_fullname_ac_as_string_off_ac_as;;

let format_sprintf_longname_es_tdot_string_capitalize_name_ac_as = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.format_sprintf_longname_es_tdot_string_capitalize_name_ac_as;;

let let_is_es_any_equal_function = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_is_es_any_equal_function;;

let let_is_es_equal_function = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_is_es_equal_function;;

let pipe_datastructure_ac_as_arrow = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.pipe_datastructure_ac_as_arrow;;

let format_sprintf_doublequote_et_any_tdot_percents_doublequote = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.format_sprintf_doublequote_et_any_tdot_percents_doublequote;;

let let_fullname_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_fullname_ac_at_equal;;

let let_longname_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_longname_ac_at_equal;;

let let_name_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_name_ac_at_equal;;

let let_retrieve_tag_top_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_ac_at_equal = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.let_string_off_ac_at_equal;;

let lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar;;

let double_quote_current = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.double_quote_current;;

let sprintf_for_any_fullname = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.sprintf_for_any_longname;;

let try_name_of_topson_bare = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_name_of_topson_bare;;

let try_name_of_topson_notleaf = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_name_of_topson_notleaf;;

let try_name_of_topson_ofstring = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_name_of_topson_ofstring;;

let try_string_off_of_topson_bare = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_string_off_of_topson_bare;;

let try_string_off_of_topson_notleaf = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_string_off_of_topson_notleaf;;

let try_string_off_of_topson_ofstring = camlline_for_any_symbol_of_camlline_for_any_uno_symbol Camlline_for_any_uno_symbol_v.try_string_off_of_topson_ofstring;;

let let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any = camlline_for_any_symbol_of_camlline_for_any_trio_symbol Camlline_for_any_trio_symbol_v.let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any;;

let let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg = camlline_for_any_symbol_of_camlline_for_any_trio_symbol Camlline_for_any_trio_symbol_v.let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_any_symbol_of_camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_symbol:Camlline_for_any_duo_symbol_v:make" ->
  try camlline_for_any_symbol_of_camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_symbol:Camlline_for_any_uno_symbol_v:make" ->
  try camlline_for_any_symbol_of_camlline_for_any_trio_symbol
      (Camlline_for_any_trio_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_trio_symbol:Camlline_for_any_trio_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_any_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_symbol:Camlline_for_any_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any implementation_for_symbol symbol at 9:15 6 May 2013. *)



