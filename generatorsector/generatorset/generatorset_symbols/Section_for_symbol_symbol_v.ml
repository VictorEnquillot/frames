(** {3 Section_for_symbol_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_fsh ->
    Section_for_symbol_header_symbol_v.name sym_fsh
  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_fsb ->
    Section_for_symbol_body_symbol_v.name sym_fsb
  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_fsf ->
    Section_for_symbol_footer_symbol_v.name sym_fsf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_fsh ->
  Section_for_symbol_header_symbol_v.string_off sym_fsh
  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_fsb ->
  Section_for_symbol_body_symbol_v.string_off sym_fsb
  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_fsf ->
  Section_for_symbol_footer_symbol_v.string_off sym_fsf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sfs =
  Format.sprintf "Section_for_symbol_symbol_t.%s" (String.capitalize (name sym_sfs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sfs =
  Format.sprintf "%s \"%s\"" (longname sym_sfs) (string_off sym_sfs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_symbol_header_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_fsh -> sym_fsh
  | sym_sfs -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_symbol_off_section_for_symbol_symbol"
      "Section_for_symbol_header_symbol"
      (name sym_sfs) "check"
;;

let section_for_symbol_body_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_fsb -> sym_fsb
  | sym_sfs -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_symbol_off_section_for_symbol_symbol"
      "Section_for_symbol_body_symbol"
      (name sym_sfs) "check"
;;

let section_for_symbol_footer_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_fsf -> sym_fsf
  | sym_sfs -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_footer_symbol_off_section_for_symbol_symbol"
      "Section_for_symbol_footer_symbol"
      (name sym_sfs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let section_for_symbol_header_constant_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_header_symbol_v.section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_header_symbol_v.section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_header_current_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_header_symbol_v.section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_header_son_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_header_symbol_v.section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_header_son_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_header_symbol_v.section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_body_son_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_body_son_bare_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_body_son_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_body_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_body_symbol_v.section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_footer_top_symbol_off_section_for_symbol_symbol sym_sfs = 
  let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
    Section_for_symbol_footer_symbol_v.section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_symbol_header_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_body_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol = function
  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_make_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_make_equal_function sym_fsh
    end
;;

let is_let_make_nam_s_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_make_nam_s_equal sym_fsh
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_make_of_topson_bare_nam_equal sym_fsh
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_fsh
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_fsh
    end
;;

let is_let_name_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_name_equal_function sym_fsh
    end
;;

let is_let_name_of_topson_bare_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_name_of_topson_bare_equal_function sym_fsh
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_fsh
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_fsh
    end
;;

let is_let_string_off_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_string_off_equal_function sym_fsh
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_fsh
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_fsh
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_fsh
    end
;;

let is_let_abbreviate_grandson_bare sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_abbreviate_grandson_bare sym_fsh
    end
;;

let is_let_abbreviate_grandson_ofstring sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_abbreviate_grandson_ofstring sym_fsh
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_fsh
    end
;;

let is_let_is_grandson_bare sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_grandson_bare sym_fsh
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_fsh
    end
;;

let is_let_is_grandson_ofstring sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_grandson_ofstring sym_fsh
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_fsh
    end
;;

let is_let_is_topson_bare sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_topson_bare sym_fsh
    end
;;

let is_let_is_topson_ofstring sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_topson_ofstring sym_fsh
    end
;;

let is_let_abbreviate_topson_bare sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_abbreviate_topson_bare sym_fsh
    end
;;

let is_let_abbreviate_topson_ofstring sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_abbreviate_topson_ofstring sym_fsh
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_fsh
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_fsh
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_header_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_fsh
    end
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_fsb
    end
;;

let is_if_not_is_topson_begin_bare_end sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_if_not_is_topson_begin_bare_end sym_fsb
    end
;;

let is_if_not_is_topson_begin_ofstring_end sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_if_not_is_topson_begin_ofstring_end sym_fsb
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_fsb
    end
;;

let is_upgrade_grandson_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_upgrade_grandson_symbol sym_fsb
    end
;;

let is_make_ecstring_pattern_bare_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_make_ecstring_pattern_bare_for_symbol sym_fsb
    end
;;

let is_pipe_topson_symbol_type_bare_constructors sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_pipe_topson_symbol_type_bare_constructors sym_fsb
    end
;;

let is_make_ecstring_pattern_ofstring_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_make_ecstring_pattern_ofstring_for_symbol sym_fsb
    end
;;

let is_pipe_topson_symbol_type_ofstring_constructors sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_pipe_topson_symbol_type_ofstring_constructors sym_fsb
    end
;;

let is_is_one_topson_bare_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_one_topson_bare_off_pattern_for_symbol sym_fsb
    end
;;

let is_is_one_topson_notleaf_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_one_topson_notleaf_off_pattern_for_symbol sym_fsb
    end
;;

let is_is_one_topson_ofstring_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_one_topson_ofstring_off_pattern_for_symbol sym_fsb
    end
;;

let is_is_onlyson_bare_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_onlyson_bare_off_pattern_for_symbol sym_fsb
    end
;;

let is_is_onlyson_notleaf_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_onlyson_notleaf_off_pattern_for_symbol sym_fsb
    end
;;

let is_is_onlyson_ofstring_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_is_onlyson_ofstring_off_pattern_for_symbol sym_fsb
    end
;;

let is_name_topson_pattern_bare_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_name_topson_pattern_bare_for_symbol sym_fsb
    end
;;

let is_name_topson_pattern_notleaf_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_name_topson_pattern_notleaf_for_symbol sym_fsb
    end
;;

let is_name_topson_pattern_ofstring_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_name_topson_pattern_ofstring_for_symbol sym_fsb
    end
;;

let is_one_topson_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_one_topson_off_pattern_for_symbol sym_fsb
    end
;;

let is_onlyson_off_pattern_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_onlyson_off_pattern_for_symbol sym_fsb
    end
;;

let is_string_off_topson_pattern_bare_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_string_off_topson_pattern_bare_for_symbol sym_fsb
    end
;;

let is_string_off_topson_pattern_notleaf_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_string_off_topson_pattern_notleaf_for_symbol sym_fsb
    end
;;

let is_string_off_topson_pattern_ofstring_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_string_off_topson_pattern_ofstring_for_symbol sym_fsb
    end
;;

let is_try_make_of_topson_with_failure_arrow sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_try_make_of_topson_with_failure_arrow sym_fsb
    end
;;

let is_try_name_of_topson_with_failure_arrow sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_try_name_of_topson_with_failure_arrow sym_fsb
    end
;;

let is_try_string_off_of_topson_with_failure_arrow sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_try_string_off_of_topson_with_failure_arrow sym_fsb
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_try_top_of_topson_with_failure_arrow sym_fsb
    end
;;

let is_upgrade_topson_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_upgrade_topson_symbol sym_fsb
    end
;;

let is_documentation_list_for_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_body_symbol_v.is_documentation_list_for_symbol sym_fsb
    end
;;

let is_failwith_not_a_topson_notleaf sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_failwith_not_a_topson_notleaf sym_fsf
    end
;;

let is_let_underscore_print_error_failwith_make sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_make sym_fsf
    end
;;

let is_let_underscore_print_error_failwith_name sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_name sym_fsf
    end
;;

let is_let_underscore_print_error_failwith_string_off sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_let_underscore_print_error_failwith_string_off sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_make sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_name sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_fsf
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_fsf
    end
;;

let is_print_fatal_error_make sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_print_fatal_error_make sym_fsf
    end
;;

let is_print_fatal_error_name sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_print_fatal_error_name sym_fsf
    end
;;

let is_print_fatal_error_string_off sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
      let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
      Section_for_symbol_footer_symbol_v.is_print_fatal_error_string_off sym_fsf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_section_for_symbol_header_constant_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_header_symbol_v.is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh
    end
;;

let is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_header_symbol_v.is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh
    end
;;

let is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_header_symbol_v.is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh
    end
;;

let is_section_for_symbol_header_son_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_header_symbol_v.is_section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh
    end
;;

let is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsh = section_for_symbol_header_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_header_symbol_v.is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh
    end
;;

let is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_current_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_body_son_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_son_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_son_top_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_body_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsb = section_for_symbol_body_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_body_symbol_v.is_section_for_symbol_body_top_symbol_off_section_for_symbol_body_symbol sym_fsb
    end
;;

let is_section_for_symbol_footer_top_symbol_off_section_for_symbol_symbol sym_sfs =
  if not (is_section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs)
  then false
  else
    begin
  let sym_fsf = section_for_symbol_footer_symbol_off_section_for_symbol_symbol sym_sfs in
  Section_for_symbol_footer_symbol_v.is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh = 
  Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb = 
  Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_footer_symbol sym_fsf = 
  Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_fsf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let section_for_symbol_symbol_of_section_for_symbol_header_constant_symbol sym_shc = 
  let sym_fsh = Section_for_symbol_header_symbol_v.section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol sym_shc in
    section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_header_current_son_top_symbol sym_cst = 
  let sym_fsh = Section_for_symbol_header_symbol_v.section_for_symbol_header_symbol_of_section_for_symbol_header_current_son_top_symbol sym_cst in
    section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_header_current_top_symbol sym_hct = 
  let sym_fsh = Section_for_symbol_header_symbol_v.section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol sym_hct in
    section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_header_son_symbol sym_shs = 
  let sym_fsh = Section_for_symbol_header_symbol_v.section_for_symbol_header_symbol_of_section_for_symbol_header_son_symbol sym_shs in
    section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_header_son_top_symbol sym_hst = 
  let sym_fsh = Section_for_symbol_header_symbol_v.section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol sym_hst in
    section_for_symbol_symbol_of_section_for_symbol_header_symbol sym_fsh
;;

let section_for_symbol_symbol_of_section_for_symbol_body_current_son_top_symbol sym_cst = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_current_son_top_symbol sym_cst in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_body_son_symbol sym_sbs = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_son_symbol sym_sbs in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_body_son_bare_symbol sym_bsb = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_son_bare_symbol sym_bsb in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_bso = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_bso in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_body_son_top_symbol sym_bst = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_son_top_symbol sym_bst in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_body_top_symbol sym_sbt = 
  let sym_fsb = Section_for_symbol_body_symbol_v.section_for_symbol_body_symbol_of_section_for_symbol_body_top_symbol sym_sbt in
    section_for_symbol_symbol_of_section_for_symbol_body_symbol sym_fsb
;;

let section_for_symbol_symbol_of_section_for_symbol_footer_top_symbol sym_sft = 
  let sym_fsf = Section_for_symbol_footer_symbol_v.section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol sym_sft in
    section_for_symbol_symbol_of_section_for_symbol_footer_symbol sym_fsf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_make_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = section_for_symbol_symbol_of_section_for_symbol_header_symbol Section_for_symbol_header_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let if_not_is_topson_begin_bare_end = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.if_not_is_topson_begin_bare_end;;

let if_not_is_topson_begin_ofstring_end = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.if_not_is_topson_begin_ofstring_end;;

let if_not_is_topson_begin_notleaf_end = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.if_not_is_topson_begin_notleaf_end;;

let upgrade_grandson_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.upgrade_grandson_symbol;;

let make_ecstring_pattern_bare_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.make_ecstring_pattern_bare_for_symbol;;

let pipe_topson_symbol_type_bare_constructors = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.pipe_topson_symbol_type_bare_constructors;;

let make_ecstring_pattern_ofstring_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.make_ecstring_pattern_ofstring_for_symbol;;

let pipe_topson_symbol_type_ofstring_constructors = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.pipe_topson_symbol_type_ofstring_constructors;;

let is_one_topson_bare_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_one_topson_bare_off_pattern_for_symbol;;

let is_one_topson_notleaf_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_one_topson_notleaf_off_pattern_for_symbol;;

let is_one_topson_ofstring_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_one_topson_ofstring_off_pattern_for_symbol;;

let is_onlyson_bare_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_onlyson_bare_off_pattern_for_symbol;;

let is_onlyson_notleaf_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_onlyson_notleaf_off_pattern_for_symbol;;

let is_onlyson_ofstring_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.is_onlyson_ofstring_off_pattern_for_symbol;;

let name_topson_pattern_bare_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.name_topson_pattern_bare_for_symbol;;

let name_topson_pattern_notleaf_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.name_topson_pattern_notleaf_for_symbol;;

let name_topson_pattern_ofstring_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.name_topson_pattern_ofstring_for_symbol;;

let one_topson_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.one_topson_off_pattern_for_symbol;;

let onlyson_off_pattern_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.onlyson_off_pattern_for_symbol;;

let string_off_topson_pattern_bare_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.string_off_topson_pattern_bare_for_symbol;;

let string_off_topson_pattern_notleaf_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.string_off_topson_pattern_notleaf_for_symbol;;

let string_off_topson_pattern_ofstring_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.string_off_topson_pattern_ofstring_for_symbol;;

let try_make_of_topson_with_failure_arrow = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.try_make_of_topson_with_failure_arrow;;

let try_name_of_topson_with_failure_arrow = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.try_name_of_topson_with_failure_arrow;;

let try_string_off_of_topson_with_failure_arrow = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.try_string_off_of_topson_with_failure_arrow;;

let try_top_of_topson_with_failure_arrow = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.upgrade_topson_symbol;;

let documentation_list_for_symbol = section_for_symbol_symbol_of_section_for_symbol_body_symbol Section_for_symbol_body_symbol_v.documentation_list_for_symbol;;

let failwith_not_a_topson_notleaf = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.print_fatal_error_make;;

let print_fatal_error_name = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.print_fatal_error_name;;

let print_fatal_error_string_off = section_for_symbol_symbol_of_section_for_symbol_footer_symbol Section_for_symbol_footer_symbol_v.print_fatal_error_string_off;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_symbol_symbol_of_section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_symbol:Section_for_symbol_header_symbol_v:make" ->
  try section_for_symbol_symbol_of_section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_symbol:Section_for_symbol_body_symbol_v:make" ->
  try section_for_symbol_symbol_of_section_for_symbol_footer_symbol
      (Section_for_symbol_footer_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_footer_symbol:Section_for_symbol_footer_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_symbol_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_symbol:Section_for_symbol_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



