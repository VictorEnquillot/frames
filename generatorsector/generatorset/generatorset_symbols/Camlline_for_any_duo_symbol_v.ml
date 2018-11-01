(** {3 Camlline_for_any_duo_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_duo_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_dcs ->
    Camlline_for_any_duo_current_son_symbol_v.name sym_dcs
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_dct ->
    Camlline_for_any_duo_current_top_symbol_v.name sym_dct
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_add ->
    Camlline_for_any_duo_datastructure_symbol_v.name sym_add
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_stb ->
    Camlline_for_any_duo_son_top_bare_symbol_v.name sym_stb
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_sto ->
    Camlline_for_any_duo_son_top_ofstring_symbol_v.name sym_sto
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_stn ->
    Camlline_for_any_duo_son_top_notleaf_symbol_v.name sym_stn
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_dtm ->
    Camlline_for_any_duo_top_main_symbol_v.name sym_dtm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_dcs ->
  Camlline_for_any_duo_current_son_symbol_v.string_off sym_dcs
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_dct ->
  Camlline_for_any_duo_current_top_symbol_v.string_off sym_dct
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_add ->
  Camlline_for_any_duo_datastructure_symbol_v.string_off sym_add
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_stb ->
  Camlline_for_any_duo_son_top_bare_symbol_v.string_off sym_stb
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_sto ->
  Camlline_for_any_duo_son_top_ofstring_symbol_v.string_off sym_sto
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_stn ->
  Camlline_for_any_duo_son_top_notleaf_symbol_v.string_off sym_stn
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_dtm ->
  Camlline_for_any_duo_top_main_symbol_v.string_off sym_dtm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fad =
  Format.sprintf "Camlline_for_any_duo_symbol_t.%s" (String.capitalize_ascii (name sym_fad))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fad =
  Format.sprintf "%s \"%s\"" (longname sym_fad) (string_off sym_fad)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_dcs -> sym_dcs
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_current_son_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_dct -> sym_dct
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_current_top_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_add -> sym_add
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_datastructure_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_stb -> sym_stb
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_son_top_bare_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_sto -> sym_sto
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_son_top_ofstring_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_stn -> sym_stn
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_son_top_notleaf_symbol"
      (name sym_fad) "check"
;;

let camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_dtm -> sym_dtm
  | sym_fad -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol"
      "Camlline_for_any_duo_top_main_symbol"
      (name sym_fad) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol = function
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_es_any_vdot_ec_any_off_es_any_ac_as sym_fad =
  if not (is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dcs = camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_son_symbol_v.is_es_any_vdot_ec_any_off_es_any_ac_as sym_dcs
    end
;;

let is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_fad =
  if not (is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dcs = camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_son_symbol_v.is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_dcs
    end
;;

let is_es_any_vdot_is_ec_ac_as sym_fad =
  if not (is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dcs = camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_son_symbol_v.is_es_any_vdot_is_ec_ac_as sym_dcs
    end
;;

let is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_fad =
  if not (is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dcs = camlline_for_any_duo_current_son_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_son_symbol_v.is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_dcs
    end
;;

let is_let_et_any_of_ec_any_ac_ac_equal sym_fad =
  if not (is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dct = camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_top_symbol_v.is_let_et_any_of_ec_any_ac_ac_equal sym_dct
    end
;;

let is_let_ec_any_off_et_any_ac_at_equal sym_fad =
  if not (is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dct = camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_top_symbol_v.is_let_ec_any_off_et_any_ac_at_equal sym_dct
    end
;;

let is_let_is_ec_any_off_et_any_ac_at_equal sym_fad =
  if not (is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dct = camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_top_symbol_v.is_let_is_ec_any_off_et_any_ac_at_equal sym_dct
    end
;;

let is_let_is_ec_ac_at_equal sym_fad =
  if not (is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dct = camlline_for_any_duo_current_top_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_current_top_symbol_v.is_let_is_ec_ac_at_equal sym_dct
    end
;;

let is_pipe_a_b_datastructure_of_a_b_datastructure sym_fad =
  if not (is_camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_add = camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_datastructure_symbol_v.is_pipe_a_b_datastructure_of_a_b_datastructure sym_add
    end
;;

let is_et_any_tdot_es sym_fad =
  if not (is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stb = camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_bare_symbol_v.is_et_any_tdot_es sym_stb
    end
;;

let is_pipe_et_any_tdot_es sym_fad =
  if not (is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stb = camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_bare_symbol_v.is_pipe_et_any_tdot_es sym_stb
    end
;;

let is_pipe_et_any_tdot_es_arrow_true sym_fad =
  if not (is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stb = camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_bare_symbol_v.is_pipe_et_any_tdot_es_arrow_true sym_stb
    end
;;

let is_et_any_tdot_es_sarg sym_fad =
  if not (is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_sto = camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_ofstring_symbol_v.is_et_any_tdot_es_sarg sym_sto
    end
;;

let is_pipe_et_any_tdot_es_underscore_arrow_true sym_fad =
  if not (is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_sto = camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_ofstring_symbol_v.is_pipe_et_any_tdot_es_underscore_arrow_true sym_sto
    end
;;

let is_et_any_tdot_es_any sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_et_any_tdot_es_any sym_stn
    end
;;

let is_if_not_is_es_any_off_et_any_ac_at sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_if_not_is_es_any_off_et_any_ac_at sym_stn
    end
;;

let is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_stn
    end
;;

let is_let_es_any_off_et_any_equal_function sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_let_es_any_off_et_any_equal_function sym_stn
    end
;;

let is_let_et_any_of_es_any_ac_as_equal sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_let_et_any_of_es_any_ac_as_equal sym_stn
    end
;;

let is_let_is_es_any_off_et_any_equal_function sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_let_is_es_any_off_et_any_equal_function sym_stn
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow sym_stn
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_stn
    end
;;

let is_pipe_et_any_tdot_es_any_arrow sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_pipe_et_any_tdot_es_any_arrow sym_stn
    end
;;

let is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_stn
    end
;;

let is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_stn
    end
;;

let is_et_any_of_es_any_ac_as sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_et_any_of_es_any_ac_as sym_stn
    end
;;

let is_et_any_tdot_es_any_ac_as sym_fad =
  if not (is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_stn = camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_son_top_notleaf_symbol_v.is_et_any_tdot_es_any_ac_as sym_stn
    end
;;

let is_let_build_n_store_sym_at_soi_am_equal sym_fad =
  if not (is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dtm = camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_top_main_symbol_v.is_let_build_n_store_sym_at_soi_am_equal sym_dtm
    end
;;

let is_let_make_sym_at_soi_am_equal sym_fad =
  if not (is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dtm = camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_top_main_symbol_v.is_let_make_sym_at_soi_am_equal sym_dtm
    end
;;

let is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_fad =
  if not (is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dtm = camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_top_main_symbol_v.is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_dtm
    end
;;

let is_make_sym_at_soi_am sym_fad =
  if not (is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad)
  then false
  else
    begin
      let sym_dtm = camlline_for_any_duo_top_main_symbol_off_camlline_for_any_duo_symbol sym_fad in
      Camlline_for_any_duo_top_main_symbol_v.is_make_sym_at_soi_am sym_dtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol sym_dcs = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_dcs
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol sym_dct = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_dct
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_datastructure_symbol sym_add = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_add
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_stb = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_stb
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_sto = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_sto
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_stn = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_stn
;;

let camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol sym_dtm = 
  Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_dtm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let es_any_vdot_ec_any_off_es_any_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol Camlline_for_any_duo_current_son_symbol_v.es_any_vdot_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_any_off_es_any_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol Camlline_for_any_duo_current_son_symbol_v.es_any_vdot_is_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol Camlline_for_any_duo_current_son_symbol_v.es_any_vdot_is_ec_ac_as;;

let let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol Camlline_for_any_duo_current_son_symbol_v.let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in;;

let let_et_any_of_ec_any_ac_ac_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol Camlline_for_any_duo_current_top_symbol_v.let_et_any_of_ec_any_ac_ac_equal;;

let let_ec_any_off_et_any_ac_at_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol Camlline_for_any_duo_current_top_symbol_v.let_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_any_off_et_any_ac_at_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol Camlline_for_any_duo_current_top_symbol_v.let_is_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_ac_at_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol Camlline_for_any_duo_current_top_symbol_v.let_is_ec_ac_at_equal;;

let pipe_a_b_datastructure_of_a_b_datastructure = camlline_for_any_duo_symbol_of_camlline_for_any_duo_datastructure_symbol Camlline_for_any_duo_datastructure_symbol_v.pipe_a_b_datastructure_of_a_b_datastructure;;

let et_any_tdot_es = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol Camlline_for_any_duo_son_top_bare_symbol_v.et_any_tdot_es;;

let pipe_et_any_tdot_es = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol Camlline_for_any_duo_son_top_bare_symbol_v.pipe_et_any_tdot_es;;

let pipe_et_any_tdot_es_arrow_true = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol Camlline_for_any_duo_son_top_bare_symbol_v.pipe_et_any_tdot_es_arrow_true;;

let et_any_tdot_es_sarg = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol Camlline_for_any_duo_son_top_ofstring_symbol_v.et_any_tdot_es_sarg;;

let pipe_et_any_tdot_es_underscore_arrow_true = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol Camlline_for_any_duo_son_top_ofstring_symbol_v.pipe_et_any_tdot_es_underscore_arrow_true;;

let et_any_tdot_es_any = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.et_any_tdot_es_any;;

let if_not_is_es_any_off_et_any_ac_at = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.if_not_is_es_any_off_et_any_ac_at;;

let let_ac_as_equal_es_any_off_et_any_ac_at_in = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.let_ac_as_equal_es_any_off_et_any_ac_at_in;;

let let_es_any_off_et_any_equal_function = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.let_es_any_off_et_any_equal_function;;

let let_et_any_of_es_any_ac_as_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.let_et_any_of_es_any_ac_as_equal;;

let let_is_es_any_off_et_any_equal_function = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.let_is_es_any_off_et_any_equal_function;;

let pipe_et_any_tdot_es_any_ac_as_arrow = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow;;

let pipe_et_any_tdot_es_any_ac_as_arrow_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow_ac_as;;

let pipe_et_any_tdot_es_any_arrow = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_arrow;;

let pipe_et_any_tdot_es_any_underscore_arrow_true = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_underscore_arrow_true;;

let pipe_print_fatal_error_es_any_off_et_any_4_lines = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_print_fatal_error_es_any_off_et_any_4_lines;;

let et_any_of_es_any_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.et_any_of_es_any_ac_as;;

let et_any_tdot_es_any_ac_as = camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol Camlline_for_any_duo_son_top_notleaf_symbol_v.et_any_tdot_es_any_ac_as;;

let let_build_n_store_sym_at_soi_am_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol Camlline_for_any_duo_top_main_symbol_v.let_build_n_store_sym_at_soi_am_equal;;

let let_make_sym_at_soi_am_equal = camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol Camlline_for_any_duo_top_main_symbol_v.let_make_sym_at_soi_am_equal;;

let let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol Camlline_for_any_duo_top_main_symbol_v.let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in;;

let make_sym_at_soi_am = camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol Camlline_for_any_duo_top_main_symbol_v.make_sym_at_soi_am;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_duo_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_duo_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_son_symbol
      (Camlline_for_any_duo_current_son_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_current_son_symbol:Camlline_for_any_duo_current_son_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_current_top_symbol
      (Camlline_for_any_duo_current_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_current_top_symbol:Camlline_for_any_duo_current_top_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_datastructure_symbol
      (Camlline_for_any_duo_datastructure_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_datastructure_symbol:Camlline_for_any_duo_datastructure_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_bare_symbol
      (Camlline_for_any_duo_son_top_bare_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_son_top_bare_symbol:Camlline_for_any_duo_son_top_bare_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol
      (Camlline_for_any_duo_son_top_ofstring_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_son_top_ofstring_symbol:Camlline_for_any_duo_son_top_ofstring_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol
      (Camlline_for_any_duo_son_top_notleaf_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_son_top_notleaf_symbol:Camlline_for_any_duo_son_top_notleaf_symbol_v:make" ->
  try camlline_for_any_duo_symbol_of_camlline_for_any_duo_top_main_symbol
      (Camlline_for_any_duo_top_main_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_duo_top_main_symbol:Camlline_for_any_duo_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_any_duo_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_duo_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_duo_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_duo_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_duo subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_duo_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_duo_symbol:Camlline_for_any_duo_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_duo implementation_for_symbol symbol at 9:15 6 May 2013. *)



