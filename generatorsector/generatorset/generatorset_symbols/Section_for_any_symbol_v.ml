(** {3 Section_for_any_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_for_any_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_any_symbol_t.Section_for_any_body_symbol sym_sab ->
    Section_for_any_body_symbol_v.name sym_sab
  | Section_for_any_symbol_t.Section_for_any_header_symbol sym_sah ->
    Section_for_any_header_symbol_v.name sym_sah
  | Section_for_any_symbol_t.Section_for_any_footer_symbol sym_saf ->
    Section_for_any_footer_symbol_v.name sym_saf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_any_symbol_t.Section_for_any_body_symbol sym_sab ->
  Section_for_any_body_symbol_v.string_off sym_sab
  | Section_for_any_symbol_t.Section_for_any_header_symbol sym_sah ->
  Section_for_any_header_symbol_v.string_off sym_sah
  | Section_for_any_symbol_t.Section_for_any_footer_symbol sym_saf ->
  Section_for_any_footer_symbol_v.string_off sym_saf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sfa =
  Format.sprintf "Section_for_any_symbol_t.%s" (String.capitalize (name sym_sfa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sfa =
  Format.sprintf "%s \"%s\"" (longname sym_sfa) (string_off sym_sfa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_any_body_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_body_symbol sym_sab -> sym_sab
  | sym_sfa -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_body_symbol_off_section_for_any_symbol"
      "Section_for_any_body_symbol"
      (name sym_sfa) "check"
;;

let section_for_any_header_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_header_symbol sym_sah -> sym_sah
  | sym_sfa -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_header_symbol_off_section_for_any_symbol"
      "Section_for_any_header_symbol"
      (name sym_sfa) "check"
;;

let section_for_any_footer_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_footer_symbol sym_saf -> sym_saf
  | sym_sfa -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_footer_symbol_off_section_for_any_symbol"
      "Section_for_any_footer_symbol"
      (name sym_sfa) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let section_for_any_body_son_symbol_off_section_for_any_symbol sym_sfa = 
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
    Section_for_any_body_symbol_v.section_for_any_body_son_symbol_off_section_for_any_body_symbol sym_sab
;;

let section_for_any_body_top_symbol_off_section_for_any_symbol sym_sfa = 
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
    Section_for_any_body_symbol_v.section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab
;;

let section_for_any_body_top_main_symbol_off_section_for_any_symbol sym_sfa = 
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
    Section_for_any_body_symbol_v.section_for_any_body_top_main_symbol_off_section_for_any_body_symbol sym_sab
;;

let section_for_any_header_constant_symbol_off_section_for_any_symbol sym_sfa = 
  let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
    Section_for_any_header_symbol_v.section_for_any_header_constant_symbol_off_section_for_any_header_symbol sym_sah
;;

let section_for_any_header_top_symbol_off_section_for_any_symbol sym_sfa = 
  let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
    Section_for_any_header_symbol_v.section_for_any_header_top_symbol_off_section_for_any_header_symbol sym_sah
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_any_body_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_body_symbol _ -> true
  | _ -> false
;;

let is_section_for_any_header_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_header_symbol _ -> true
  | _ -> false
;;

let is_section_for_any_footer_symbol_off_section_for_any_symbol = function
  | Section_for_any_symbol_t.Section_for_any_footer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_topson_any_type_notleaf_constructors sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_body_symbol_v.is_pipe_topson_any_type_notleaf_constructors sym_sab
    end
;;

let is_sprintf_for_any_fullname sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_body_symbol_v.is_sprintf_for_any_fullname sym_sab
    end
;;

let is_sprintf_for_any_longname sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_body_symbol_v.is_sprintf_for_any_longname sym_sab
    end
;;

let is_make_tag_top sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_body_symbol_v.is_make_tag_top sym_sab
    end
;;

let is_let_documentation sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_documentation sym_sah
    end
;;

let is_let_nam_cod_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_nam_cod_equal sym_sah
    end
;;

let is_type_et_any_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_type_et_any_equal sym_sah
    end
;;

let is_camlfile_title sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_camlfile_title sym_sah
    end
;;

let is_item_title sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_item_title sym_sah
    end
;;

let is_let_name_argument_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_name_argument_equal sym_sah
    end
;;

let is_let_longname_argument_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_longname_argument_equal sym_sah
    end
;;

let is_let_fullname_argument_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_fullname_argument_equal sym_sah
    end
;;

let is_let_retrieve_tag_top_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_retrieve_tag_top_equal sym_sah
    end
;;

let is_let_string_off_argument_equal sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_header_symbol_v.is_let_string_off_argument_equal sym_sah
    end
;;

let is_ending sym_sfa =
  if not (is_section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_saf = section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_footer_symbol_v.is_ending sym_saf
    end
;;

let is_double_semicolon sym_sfa =
  if not (is_section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
      let sym_saf = section_for_any_footer_symbol_off_section_for_any_symbol sym_sfa in
      Section_for_any_footer_symbol_v.is_double_semicolon sym_saf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_section_for_any_body_son_symbol_off_section_for_any_symbol sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
  Section_for_any_body_symbol_v.is_section_for_any_body_son_symbol_off_section_for_any_body_symbol sym_sab
    end
;;

let is_section_for_any_body_top_symbol_off_section_for_any_symbol sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
  Section_for_any_body_symbol_v.is_section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab
    end
;;

let is_section_for_any_body_top_main_symbol_off_section_for_any_symbol sym_sfa =
  if not (is_section_for_any_body_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
  let sym_sab = section_for_any_body_symbol_off_section_for_any_symbol sym_sfa in
  Section_for_any_body_symbol_v.is_section_for_any_body_top_main_symbol_off_section_for_any_body_symbol sym_sab
    end
;;

let is_section_for_any_header_constant_symbol_off_section_for_any_symbol sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
  let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
  Section_for_any_header_symbol_v.is_section_for_any_header_constant_symbol_off_section_for_any_header_symbol sym_sah
    end
;;

let is_section_for_any_header_top_symbol_off_section_for_any_symbol sym_sfa =
  if not (is_section_for_any_header_symbol_off_section_for_any_symbol sym_sfa)
  then false
  else
    begin
  let sym_sah = section_for_any_header_symbol_off_section_for_any_symbol sym_sfa in
  Section_for_any_header_symbol_v.is_section_for_any_header_top_symbol_off_section_for_any_header_symbol sym_sah
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_any_symbol_of_section_for_any_body_symbol sym_sab = 
  Section_for_any_symbol_t.Section_for_any_body_symbol sym_sab
;;

let section_for_any_symbol_of_section_for_any_header_symbol sym_sah = 
  Section_for_any_symbol_t.Section_for_any_header_symbol sym_sah
;;

let section_for_any_symbol_of_section_for_any_footer_symbol sym_saf = 
  Section_for_any_symbol_t.Section_for_any_footer_symbol sym_saf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let section_for_any_symbol_of_section_for_any_body_son_symbol sym_sbs = 
  let sym_sab = Section_for_any_body_symbol_v.section_for_any_body_symbol_of_section_for_any_body_son_symbol sym_sbs in
    section_for_any_symbol_of_section_for_any_body_symbol sym_sab
;;

let section_for_any_symbol_of_section_for_any_body_top_symbol sym_sbt = 
  let sym_sab = Section_for_any_body_symbol_v.section_for_any_body_symbol_of_section_for_any_body_top_symbol sym_sbt in
    section_for_any_symbol_of_section_for_any_body_symbol sym_sab
;;

let section_for_any_symbol_of_section_for_any_body_top_main_symbol sym_stm = 
  let sym_sab = Section_for_any_body_symbol_v.section_for_any_body_symbol_of_section_for_any_body_top_main_symbol sym_stm in
    section_for_any_symbol_of_section_for_any_body_symbol sym_sab
;;

let section_for_any_symbol_of_section_for_any_header_constant_symbol sym_shc = 
  let sym_sah = Section_for_any_header_symbol_v.section_for_any_header_symbol_of_section_for_any_header_constant_symbol sym_shc in
    section_for_any_symbol_of_section_for_any_header_symbol sym_sah
;;

let section_for_any_symbol_of_section_for_any_header_top_symbol sym_sht = 
  let sym_sah = Section_for_any_header_symbol_v.section_for_any_header_symbol_of_section_for_any_header_top_symbol sym_sht in
    section_for_any_symbol_of_section_for_any_header_symbol sym_sah
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_topson_any_type_notleaf_constructors = section_for_any_symbol_of_section_for_any_body_symbol Section_for_any_body_symbol_v.pipe_topson_any_type_notleaf_constructors;;

let sprintf_for_any_fullname = section_for_any_symbol_of_section_for_any_body_symbol Section_for_any_body_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = section_for_any_symbol_of_section_for_any_body_symbol Section_for_any_body_symbol_v.sprintf_for_any_longname;;

let make_tag_top = section_for_any_symbol_of_section_for_any_body_symbol Section_for_any_body_symbol_v.make_tag_top;;

let let_documentation = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_documentation;;

let let_nam_cod_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_nam_cod_equal;;

let type_et_any_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.type_et_any_equal;;

let camlfile_title = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.camlfile_title;;

let item_title = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.item_title;;

let let_name_argument_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_name_argument_equal;;

let let_longname_argument_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_longname_argument_equal;;

let let_fullname_argument_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_fullname_argument_equal;;

let let_retrieve_tag_top_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = section_for_any_symbol_of_section_for_any_header_symbol Section_for_any_header_symbol_v.let_string_off_argument_equal;;

let ending = section_for_any_symbol_of_section_for_any_footer_symbol Section_for_any_footer_symbol_v.ending;;

let double_semicolon = section_for_any_symbol_of_section_for_any_footer_symbol Section_for_any_footer_symbol_v.double_semicolon;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_any_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_any_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_any_symbol_of_section_for_any_body_symbol
      (Section_for_any_body_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_body_symbol:Section_for_any_body_symbol_v:make" ->
  try section_for_any_symbol_of_section_for_any_header_symbol
      (Section_for_any_header_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_header_symbol:Section_for_any_header_symbol_v:make" ->
  try section_for_any_symbol_of_section_for_any_footer_symbol
      (Section_for_any_footer_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_footer_symbol:Section_for_any_footer_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_any_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_any_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_any_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_any_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_any subtype" nam s)
      "it does not exists"
      "Check file Section_for_any_symbol_v.ml"
    in
    failwith "Not_a_section_for_any_symbol:Section_for_any_symbol_v.ml:make"
;;


(** Section_for_any_symbol_v at 11:55:54 on 30 May 2013. created by version v1.13 of generator *)



