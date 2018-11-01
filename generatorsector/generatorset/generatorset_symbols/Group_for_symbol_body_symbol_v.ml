(** {3 Group_for_symbol_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol sym_gbt ->
    Group_for_symbol_body_top_symbol_v.name sym_gbt
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol sym_gbs ->
    Group_for_symbol_body_son_symbol_v.name sym_gbs
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol sym_gst ->
    Group_for_symbol_body_son_top_symbol_v.name sym_gst
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol sym_gst ->
    Group_for_symbol_body_current_son_top_symbol_v.name sym_gst
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol sym_gbt ->
  Group_for_symbol_body_top_symbol_v.string_off sym_gbt
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol sym_gbs ->
  Group_for_symbol_body_son_symbol_v.string_off sym_gbs
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol sym_gst ->
  Group_for_symbol_body_son_top_symbol_v.string_off sym_gst
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol sym_gst ->
  Group_for_symbol_body_current_son_top_symbol_v.string_off sym_gst
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gsb =
  Format.sprintf "Group_for_symbol_body_symbol_t.%s" (String.capitalize_ascii (name sym_gsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gsb =
  Format.sprintf "%s \"%s\"" (longname sym_gsb) (string_off sym_gsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol sym_gbt -> sym_gbt
  | sym_gsb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol"
      "Group_for_symbol_body_top_symbol"
      (name sym_gsb) "check"
;;

let group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol sym_gbs -> sym_gbs
  | sym_gsb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol"
      "Group_for_symbol_body_son_symbol"
      (name sym_gsb) "check"
;;

let group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol sym_gst -> sym_gst
  | sym_gsb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol"
      "Group_for_symbol_body_son_top_symbol"
      (name sym_gsb) "check"
;;

let group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol sym_gst -> sym_gst
  | sym_gsb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol"
      "Group_for_symbol_body_current_son_top_symbol"
      (name sym_gsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol = function
  | Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_documentation_list_for_symbol sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_documentation_list_for_symbol sym_gbt
    end
;;

let is_try_make_of_topson_bare_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_make_of_topson_bare_with_failure_arrow sym_gbt
    end
;;

let is_try_make_of_topson_ofstring_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_make_of_topson_ofstring_with_failure_arrow sym_gbt
    end
;;

let is_try_make_of_topson_notleaf_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_make_of_topson_notleaf_with_failure_arrow sym_gbt
    end
;;

let is_try_name_of_topson_bare_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_name_of_topson_bare_with_failure_arrow sym_gbt
    end
;;

let is_try_name_of_topson_ofstring_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_name_of_topson_ofstring_with_failure_arrow sym_gbt
    end
;;

let is_try_name_of_topson_notleaf_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_name_of_topson_notleaf_with_failure_arrow sym_gbt
    end
;;

let is_try_string_off_of_topson_bare_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_string_off_of_topson_bare_with_failure_arrow sym_gbt
    end
;;

let is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gbt
    end
;;

let is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbt = group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_top_symbol_v.is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gbt
    end
;;

let is_pipe_esstring_arrow_es sym_gsb =
  if not (is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbs = group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_symbol_v.is_pipe_esstring_arrow_es sym_gbs
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_gsb =
  if not (is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbs = group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_symbol_v.is_pipe_esstring_arrow_es_sarg sym_gbs
    end
;;

let is_pipe_es_symbol_bare_type_constructor sym_gsb =
  if not (is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbs = group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_symbol_v.is_pipe_es_symbol_bare_type_constructor sym_gbs
    end
;;

let is_pipe_es_symbol_ofstring_type_constructor sym_gsb =
  if not (is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gbs = group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_symbol_v.is_pipe_es_symbol_ofstring_type_constructor sym_gbs
    end
;;

let is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_is_topson_bare_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_topson_bare_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_topson_notleaf_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_topson_notleaf_symbol_off_top_symbol sym_gst
    end
;;

let is_pipe_upgrade_name_bare_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_name_bare_function sym_gst
    end
;;

let is_pipe_upgrade_name_notleaf_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_name_notleaf_function sym_gst
    end
;;

let is_pipe_upgrade_name_ofstring_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_name_ofstring_function sym_gst
    end
;;

let is_pipe_upgrade_string_off_bare_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_string_off_bare_function sym_gst
    end
;;

let is_pipe_upgrade_string_off_notleaf_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_string_off_notleaf_function sym_gst
    end
;;

let is_pipe_upgrade_string_off_ofstring_function sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_pipe_upgrade_string_off_ofstring_function sym_gst
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_try_top_of_topson_with_failure_arrow sym_gst
    end
;;

let is_upgrade_topson_symbol sym_gsb =
  if not (is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_son_top_symbol_v.is_upgrade_topson_symbol sym_gst
    end
;;

let is_if_not_is_topson_begin_leaf_end sym_gsb =
  if not (is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_current_son_top_symbol_v.is_if_not_is_topson_begin_leaf_end sym_gst
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_gsb =
  if not (is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_current_son_top_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_gst
    end
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gsb =
  if not (is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_current_son_top_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gst
    end
;;

let is_upgrade_grandson_symbol sym_gsb =
  if not (is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb)
  then false
  else
    begin
      let sym_gst = group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb in
      Group_for_symbol_body_current_son_top_symbol_v.is_upgrade_grandson_symbol sym_gst
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol sym_gbt = 
  Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol sym_gbt
;;

let group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol sym_gbs = 
  Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol sym_gbs
;;

let group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol sym_gst = 
  Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol sym_gst
;;

let group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst = 
  Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol sym_gst
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let documentation_list_for_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.documentation_list_for_symbol;;

let try_make_of_topson_bare_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_make_of_topson_bare_with_failure_arrow;;

let try_make_of_topson_ofstring_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_make_of_topson_ofstring_with_failure_arrow;;

let try_make_of_topson_notleaf_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_make_of_topson_notleaf_with_failure_arrow;;

let try_name_of_topson_bare_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_name_of_topson_bare_with_failure_arrow;;

let try_name_of_topson_ofstring_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_name_of_topson_ofstring_with_failure_arrow;;

let try_name_of_topson_notleaf_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_name_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_bare_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_bare_with_failure_arrow;;

let try_string_off_of_topson_notleaf_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_ofstring_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_ofstring_with_failure_arrow;;

let pipe_esstring_arrow_es = group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol Group_for_symbol_body_son_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol Group_for_symbol_body_son_symbol_v.pipe_esstring_arrow_es_sarg;;

let pipe_es_symbol_bare_type_constructor = group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol Group_for_symbol_body_son_symbol_v.pipe_es_symbol_bare_type_constructor;;

let pipe_es_symbol_ofstring_type_constructor = group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol Group_for_symbol_body_son_symbol_v.pipe_es_symbol_ofstring_type_constructor;;

let pipe_is_onlyson_bare_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_bare_symbol_off_top_symbol;;

let pipe_is_onlyson_notleaf_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_is_onlyson_ofstring_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_ofstring_symbol_off_top_symbol;;

let pipe_is_topson_bare_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_bare_symbol_off_top_symbol;;

let pipe_is_topson_notleaf_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_notleaf_symbol_off_top_symbol;;

let pipe_is_topson_ofstring_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_ofstring_symbol_off_top_symbol;;

let pipe_onlyson_notleaf_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_topson_notleaf_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_topson_notleaf_symbol_off_top_symbol;;

let pipe_upgrade_name_bare_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_bare_function;;

let pipe_upgrade_name_notleaf_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_notleaf_function;;

let pipe_upgrade_name_ofstring_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_ofstring_function;;

let pipe_upgrade_string_off_bare_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_bare_function;;

let pipe_upgrade_string_off_notleaf_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_notleaf_function;;

let pipe_upgrade_string_off_ofstring_function = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_ofstring_function;;

let try_top_of_topson_with_failure_arrow = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol Group_for_symbol_body_son_top_symbol_v.upgrade_topson_symbol;;

let if_not_is_topson_begin_leaf_end = group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol Group_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_leaf_end;;

let if_not_is_topson_begin_notleaf_end = group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol Group_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_notleaf_end;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol Group_for_symbol_body_current_son_top_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let upgrade_grandson_symbol = group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol Group_for_symbol_body_current_son_top_symbol_v.upgrade_grandson_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol
      (Group_for_symbol_body_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_body_top_symbol:Group_for_symbol_body_top_symbol_v:make" ->
  try group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol
      (Group_for_symbol_body_son_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_body_son_symbol:Group_for_symbol_body_son_symbol_v:make" ->
  try group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol
      (Group_for_symbol_body_son_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_body_son_top_symbol:Group_for_symbol_body_son_top_symbol_v:make" ->
  try group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol
      (Group_for_symbol_body_current_son_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_body_current_son_top_symbol:Group_for_symbol_body_current_son_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_symbol_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol_body subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_body_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_body_symbol:Group_for_symbol_body_symbol_v.ml:make"
;;


(** Group_for_symbol_body_symbol_v at 15:33:54 on 30 May 2013. created by version v1.13 of generator *)



