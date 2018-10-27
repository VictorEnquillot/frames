(** {3 Section_for_symbol_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_shc ->
    Section_for_symbol_header_constant_symbol_v.name sym_shc
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_cst ->
    Section_for_symbol_header_current_son_top_symbol_v.name sym_cst
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_hct ->
    Section_for_symbol_header_current_top_symbol_v.name sym_hct
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_shs ->
    Section_for_symbol_header_son_symbol_v.name sym_shs
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_hst ->
    Section_for_symbol_header_son_top_symbol_v.name sym_hst
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_shc ->
  Section_for_symbol_header_constant_symbol_v.string_off sym_shc
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_cst ->
  Section_for_symbol_header_current_son_top_symbol_v.string_off sym_cst
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_hct ->
  Section_for_symbol_header_current_top_symbol_v.string_off sym_hct
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_shs ->
  Section_for_symbol_header_son_symbol_v.string_off sym_shs
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_hst ->
  Section_for_symbol_header_son_top_symbol_v.string_off sym_hst
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsh =
  Format.sprintf "Section_for_symbol_header_symbol_t.%s" (String.capitalize (name sym_fsh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsh =
  Format.sprintf "%s \"%s\"" (longname sym_fsh) (string_off sym_fsh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_shc -> sym_shc
  | sym_fsh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol"
      "Section_for_symbol_header_constant_symbol"
      (name sym_fsh) "check"
;;

let section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_cst -> sym_cst
  | sym_fsh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol"
      "Section_for_symbol_header_current_son_top_symbol"
      (name sym_fsh) "check"
;;

let section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_hct -> sym_hct
  | sym_fsh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol"
      "Section_for_symbol_header_current_top_symbol"
      (name sym_fsh) "check"
;;

let section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_shs -> sym_shs
  | sym_fsh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol"
      "Section_for_symbol_header_son_symbol"
      (name sym_fsh) "check"
;;

let section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_hst -> sym_hst
  | sym_fsh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol"
      "Section_for_symbol_header_son_top_symbol"
      (name sym_fsh) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol = function
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_make_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_make_equal_function sym_shc
    end
;;

let is_let_make_nam_s_equal sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_make_nam_s_equal sym_shc
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_make_of_topson_bare_nam_equal sym_shc
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_shc
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_shc
    end
;;

let is_let_name_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_name_equal_function sym_shc
    end
;;

let is_let_name_of_topson_bare_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_name_of_topson_bare_equal_function sym_shc
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_shc
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_shc
    end
;;

let is_let_string_off_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_string_off_equal_function sym_shc
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_shc
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_shc
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_fsh =
  if not (is_section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shc = section_for_symbol_header_constant_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_shc
    end
;;

let is_let_abbreviate_grandson_bare sym_fsh =
  if not (is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_cst = section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_son_top_symbol_v.is_let_abbreviate_grandson_bare sym_cst
    end
;;

let is_let_abbreviate_grandson_ofstring sym_fsh =
  if not (is_section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_cst = section_for_symbol_header_current_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_son_top_symbol_v.is_let_abbreviate_grandson_ofstring sym_cst
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_fsh =
  if not (is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hct = section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_top_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_hct
    end
;;

let is_let_is_grandson_bare sym_fsh =
  if not (is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hct = section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_top_symbol_v.is_let_is_grandson_bare sym_hct
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_fsh =
  if not (is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hct = section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_top_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_hct
    end
;;

let is_let_is_grandson_ofstring sym_fsh =
  if not (is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hct = section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_top_symbol_v.is_let_is_grandson_ofstring sym_hct
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_fsh =
  if not (is_section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hct = section_for_symbol_header_current_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_current_top_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_hct
    end
;;

let is_let_is_topson_bare sym_fsh =
  if not (is_section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shs = section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_symbol_v.is_let_is_topson_bare sym_shs
    end
;;

let is_let_is_topson_ofstring sym_fsh =
  if not (is_section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_shs = section_for_symbol_header_son_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_symbol_v.is_let_is_topson_ofstring sym_shs
    end
;;

let is_let_abbreviate_topson_bare sym_fsh =
  if not (is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hst = section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_top_symbol_v.is_let_abbreviate_topson_bare sym_hst
    end
;;

let is_let_abbreviate_topson_ofstring sym_fsh =
  if not (is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hst = section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_top_symbol_v.is_let_abbreviate_topson_ofstring sym_hst
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_fsh =
  if not (is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hst = section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_top_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_hst
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_fsh =
  if not (is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hst = section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_top_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_hst
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_fsh =
  if not (is_section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh)
  then false
  else
    begin
      let sym_hst = section_for_symbol_header_son_top_symbol_off_section_for_symbol_header_symbol sym_fsh in
      Section_for_symbol_header_son_top_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_hst
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol sym_shc = 
  Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_shc
;;

let section_for_symbol_header_symbol_of_section_for_symbol_header_current_son_top_symbol sym_cst = 
  Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_cst
;;

let section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol sym_hct = 
  Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_hct
;;

let section_for_symbol_header_symbol_of_section_for_symbol_header_son_symbol sym_shs = 
  Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_shs
;;

let section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol sym_hst = 
  Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_hst
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_make_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = section_for_symbol_header_symbol_of_section_for_symbol_header_current_son_top_symbol Section_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = section_for_symbol_header_symbol_of_section_for_symbol_header_current_son_top_symbol Section_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol Section_for_symbol_header_current_top_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol Section_for_symbol_header_current_top_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol Section_for_symbol_header_current_top_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol Section_for_symbol_header_current_top_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol Section_for_symbol_header_current_top_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = section_for_symbol_header_symbol_of_section_for_symbol_header_son_symbol Section_for_symbol_header_son_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = section_for_symbol_header_symbol_of_section_for_symbol_header_son_symbol Section_for_symbol_header_son_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol Section_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol Section_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol Section_for_symbol_header_son_top_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol Section_for_symbol_header_son_top_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol Section_for_symbol_header_son_top_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_symbol_header_symbol_of_section_for_symbol_header_constant_symbol
      (Section_for_symbol_header_constant_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_constant_symbol:Section_for_symbol_header_constant_symbol_v:make" ->
  try section_for_symbol_header_symbol_of_section_for_symbol_header_current_son_top_symbol
      (Section_for_symbol_header_current_son_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_current_son_top_symbol:Section_for_symbol_header_current_son_top_symbol_v:make" ->
  try section_for_symbol_header_symbol_of_section_for_symbol_header_current_top_symbol
      (Section_for_symbol_header_current_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_current_top_symbol:Section_for_symbol_header_current_top_symbol_v:make" ->
  try section_for_symbol_header_symbol_of_section_for_symbol_header_son_symbol
      (Section_for_symbol_header_son_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_son_symbol:Section_for_symbol_header_son_symbol_v:make" ->
  try section_for_symbol_header_symbol_of_section_for_symbol_header_son_top_symbol
      (Section_for_symbol_header_son_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_header_son_top_symbol:Section_for_symbol_header_son_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_symbol_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_header subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_header_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_header_symbol:Section_for_symbol_header_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_header implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



