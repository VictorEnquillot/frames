(** {3 Group_for_any_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_any_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_any_symbol_t.Group_for_any_header_symbol sym_gah ->
    Group_for_any_header_symbol_v.name sym_gah
  | Group_for_any_symbol_t.Group_for_any_body_symbol sym_gab ->
    Group_for_any_body_symbol_v.name sym_gab
  | Group_for_any_symbol_t.Group_for_any_footer_symbol sym_gaf ->
    Group_for_any_footer_symbol_v.name sym_gaf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_any_symbol_t.Group_for_any_header_symbol sym_gah ->
  Group_for_any_header_symbol_v.string_off sym_gah
  | Group_for_any_symbol_t.Group_for_any_body_symbol sym_gab ->
  Group_for_any_body_symbol_v.string_off sym_gab
  | Group_for_any_symbol_t.Group_for_any_footer_symbol sym_gaf ->
  Group_for_any_footer_symbol_v.string_off sym_gaf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gfa =
  Format.sprintf "Group_for_any_symbol_t.%s" (String.capitalize (name sym_gfa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gfa =
  Format.sprintf "%s \"%s\"" (longname sym_gfa) (string_off sym_gfa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_any_header_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_header_symbol sym_gah -> sym_gah
  | sym_gfa -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_header_symbol_off_group_for_any_symbol"
      "Group_for_any_header_symbol"
      (name sym_gfa) "check"
;;

let group_for_any_body_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_body_symbol sym_gab -> sym_gab
  | sym_gfa -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_body_symbol_off_group_for_any_symbol"
      "Group_for_any_body_symbol"
      (name sym_gfa) "check"
;;

let group_for_any_footer_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_footer_symbol sym_gaf -> sym_gaf
  | sym_gfa -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_footer_symbol_off_group_for_any_symbol"
      "Group_for_any_footer_symbol"
      (name sym_gfa) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let group_for_any_header_constant_symbol_off_group_for_any_symbol sym_gfa = 
  let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
    Group_for_any_header_symbol_v.group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah
;;

let group_for_any_header_top_symbol_off_group_for_any_symbol sym_gfa = 
  let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
    Group_for_any_header_symbol_v.group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah
;;

let group_for_any_body_son_symbol_off_group_for_any_symbol sym_gfa = 
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
    Group_for_any_body_symbol_v.group_for_any_body_son_symbol_off_group_for_any_body_symbol sym_gab
;;

let group_for_any_body_top_symbol_off_group_for_any_symbol sym_gfa = 
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
    Group_for_any_body_symbol_v.group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab
;;

let group_for_any_body_top_main_symbol_off_group_for_any_symbol sym_gfa = 
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
    Group_for_any_body_symbol_v.group_for_any_body_top_main_symbol_off_group_for_any_body_symbol sym_gab
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_any_header_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_header_symbol _ -> true
  | _ -> false
;;

let is_group_for_any_body_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_body_symbol _ -> true
  | _ -> false
;;

let is_group_for_any_footer_symbol_off_group_for_any_symbol = function
  | Group_for_any_symbol_t.Group_for_any_footer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_documentation sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_documentation sym_gah
    end
;;

let is_let_nam_cod_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_nam_cod_equal sym_gah
    end
;;

let is_type_et_any_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_type_et_any_equal sym_gah
    end
;;

let is_camlfile_title sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_camlfile_title sym_gah
    end
;;

let is_item_title sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_item_title sym_gah
    end
;;

let is_let_fullname_argument_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_fullname_argument_equal sym_gah
    end
;;

let is_let_longname_argument_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_longname_argument_equal sym_gah
    end
;;

let is_let_name_argument_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_name_argument_equal sym_gah
    end
;;

let is_let_retrieve_tag_top_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_retrieve_tag_top_equal sym_gah
    end
;;

let is_let_string_off_argument_equal sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_header_symbol_v.is_let_string_off_argument_equal sym_gah
    end
;;

let is_pipe_topson_any_type_notleaf_one_constructor sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_body_symbol_v.is_pipe_topson_any_type_notleaf_one_constructor sym_gab
    end
;;

let is_sprintf_for_any_fullname sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_body_symbol_v.is_sprintf_for_any_fullname sym_gab
    end
;;

let is_sprintf_for_any_longname sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_body_symbol_v.is_sprintf_for_any_longname sym_gab
    end
;;

let is_make_tag_top sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_body_symbol_v.is_make_tag_top sym_gab
    end
;;

let is_ending sym_gfa =
  if not (is_group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gaf = group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_footer_symbol_v.is_ending sym_gaf
    end
;;

let is_double_semicolon sym_gfa =
  if not (is_group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
      let sym_gaf = group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa in
      Group_for_any_footer_symbol_v.is_double_semicolon sym_gaf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_group_for_any_header_constant_symbol_off_group_for_any_symbol sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
  let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
  Group_for_any_header_symbol_v.is_group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah
    end
;;

let is_group_for_any_header_top_symbol_off_group_for_any_symbol sym_gfa =
  if not (is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
  let sym_gah = group_for_any_header_symbol_off_group_for_any_symbol sym_gfa in
  Group_for_any_header_symbol_v.is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah
    end
;;

let is_group_for_any_body_son_symbol_off_group_for_any_symbol sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
  Group_for_any_body_symbol_v.is_group_for_any_body_son_symbol_off_group_for_any_body_symbol sym_gab
    end
;;

let is_group_for_any_body_top_symbol_off_group_for_any_symbol sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
  Group_for_any_body_symbol_v.is_group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab
    end
;;

let is_group_for_any_body_top_main_symbol_off_group_for_any_symbol sym_gfa =
  if not (is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa)
  then false
  else
    begin
  let sym_gab = group_for_any_body_symbol_off_group_for_any_symbol sym_gfa in
  Group_for_any_body_symbol_v.is_group_for_any_body_top_main_symbol_off_group_for_any_body_symbol sym_gab
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_any_symbol_of_group_for_any_header_symbol sym_gah = 
  Group_for_any_symbol_t.Group_for_any_header_symbol sym_gah
;;

let group_for_any_symbol_of_group_for_any_body_symbol sym_gab = 
  Group_for_any_symbol_t.Group_for_any_body_symbol sym_gab
;;

let group_for_any_symbol_of_group_for_any_footer_symbol sym_gaf = 
  Group_for_any_symbol_t.Group_for_any_footer_symbol sym_gaf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let group_for_any_symbol_of_group_for_any_header_constant_symbol sym_ghc = 
  let sym_gah = Group_for_any_header_symbol_v.group_for_any_header_symbol_of_group_for_any_header_constant_symbol sym_ghc in
    group_for_any_symbol_of_group_for_any_header_symbol sym_gah
;;

let group_for_any_symbol_of_group_for_any_header_top_symbol sym_ght = 
  let sym_gah = Group_for_any_header_symbol_v.group_for_any_header_symbol_of_group_for_any_header_top_symbol sym_ght in
    group_for_any_symbol_of_group_for_any_header_symbol sym_gah
;;

let group_for_any_symbol_of_group_for_any_body_son_symbol sym_gbs = 
  let sym_gab = Group_for_any_body_symbol_v.group_for_any_body_symbol_of_group_for_any_body_son_symbol sym_gbs in
    group_for_any_symbol_of_group_for_any_body_symbol sym_gab
;;

let group_for_any_symbol_of_group_for_any_body_top_symbol sym_gbt = 
  let sym_gab = Group_for_any_body_symbol_v.group_for_any_body_symbol_of_group_for_any_body_top_symbol sym_gbt in
    group_for_any_symbol_of_group_for_any_body_symbol sym_gab
;;

let group_for_any_symbol_of_group_for_any_body_top_main_symbol sym_gtm = 
  let sym_gab = Group_for_any_body_symbol_v.group_for_any_body_symbol_of_group_for_any_body_top_main_symbol sym_gtm in
    group_for_any_symbol_of_group_for_any_body_symbol sym_gab
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_documentation = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_documentation;;

let let_nam_cod_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_nam_cod_equal;;

let type_et_any_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.type_et_any_equal;;

let camlfile_title = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.camlfile_title;;

let item_title = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.item_title;;

let let_fullname_argument_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_fullname_argument_equal;;

let let_longname_argument_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_longname_argument_equal;;

let let_name_argument_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_name_argument_equal;;

let let_retrieve_tag_top_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = group_for_any_symbol_of_group_for_any_header_symbol Group_for_any_header_symbol_v.let_string_off_argument_equal;;

let pipe_topson_any_type_notleaf_one_constructor = group_for_any_symbol_of_group_for_any_body_symbol Group_for_any_body_symbol_v.pipe_topson_any_type_notleaf_one_constructor;;

let sprintf_for_any_fullname = group_for_any_symbol_of_group_for_any_body_symbol Group_for_any_body_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = group_for_any_symbol_of_group_for_any_body_symbol Group_for_any_body_symbol_v.sprintf_for_any_longname;;

let make_tag_top = group_for_any_symbol_of_group_for_any_body_symbol Group_for_any_body_symbol_v.make_tag_top;;

let ending = group_for_any_symbol_of_group_for_any_footer_symbol Group_for_any_footer_symbol_v.ending;;

let double_semicolon = group_for_any_symbol_of_group_for_any_footer_symbol Group_for_any_footer_symbol_v.double_semicolon;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_any_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_any_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_any_symbol_of_group_for_any_header_symbol
      (Group_for_any_header_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_header_symbol:Group_for_any_header_symbol_v:make" ->
  try group_for_any_symbol_of_group_for_any_body_symbol
      (Group_for_any_body_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_body_symbol:Group_for_any_body_symbol_v:make" ->
  try group_for_any_symbol_of_group_for_any_footer_symbol
      (Group_for_any_footer_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_footer_symbol:Group_for_any_footer_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_any_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_any_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_any_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_any_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_any subtype" nam s)
      "it does not exists"
      "Check file Group_for_any_symbol_v.ml"
    in
    failwith "Not_a_group_for_any_symbol:Group_for_any_symbol_v.ml:make"
;;


(** Group_for_any_symbol_v at 15:32:25 on 30 May 2013. created by version v1.13 of generator *)



