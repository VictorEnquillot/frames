(** {3 Section_for_symbol_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_cst ->
    Section_for_symbol_body_current_son_top_symbol_v.name sym_cst
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_sbs ->
    Section_for_symbol_body_son_symbol_v.name sym_sbs
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_bst ->
    Section_for_symbol_body_son_top_symbol_v.name sym_bst
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_sbt ->
    Section_for_symbol_body_top_symbol_v.name sym_sbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_cst ->
  Section_for_symbol_body_current_son_top_symbol_v.string_off sym_cst
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_sbs ->
  Section_for_symbol_body_son_symbol_v.string_off sym_sbs
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_bst ->
  Section_for_symbol_body_son_top_symbol_v.string_off sym_bst
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_sbt ->
  Section_for_symbol_body_top_symbol_v.string_off sym_sbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsb =
  Format.sprintf "Section_for_symbol_body_symbol_t.%s" (String.capitalize_ascii (name sym_fsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsb =
  Format.sprintf "%s \"%s\"" (longname sym_fsb) (string_off sym_fsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_cst -> sym_cst
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol"
      "Section_for_symbol_body_current_son_top_symbol"
      (name sym_fsb) "check"
;;

let section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_sbs -> sym_sbs
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol"
      "Section_for_symbol_body_son_symbol"
      (name sym_fsb) "check"
;;

let section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_bst -> sym_bst
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol"
      "Section_for_symbol_body_son_top_symbol"
      (name sym_fsb) "check"
;;

let section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_sbt -> sym_sbt
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol"
      "Section_for_symbol_body_top_symbol"
      (name sym_fsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_symbol sym_fsb = 
  let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
    Section_for_symbol_body_son_symbol_v.section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs
;;

let section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_symbol sym_fsb = 
  let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
    Section_for_symbol_body_son_symbol_v.section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol = function
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_fsb =
  if not (is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_cst = section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_current_son_top_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_cst
    end
;;

let is_if_not_is_topson_begin_bare_end sym_fsb =
  if not (is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_cst = section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_current_son_top_symbol_v.is_if_not_is_topson_begin_bare_end sym_cst
    end
;;

let is_if_not_is_topson_begin_ofstring_end sym_fsb =
  if not (is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_cst = section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_current_son_top_symbol_v.is_if_not_is_topson_begin_ofstring_end sym_cst
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_fsb =
  if not (is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_cst = section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_current_son_top_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_cst
    end
;;

let is_upgrade_grandson_symbol sym_fsb =
  if not (is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_cst = section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_current_son_top_symbol_v.is_upgrade_grandson_symbol sym_cst
    end
;;

let is_make_ecstring_pattern_bare_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_symbol_v.is_make_ecstring_pattern_bare_for_symbol sym_sbs
    end
;;

let is_pipe_topson_symbol_type_bare_constructors sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_symbol_v.is_pipe_topson_symbol_type_bare_constructors sym_sbs
    end
;;

let is_make_ecstring_pattern_ofstring_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_symbol_v.is_make_ecstring_pattern_ofstring_for_symbol sym_sbs
    end
;;

let is_pipe_topson_symbol_type_ofstring_constructors sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_symbol_v.is_pipe_topson_symbol_type_ofstring_constructors sym_sbs
    end
;;

let is_is_one_topson_bare_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_one_topson_bare_off_pattern_for_symbol sym_bst
    end
;;

let is_is_one_topson_notleaf_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_one_topson_notleaf_off_pattern_for_symbol sym_bst
    end
;;

let is_is_one_topson_ofstring_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_one_topson_ofstring_off_pattern_for_symbol sym_bst
    end
;;

let is_is_onlyson_bare_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_onlyson_bare_off_pattern_for_symbol sym_bst
    end
;;

let is_is_onlyson_notleaf_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_onlyson_notleaf_off_pattern_for_symbol sym_bst
    end
;;

let is_is_onlyson_ofstring_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_is_onlyson_ofstring_off_pattern_for_symbol sym_bst
    end
;;

let is_name_topson_pattern_bare_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_name_topson_pattern_bare_for_symbol sym_bst
    end
;;

let is_name_topson_pattern_notleaf_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_name_topson_pattern_notleaf_for_symbol sym_bst
    end
;;

let is_name_topson_pattern_ofstring_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_name_topson_pattern_ofstring_for_symbol sym_bst
    end
;;

let is_one_topson_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_one_topson_off_pattern_for_symbol sym_bst
    end
;;

let is_onlyson_off_pattern_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_onlyson_off_pattern_for_symbol sym_bst
    end
;;

let is_string_off_topson_pattern_bare_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_string_off_topson_pattern_bare_for_symbol sym_bst
    end
;;

let is_string_off_topson_pattern_notleaf_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_string_off_topson_pattern_notleaf_for_symbol sym_bst
    end
;;

let is_string_off_topson_pattern_ofstring_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_string_off_topson_pattern_ofstring_for_symbol sym_bst
    end
;;

let is_try_make_of_topson_with_failure_arrow sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_try_make_of_topson_with_failure_arrow sym_bst
    end
;;

let is_try_name_of_topson_with_failure_arrow sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_try_name_of_topson_with_failure_arrow sym_bst
    end
;;

let is_try_string_off_of_topson_with_failure_arrow sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_try_string_off_of_topson_with_failure_arrow sym_bst
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_try_top_of_topson_with_failure_arrow sym_bst
    end
;;

let is_upgrade_topson_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_bst = section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_son_top_symbol_v.is_upgrade_topson_symbol sym_bst
    end
;;

let is_documentation_list_for_symbol sym_fsb =
  if not (is_section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_sbt = section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol sym_fsb in
      Section_for_symbol_body_top_symbol_v.is_documentation_list_for_symbol sym_sbt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
  Section_for_symbol_body_son_symbol_v.is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs
    end
;;

let is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_symbol sym_fsb =
  if not (is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_sbs = section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb in
  Section_for_symbol_body_son_symbol_v.is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol sym_cst = 
  Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_cst
;;

let section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol sym_sbs = 
  Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_sbs
;;

let section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol sym_bst = 
  Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_bst
;;

let section_for_symbol_body_symbol_of_section_for_symbol_body_top_symbol sym_sbt = 
  Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_sbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let section_for_symbol_body_symbol_of_section_for_symbol_body_son_bare_symbol sym_bsb = 
  let sym_sbs = Section_for_symbol_body_son_symbol_v.section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_bare_symbol sym_bsb in
    section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol sym_sbs
;;

let section_for_symbol_body_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_bso = 
  let sym_sbs = Section_for_symbol_body_son_symbol_v.section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_bso in
    section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol sym_sbs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol Section_for_symbol_body_current_son_top_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let if_not_is_topson_begin_bare_end = section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_bare_end;;

let if_not_is_topson_begin_ofstring_end = section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_ofstring_end;;

let if_not_is_topson_begin_notleaf_end = section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_notleaf_end;;

let upgrade_grandson_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol Section_for_symbol_body_current_son_top_symbol_v.upgrade_grandson_symbol;;

let make_ecstring_pattern_bare_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol Section_for_symbol_body_son_symbol_v.make_ecstring_pattern_bare_for_symbol;;

let pipe_topson_symbol_type_bare_constructors = section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol Section_for_symbol_body_son_symbol_v.pipe_topson_symbol_type_bare_constructors;;

let make_ecstring_pattern_ofstring_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol Section_for_symbol_body_son_symbol_v.make_ecstring_pattern_ofstring_for_symbol;;

let pipe_topson_symbol_type_ofstring_constructors = section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol Section_for_symbol_body_son_symbol_v.pipe_topson_symbol_type_ofstring_constructors;;

let is_one_topson_bare_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_one_topson_bare_off_pattern_for_symbol;;

let is_one_topson_notleaf_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_one_topson_notleaf_off_pattern_for_symbol;;

let is_one_topson_ofstring_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_one_topson_ofstring_off_pattern_for_symbol;;

let is_onlyson_bare_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_onlyson_bare_off_pattern_for_symbol;;

let is_onlyson_notleaf_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_onlyson_notleaf_off_pattern_for_symbol;;

let is_onlyson_ofstring_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.is_onlyson_ofstring_off_pattern_for_symbol;;

let name_topson_pattern_bare_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_bare_for_symbol;;

let name_topson_pattern_notleaf_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_notleaf_for_symbol;;

let name_topson_pattern_ofstring_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_ofstring_for_symbol;;

let one_topson_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.one_topson_off_pattern_for_symbol;;

let onlyson_off_pattern_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.onlyson_off_pattern_for_symbol;;

let string_off_topson_pattern_bare_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_bare_for_symbol;;

let string_off_topson_pattern_notleaf_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_notleaf_for_symbol;;

let string_off_topson_pattern_ofstring_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_ofstring_for_symbol;;

let try_make_of_topson_with_failure_arrow = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.try_make_of_topson_with_failure_arrow;;

let try_name_of_topson_with_failure_arrow = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.try_name_of_topson_with_failure_arrow;;

let try_string_off_of_topson_with_failure_arrow = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.try_string_off_of_topson_with_failure_arrow;;

let try_top_of_topson_with_failure_arrow = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol Section_for_symbol_body_son_top_symbol_v.upgrade_topson_symbol;;

let documentation_list_for_symbol = section_for_symbol_body_symbol_of_section_for_symbol_body_top_symbol Section_for_symbol_body_top_symbol_v.documentation_list_for_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol
      (Section_for_symbol_body_current_son_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_current_son_top_symbol:Section_for_symbol_body_current_son_top_symbol_v:make" ->
  try section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol
      (Section_for_symbol_body_son_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_son_symbol:Section_for_symbol_body_son_symbol_v:make" ->
  try section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol
      (Section_for_symbol_body_son_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_son_top_symbol:Section_for_symbol_body_son_top_symbol_v:make" ->
  try section_for_symbol_body_symbol_of_section_for_symbol_body_top_symbol
      (Section_for_symbol_body_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_top_symbol:Section_for_symbol_body_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_symbol_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_body subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_body_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_body_symbol:Section_for_symbol_body_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_body implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



