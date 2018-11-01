(** {3 Group_for_symbol_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_gsh ->
    Group_for_symbol_header_symbol_v.name sym_gsh
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_gsb ->
    Group_for_symbol_body_symbol_v.name sym_gsb
  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_gsf ->
    Group_for_symbol_footer_symbol_v.name sym_gsf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_gsh ->
  Group_for_symbol_header_symbol_v.string_off sym_gsh
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_gsb ->
  Group_for_symbol_body_symbol_v.string_off sym_gsb
  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_gsf ->
  Group_for_symbol_footer_symbol_v.string_off sym_gsf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gfs =
  Format.sprintf "Group_for_symbol_symbol_t.%s" (String.capitalize_ascii (name sym_gfs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gfs =
  Format.sprintf "%s \"%s\"" (longname sym_gfs) (string_off sym_gfs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_symbol_header_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_gsh -> sym_gsh
  | sym_gfs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_symbol_off_group_for_symbol_symbol"
      "Group_for_symbol_header_symbol"
      (name sym_gfs) "check"
;;

let group_for_symbol_body_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_gsb -> sym_gsb
  | sym_gfs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_body_symbol_off_group_for_symbol_symbol"
      "Group_for_symbol_body_symbol"
      (name sym_gfs) "check"
;;

let group_for_symbol_footer_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_gsf -> sym_gsf
  | sym_gfs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_footer_symbol_off_group_for_symbol_symbol"
      "Group_for_symbol_footer_symbol"
      (name sym_gfs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let group_for_symbol_header_constant_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_header_symbol_v.group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_header_symbol_v.group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_header_current_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_header_symbol_v.group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_header_son_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_header_symbol_v.group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_header_son_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_header_symbol_v.group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_body_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_body_symbol_v.group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_body_son_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_body_symbol_v.group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_body_son_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_body_symbol_v.group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_body_symbol_v.group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_footer_top_symbol_off_group_for_symbol_symbol sym_gfs = 
  let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
    Group_for_symbol_footer_symbol_v.group_for_symbol_footer_top_symbol_off_group_for_symbol_footer_symbol sym_gsf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_symbol_header_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_body_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol = function
  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_make_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_make_equal_function sym_gsh
    end
;;

let is_let_make_nam_s_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_make_nam_s_equal sym_gsh
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_make_of_topson_bare_nam_equal sym_gsh
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_gsh
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_gsh
    end
;;

let is_let_name_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_name_equal_function sym_gsh
    end
;;

let is_let_name_of_topson_bare_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_name_of_topson_bare_equal_function sym_gsh
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_gsh
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_gsh
    end
;;

let is_let_string_off_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_string_off_equal_function sym_gsh
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_gsh
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_gsh
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_gsh
    end
;;

let is_let_abbreviate_grandson_bare sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_abbreviate_grandson_bare sym_gsh
    end
;;

let is_let_abbreviate_grandson_ofstring sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_abbreviate_grandson_ofstring sym_gsh
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gsh
    end
;;

let is_let_is_grandson_bare sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_grandson_bare sym_gsh
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gsh
    end
;;

let is_let_is_grandson_ofstring sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_grandson_ofstring sym_gsh
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gsh
    end
;;

let is_let_is_topson_bare sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_topson_bare sym_gsh
    end
;;

let is_let_is_topson_ofstring sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_topson_ofstring sym_gsh
    end
;;

let is_let_abbreviate_topson_bare sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_abbreviate_topson_bare sym_gsh
    end
;;

let is_let_abbreviate_topson_ofstring sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_abbreviate_topson_ofstring sym_gsh
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gsh
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gsh
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_header_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gsh
    end
;;

let is_documentation_list_for_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_documentation_list_for_symbol sym_gsb
    end
;;

let is_try_make_of_topson_bare_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_make_of_topson_bare_with_failure_arrow sym_gsb
    end
;;

let is_try_make_of_topson_ofstring_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_make_of_topson_ofstring_with_failure_arrow sym_gsb
    end
;;

let is_try_make_of_topson_notleaf_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_make_of_topson_notleaf_with_failure_arrow sym_gsb
    end
;;

let is_try_name_of_topson_bare_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_name_of_topson_bare_with_failure_arrow sym_gsb
    end
;;

let is_try_name_of_topson_ofstring_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_name_of_topson_ofstring_with_failure_arrow sym_gsb
    end
;;

let is_try_name_of_topson_notleaf_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_name_of_topson_notleaf_with_failure_arrow sym_gsb
    end
;;

let is_try_string_off_of_topson_bare_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_string_off_of_topson_bare_with_failure_arrow sym_gsb
    end
;;

let is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gsb
    end
;;

let is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gsb
    end
;;

let is_pipe_esstring_arrow_es sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_esstring_arrow_es sym_gsb
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_esstring_arrow_es_sarg sym_gsb
    end
;;

let is_pipe_es_symbol_bare_type_constructor sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_es_symbol_bare_type_constructor sym_gsb
    end
;;

let is_pipe_es_symbol_ofstring_type_constructor sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_es_symbol_ofstring_type_constructor sym_gsb
    end
;;

let is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_is_topson_bare_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_topson_bare_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_topson_notleaf_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_topson_notleaf_symbol_off_top_symbol sym_gsb
    end
;;

let is_pipe_upgrade_name_bare_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_name_bare_function sym_gsb
    end
;;

let is_pipe_upgrade_name_notleaf_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_name_notleaf_function sym_gsb
    end
;;

let is_pipe_upgrade_name_ofstring_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_name_ofstring_function sym_gsb
    end
;;

let is_pipe_upgrade_string_off_bare_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_string_off_bare_function sym_gsb
    end
;;

let is_pipe_upgrade_string_off_notleaf_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_string_off_notleaf_function sym_gsb
    end
;;

let is_pipe_upgrade_string_off_ofstring_function sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_pipe_upgrade_string_off_ofstring_function sym_gsb
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_try_top_of_topson_with_failure_arrow sym_gsb
    end
;;

let is_upgrade_topson_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_upgrade_topson_symbol sym_gsb
    end
;;

let is_if_not_is_topson_begin_leaf_end sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_if_not_is_topson_begin_leaf_end sym_gsb
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_gsb
    end
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gsb
    end
;;

let is_upgrade_grandson_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_body_symbol_v.is_upgrade_grandson_symbol sym_gsb
    end
;;

let is_failwith_not_a_topson_notleaf sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_failwith_not_a_topson_notleaf sym_gsf
    end
;;

let is_let_underscore_print_error_failwith_make sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_make sym_gsf
    end
;;

let is_let_underscore_print_error_failwith_name sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_name sym_gsf
    end
;;

let is_let_underscore_print_error_failwith_string_off sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_string_off sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_make sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_name sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_gsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_gsf
    end
;;

let is_print_fatal_error_make sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_print_fatal_error_make sym_gsf
    end
;;

let is_print_fatal_error_name sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_print_fatal_error_name sym_gsf
    end
;;

let is_print_fatal_error_string_off sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
      let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
      Group_for_symbol_footer_symbol_v.is_print_fatal_error_string_off sym_gsf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_group_for_symbol_header_constant_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_header_symbol_v.is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh
    end
;;

let is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_header_symbol_v.is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh
    end
;;

let is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_header_symbol_v.is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh
    end
;;

let is_group_for_symbol_header_son_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_header_symbol_v.is_group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh
    end
;;

let is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsh = group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_header_symbol_v.is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh
    end
;;

let is_group_for_symbol_body_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_body_symbol_v.is_group_for_symbol_body_top_symbol_off_group_for_symbol_body_symbol sym_gsb
    end
;;

let is_group_for_symbol_body_son_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_body_symbol_v.is_group_for_symbol_body_son_symbol_off_group_for_symbol_body_symbol sym_gsb
    end
;;

let is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_body_symbol_v.is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb
    end
;;

let is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsb = group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_body_symbol_v.is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_body_symbol sym_gsb
    end
;;

let is_group_for_symbol_footer_top_symbol_off_group_for_symbol_symbol sym_gfs =
  if not (is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs)
  then false
  else
    begin
  let sym_gsf = group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs in
  Group_for_symbol_footer_symbol_v.is_group_for_symbol_footer_top_symbol_off_group_for_symbol_footer_symbol sym_gsf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh = 
  Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb = 
  Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_symbol_of_group_for_symbol_footer_symbol sym_gsf = 
  Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_gsf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let group_for_symbol_symbol_of_group_for_symbol_header_constant_symbol sym_ghc = 
  let sym_gsh = Group_for_symbol_header_symbol_v.group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol sym_ghc in
    group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst = 
  let sym_gsh = Group_for_symbol_header_symbol_v.group_for_symbol_header_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst in
    group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_header_current_top_symbol sym_gct = 
  let sym_gsh = Group_for_symbol_header_symbol_v.group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol sym_gct in
    group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_header_son_symbol sym_ghs = 
  let sym_gsh = Group_for_symbol_header_symbol_v.group_for_symbol_header_symbol_of_group_for_symbol_header_son_symbol sym_ghs in
    group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_header_son_top_symbol sym_gst = 
  let sym_gsh = Group_for_symbol_header_symbol_v.group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol sym_gst in
    group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh
;;

let group_for_symbol_symbol_of_group_for_symbol_body_top_symbol sym_gbt = 
  let sym_gsb = Group_for_symbol_body_symbol_v.group_for_symbol_body_symbol_of_group_for_symbol_body_top_symbol sym_gbt in
    group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_symbol_of_group_for_symbol_body_son_symbol sym_gbs = 
  let sym_gsb = Group_for_symbol_body_symbol_v.group_for_symbol_body_symbol_of_group_for_symbol_body_son_symbol sym_gbs in
    group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_symbol_of_group_for_symbol_body_son_top_symbol sym_gst = 
  let sym_gsb = Group_for_symbol_body_symbol_v.group_for_symbol_body_symbol_of_group_for_symbol_body_son_top_symbol sym_gst in
    group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst = 
  let sym_gsb = Group_for_symbol_body_symbol_v.group_for_symbol_body_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst in
    group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb
;;

let group_for_symbol_symbol_of_group_for_symbol_footer_top_symbol sym_gft = 
  let sym_gsf = Group_for_symbol_footer_symbol_v.group_for_symbol_footer_symbol_of_group_for_symbol_footer_top_symbol sym_gft in
    group_for_symbol_symbol_of_group_for_symbol_footer_symbol sym_gsf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_make_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = group_for_symbol_symbol_of_group_for_symbol_header_symbol Group_for_symbol_header_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;

let documentation_list_for_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.documentation_list_for_symbol;;

let try_make_of_topson_bare_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_make_of_topson_bare_with_failure_arrow;;

let try_make_of_topson_ofstring_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_make_of_topson_ofstring_with_failure_arrow;;

let try_make_of_topson_notleaf_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_make_of_topson_notleaf_with_failure_arrow;;

let try_name_of_topson_bare_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_name_of_topson_bare_with_failure_arrow;;

let try_name_of_topson_ofstring_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_name_of_topson_ofstring_with_failure_arrow;;

let try_name_of_topson_notleaf_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_name_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_bare_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_string_off_of_topson_bare_with_failure_arrow;;

let try_string_off_of_topson_notleaf_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_string_off_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_ofstring_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_string_off_of_topson_ofstring_with_failure_arrow;;

let pipe_esstring_arrow_es = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_esstring_arrow_es_sarg;;

let pipe_es_symbol_bare_type_constructor = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_es_symbol_bare_type_constructor;;

let pipe_es_symbol_ofstring_type_constructor = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_es_symbol_ofstring_type_constructor;;

let pipe_is_onlyson_bare_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_onlyson_bare_symbol_off_top_symbol;;

let pipe_is_onlyson_notleaf_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_is_onlyson_ofstring_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_onlyson_ofstring_symbol_off_top_symbol;;

let pipe_is_topson_bare_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_topson_bare_symbol_off_top_symbol;;

let pipe_is_topson_notleaf_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_topson_notleaf_symbol_off_top_symbol;;

let pipe_is_topson_ofstring_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_is_topson_ofstring_symbol_off_top_symbol;;

let pipe_onlyson_notleaf_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_topson_notleaf_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_topson_notleaf_symbol_off_top_symbol;;

let pipe_upgrade_name_bare_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_name_bare_function;;

let pipe_upgrade_name_notleaf_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_name_notleaf_function;;

let pipe_upgrade_name_ofstring_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_name_ofstring_function;;

let pipe_upgrade_string_off_bare_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_string_off_bare_function;;

let pipe_upgrade_string_off_notleaf_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_string_off_notleaf_function;;

let pipe_upgrade_string_off_ofstring_function = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.pipe_upgrade_string_off_ofstring_function;;

let try_top_of_topson_with_failure_arrow = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.upgrade_topson_symbol;;

let if_not_is_topson_begin_leaf_end = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.if_not_is_topson_begin_leaf_end;;

let if_not_is_topson_begin_notleaf_end = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.if_not_is_topson_begin_notleaf_end;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let upgrade_grandson_symbol = group_for_symbol_symbol_of_group_for_symbol_body_symbol Group_for_symbol_body_symbol_v.upgrade_grandson_symbol;;

let failwith_not_a_topson_notleaf = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.print_fatal_error_make;;

let print_fatal_error_name = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.print_fatal_error_name;;

let print_fatal_error_string_off = group_for_symbol_symbol_of_group_for_symbol_footer_symbol Group_for_symbol_footer_symbol_v.print_fatal_error_string_off;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_symbol_symbol_of_group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_symbol:Group_for_symbol_header_symbol_v:make" ->
  try group_for_symbol_symbol_of_group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_body_symbol:Group_for_symbol_body_symbol_v:make" ->
  try group_for_symbol_symbol_of_group_for_symbol_footer_symbol
      (Group_for_symbol_footer_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_footer_symbol:Group_for_symbol_footer_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_symbol_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_symbol:Group_for_symbol_symbol_v.ml:make"
;;


(** Group_for_symbol_symbol_v at 15:33:44 on 30 May 2013. created by version v1.13 of generator *)



