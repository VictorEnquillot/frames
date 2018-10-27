(** {3 Group_for_any_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_any_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_ghc ->
    Group_for_any_header_constant_symbol_v.name sym_ghc
  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_ght ->
    Group_for_any_header_top_symbol_v.name sym_ght
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_ghc ->
  Group_for_any_header_constant_symbol_v.string_off sym_ghc
  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_ght ->
  Group_for_any_header_top_symbol_v.string_off sym_ght
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gah =
  Format.sprintf "Group_for_any_header_symbol_t.%s" (String.capitalize (name sym_gah))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gah =
  Format.sprintf "%s \"%s\"" (longname sym_gah) (string_off sym_gah)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_any_header_constant_symbol_off_group_for_any_header_symbol = function
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_ghc -> sym_ghc
  | sym_gah -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_header_constant_symbol_off_group_for_any_header_symbol"
      "Group_for_any_header_constant_symbol"
      (name sym_gah) "check"
;;

let group_for_any_header_top_symbol_off_group_for_any_header_symbol = function
  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_ght -> sym_ght
  | sym_gah -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_header_top_symbol_off_group_for_any_header_symbol"
      "Group_for_any_header_top_symbol"
      (name sym_gah) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_any_header_constant_symbol_off_group_for_any_header_symbol = function
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol _ -> true
  | _ -> false
;;

let is_group_for_any_header_top_symbol_off_group_for_any_header_symbol = function
  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_documentation sym_gah =
  if not (is_group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ghc = group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_constant_symbol_v.is_let_documentation sym_ghc
    end
;;

let is_let_nam_cod_equal sym_gah =
  if not (is_group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ghc = group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_constant_symbol_v.is_let_nam_cod_equal sym_ghc
    end
;;

let is_type_et_any_equal sym_gah =
  if not (is_group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ghc = group_for_any_header_constant_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_constant_symbol_v.is_type_et_any_equal sym_ghc
    end
;;

let is_camlfile_title sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_camlfile_title sym_ght
    end
;;

let is_item_title sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_item_title sym_ght
    end
;;

let is_let_fullname_argument_equal sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_let_fullname_argument_equal sym_ght
    end
;;

let is_let_longname_argument_equal sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_let_longname_argument_equal sym_ght
    end
;;

let is_let_name_argument_equal sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_let_name_argument_equal sym_ght
    end
;;

let is_let_retrieve_tag_top_equal sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_let_retrieve_tag_top_equal sym_ght
    end
;;

let is_let_string_off_argument_equal sym_gah =
  if not (is_group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah)
  then false
  else
    begin
      let sym_ght = group_for_any_header_top_symbol_off_group_for_any_header_symbol sym_gah in
      Group_for_any_header_top_symbol_v.is_let_string_off_argument_equal sym_ght
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_any_header_symbol_of_group_for_any_header_constant_symbol sym_ghc = 
  Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_ghc
;;

let group_for_any_header_symbol_of_group_for_any_header_top_symbol sym_ght = 
  Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_ght
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_documentation = group_for_any_header_symbol_of_group_for_any_header_constant_symbol Group_for_any_header_constant_symbol_v.let_documentation;;

let let_nam_cod_equal = group_for_any_header_symbol_of_group_for_any_header_constant_symbol Group_for_any_header_constant_symbol_v.let_nam_cod_equal;;

let type_et_any_equal = group_for_any_header_symbol_of_group_for_any_header_constant_symbol Group_for_any_header_constant_symbol_v.type_et_any_equal;;

let camlfile_title = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.camlfile_title;;

let item_title = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.item_title;;

let let_fullname_argument_equal = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.let_fullname_argument_equal;;

let let_longname_argument_equal = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.let_longname_argument_equal;;

let let_name_argument_equal = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.let_name_argument_equal;;

let let_retrieve_tag_top_equal = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = group_for_any_header_symbol_of_group_for_any_header_top_symbol Group_for_any_header_top_symbol_v.let_string_off_argument_equal;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_any_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_any_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_any_header_symbol_of_group_for_any_header_constant_symbol
      (Group_for_any_header_constant_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_header_constant_symbol:Group_for_any_header_constant_symbol_v:make" ->
  try group_for_any_header_symbol_of_group_for_any_header_top_symbol
      (Group_for_any_header_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_header_top_symbol:Group_for_any_header_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_any_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_any_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_any_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_any_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_any_header subtype" nam s)
      "it does not exists"
      "Check file Group_for_any_header_symbol_v.ml"
    in
    failwith "Not_a_group_for_any_header_symbol:Group_for_any_header_symbol_v.ml:make"
;;


(** Group_for_any_header_symbol_v at 15:32:37 on 30 May 2013. created by version v1.13 of generator *)



