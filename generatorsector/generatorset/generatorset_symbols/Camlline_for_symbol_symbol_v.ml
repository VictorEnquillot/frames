(** {3 Camlline_for_symbol_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_symbol_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol sym_fsd ->
    Camlline_for_symbol_duo_symbol_v.name sym_fsd
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol sym_fsu ->
    Camlline_for_symbol_uno_symbol_v.name sym_fsu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol sym_fsd ->
  Camlline_for_symbol_duo_symbol_v.string_off sym_fsd
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol sym_fsu ->
  Camlline_for_symbol_uno_symbol_v.string_off sym_fsu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cfs =
  Format.sprintf "Camlline_for_symbol_symbol_t.%s" (String.capitalize (name sym_cfs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cfs =
  Format.sprintf "%s \"%s\"" (longname sym_cfs) (string_off sym_cfs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol sym_fsd -> sym_fsd
  | sym_cfs -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol"
      "Camlline_for_symbol_duo_symbol"
      (name sym_cfs) "check"
;;

let camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol sym_fsu -> sym_fsu
  | sym_cfs -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol"
      "Camlline_for_symbol_uno_symbol"
      (name sym_cfs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_symbol sym_cfs = 
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
    Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol = function
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_ecstring_arrow_et_symbol_tdot_ec_string sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_ecstring_arrow_et_symbol_tdot_ec_string sym_fsd
    end
;;

let is_et_symbol_tdot_es sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_et_symbol_tdot_es sym_fsd
    end
;;

let is_let_ac_at_equal_et_symbol_vdot_es_in sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_let_ac_at_equal_et_symbol_vdot_es_in sym_fsd
    end
;;

let is_let_es_equal_et_symbol_tdot_es sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_let_es_equal_et_symbol_tdot_es sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_arrow sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_arrow sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_emptystring sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_arrow_emptystring sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_string sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_arrow_string sym_fsd
    end
;;

let is_et_symbol_tdot_es_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_et_symbol_tdot_es_symbol sym_fsd
    end
;;

let is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_fsd
    end
;;

let is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_fsd
    end
;;

let is_et_symbol_of_es_symbol_sym_as sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_et_symbol_of_es_symbol_sym_as sym_fsd
    end
;;

let is_et_symbol_tdot_es_symbol_sym_as sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_et_symbol_tdot_es_symbol_sym_as sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_fsd
    end
;;

let is_try_et_symbol_of_es_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_try_et_symbol_of_es_symbol sym_fsd
    end
;;

let is_et_symbol_tdot_es_sarg sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_et_symbol_tdot_es_sarg sym_fsd
    end
;;

let is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_fsd
    end
;;

let is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_duo_symbol_v.is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_fsd
    end
;;

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_fsu
    end
;;

let is_et_symbol_vdot_name_sym_at sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_et_symbol_vdot_name_sym_at sym_fsu
    end
;;

let is_et_symbol_vdot_string_off_sym_at sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_et_symbol_vdot_string_off_sym_at sym_fsu
    end
;;

let is_let_et_symbol_equal_et_symbol_tdot_et sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_et_symbol_equal_et_symbol_tdot_et sym_fsu
    end
;;

let is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_fsu
    end
;;

let is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_fsu
    end
;;

let is_failwith_not_a_et_symbol_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_et_symbol_make sym_fsu
    end
;;

let is_failwith_not_a_et_symbol_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_et_symbol_name sym_fsu
    end
;;

let is_failwith_not_a_et_symbol_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_et_symbol_string_off sym_fsu
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_bare_et_symbol_make sym_fsu
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_bare_et_symbol_name sym_fsu
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_bare_et_symbol_string_off sym_fsu
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_make sym_fsu
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_name sym_fsu
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_fsu
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_make sym_fsu
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_name sym_fsu
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_fsu
    end
;;

let is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_fsu
    end
;;

let is_let_underscore_print_error_make_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_underscore_print_error_make_et_of_string_of_string sym_fsu
    end
;;

let is_let_underscore_print_error_name_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_underscore_print_error_name_et_of_string_of_string sym_fsu
    end
;;

let is_let_underscore_print_error_string_off_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_let_underscore_print_error_string_off_et_of_string_of_string sym_fsu
    end
;;

let is_print_fatal_error_make_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_print_fatal_error_make_et_of_string_of_string sym_fsu
    end
;;

let is_print_fatal_error_name_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_print_fatal_error_name_et_of_string_of_string sym_fsu
    end
;;

let is_print_fatal_error_string_off_et_of_string_of_string sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_print_fatal_error_string_off_et_of_string_of_string sym_fsu
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_fsu
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_fsu
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_fsu
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_fsu
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_fsu
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_fsu
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_fsu
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_fsu
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_fsu
    end
;;

let is_match_sym_at_with sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_match_sym_at_with sym_fsu
    end
;;

let is_pipe_esstring_arrow_es sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_pipe_esstring_arrow_es sym_fsu
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_pipe_esstring_arrow_es_sarg sym_fsu
    end
;;

let is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_fsu
    end
;;

let is_failwith_not_es_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_failwith_not_es_symbol sym_fsu
    end
;;

let is_with_failure_not_es_symbol_arrow sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_with_failure_not_es_symbol_arrow sym_fsu
    end
;;

let is_es_symbol_vdot_string_off_sym_as sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_es_symbol_vdot_string_off_sym_as sym_fsu
    end
;;

let is_es_symbol_vdot_name_sym_as sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_es_symbol_vdot_name_sym_as sym_fsu
    end
;;

let is_pipe_string_arrow_ec sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
      let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
      Camlline_for_symbol_uno_symbol_v.is_pipe_string_arrow_ec sym_fsu
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_duo_symbol_v.is_camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
    end
;;

let is_camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_duo_symbol_v.is_camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
    end
;;

let is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_duo_symbol_v.is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
    end
;;

let is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_duo_symbol_v.is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
    end
;;

let is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsd = camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_duo_symbol_v.is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_symbol sym_fsd
    end
;;

let is_camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;

let is_camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_symbol sym_cfs =
  if not (is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs)
  then false
  else
    begin
  let sym_fsu = camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs in
  Camlline_for_symbol_uno_symbol_v.is_camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_uno_symbol sym_fsu
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd = 
  Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu = 
  Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol sym_fsu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_current_top_symbol sym_dct = 
  let sym_fsd = Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_symbol_of_camlline_for_symbol_duo_current_top_symbol sym_dct in
    camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_dst = 
  let sym_fsd = Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_dst in
    camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_stb = 
  let sym_fsd = Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_stb in
    camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn = 
  let sym_fsd = Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn in
    camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto = 
  let sym_fsd = Camlline_for_symbol_duo_symbol_v.camlline_for_symbol_duo_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto in
    camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_builder_symbol sym_sub = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_builder_symbol sym_sub in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_top_symbol sym_sut = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_top_symbol sym_sut in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;

let camlline_for_symbol_symbol_of_camlline_for_symbol_uno_current_symbol sym_suc = 
  let sym_fsu = Camlline_for_symbol_uno_symbol_v.camlline_for_symbol_uno_symbol_of_camlline_for_symbol_uno_current_symbol sym_suc in
    camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_ecstring_arrow_et_symbol_tdot_ec_string = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_ecstring_arrow_et_symbol_tdot_ec_string;;

let et_symbol_tdot_es = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.et_symbol_tdot_es;;

let let_sym_at_equal_et_symbol_vdot_es_in = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.let_sym_at_equal_et_symbol_vdot_es_in;;

let let_es_equal_et_symbol_tdot_es = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.let_es_equal_et_symbol_tdot_es;;

let pipe_et_symbol_tdot_es_arrow = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_arrow;;

let pipe_et_symbol_tdot_es_arrow_emptystring = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_arrow_emptystring;;

let pipe_et_symbol_tdot_es_arrow_string = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_arrow_string;;

let et_symbol_tdot_es_symbol = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.et_symbol_tdot_es_symbol;;

let let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es;;

let let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg;;

let pipe_et_symbol_tdot_es_symbol_sym_as_arrow = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_symbol_sym_as_arrow;;

let et_symbol_of_es_symbol_sym_as = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.et_symbol_of_es_symbol_sym_as;;

let et_symbol_tdot_es_symbol_sym_as = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.et_symbol_tdot_es_symbol_sym_as;;

let pipe_et_symbol_tdot_es_symbol_underscore_arrow_string = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_symbol_underscore_arrow_string;;

let try_et_symbol_of_es_symbol = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.try_et_symbol_of_es_symbol;;

let et_symbol_tdot_es_sarg = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.et_symbol_tdot_es_sarg;;

let let_es_sarg_equal_et_symbol_tdot_es_sarg = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.let_es_sarg_equal_et_symbol_tdot_es_sarg;;

let pipe_et_symbol_tdot_es_sarg_arrow = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow;;

let pipe_et_symbol_tdot_es_sarg_arrow_sarg = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow_sarg;;

let pipe_et_symbol_tdot_es_underscore_arrow_string = camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol Camlline_for_symbol_duo_symbol_v.pipe_et_symbol_tdot_es_underscore_arrow_string;;

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let et_symbol_vdot_name_sym_at = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.et_symbol_vdot_name_sym_at;;

let et_symbol_vdot_string_off_sym_at = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.et_symbol_vdot_string_off_sym_at;;

let let_et_symbol_equal_et_symbol_tdot_et = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_et_symbol_equal_et_symbol_tdot_et;;

let let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in;;

let pipe_et_symbol_tdot_et_symbol_arrow_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.pipe_et_symbol_tdot_et_symbol_arrow_string;;

let failwith_not_a_et_symbol_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_et_symbol_make;;

let failwith_not_a_et_symbol_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_et_symbol_name;;

let failwith_not_a_et_symbol_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_et_symbol_string_off;;

let failwith_not_a_topson_bare_et_symbol_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_bare_et_symbol_make;;

let failwith_not_a_topson_bare_et_symbol_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_bare_et_symbol_name;;

let failwith_not_a_topson_bare_et_symbol_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_bare_et_symbol_string_off;;

let failwith_not_a_topson_notleaf_et_symbol_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_notleaf_et_symbol_make;;

let failwith_not_a_topson_notleaf_et_symbol_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_notleaf_et_symbol_name;;

let failwith_not_a_topson_notleaf_et_symbol_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_notleaf_et_symbol_string_off;;

let failwith_not_a_topson_ofstring_et_symbol_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_ofstring_et_symbol_make;;

let failwith_not_a_topson_ofstring_et_symbol_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_ofstring_et_symbol_name;;

let failwith_not_a_topson_ofstring_et_symbol_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_a_topson_ofstring_et_symbol_string_off;;

let let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in;;

let let_underscore_print_error_make_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_underscore_print_error_make_et_of_string_of_string;;

let let_underscore_print_error_name_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_underscore_print_error_name_et_of_string_of_string;;

let let_underscore_print_error_string_off_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.let_underscore_print_error_string_off_et_of_string_of_string;;

let print_fatal_error_make_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.print_fatal_error_make_et_of_string_of_string;;

let print_fatal_error_name_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.print_fatal_error_name_et_of_string_of_string;;

let print_fatal_error_string_off_et_of_string_of_string = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.print_fatal_error_string_off_et_of_string_of_string;;

let with_failure_not_a_topson_bare_et_symbol_arrow_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_make;;

let with_failure_not_a_topson_bare_et_symbol_arrow_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_name;;

let with_failure_not_a_topson_bare_et_symbol_arrow_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_make;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_name;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_make = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_make;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_name = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_name;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off;;

let match_sym_at_with = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.match_sym_at_with;;

let pipe_esstring_arrow_es = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.pipe_esstring_arrow_es_sarg;;

let lpar_es_symbol_vdot_make_of_string_of_string_rpar = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;;

let failwith_not_es_symbol = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.failwith_not_es_symbol;;

let with_failure_not_es_symbol_arrow = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.with_failure_not_es_symbol_arrow;;

let es_symbol_vdot_string_off_sym_as = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.es_symbol_vdot_string_off_sym_as;;

let es_symbol_vdot_name_sym_as = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.es_symbol_vdot_name_sym_as;;

let pipe_string_arrow_ec = camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol Camlline_for_symbol_uno_symbol_v.pipe_string_arrow_ec;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_symbol_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_symbol_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol
      (Camlline_for_symbol_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_duo_symbol:Camlline_for_symbol_duo_symbol_v:make" ->
  try camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_symbol:Camlline_for_symbol_uno_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_symbol_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_symbol_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_symbol_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_symbol_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_symbol subtype" nam s)
      "it does not exists"
      "Check file camlline_for_symbol_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_symbol_symbol:Camlline_for_symbol_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_symbol implementation_for_symbol symbol at 9:15 6 May 2013. *)



