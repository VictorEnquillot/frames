(** {3 Group_for_symbol_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_ghc ->
    Group_for_symbol_header_constant_symbol_v.name sym_ghc
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_gst ->
    Group_for_symbol_header_current_son_top_symbol_v.name sym_gst
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_gct ->
    Group_for_symbol_header_current_top_symbol_v.name sym_gct
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_ghs ->
    Group_for_symbol_header_son_symbol_v.name sym_ghs
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_gst ->
    Group_for_symbol_header_son_top_symbol_v.name sym_gst
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_ghc ->
  Group_for_symbol_header_constant_symbol_v.string_off sym_ghc
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_gst ->
  Group_for_symbol_header_current_son_top_symbol_v.string_off sym_gst
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_gct ->
  Group_for_symbol_header_current_top_symbol_v.string_off sym_gct
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_ghs ->
  Group_for_symbol_header_son_symbol_v.string_off sym_ghs
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_gst ->
  Group_for_symbol_header_son_top_symbol_v.string_off sym_gst
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gsh =
  Format.sprintf "Group_for_symbol_header_symbol_t.%s" (String.capitalize_ascii (name sym_gsh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gsh =
  Format.sprintf "%s \"%s\"" (longname sym_gsh) (string_off sym_gsh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_ghc -> sym_ghc
  | sym_gsh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol"
      "Group_for_symbol_header_constant_symbol"
      (name sym_gsh) "check"
;;

let group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_gst -> sym_gst
  | sym_gsh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol"
      "Group_for_symbol_header_current_son_top_symbol"
      (name sym_gsh) "check"
;;

let group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_gct -> sym_gct
  | sym_gsh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol"
      "Group_for_symbol_header_current_top_symbol"
      (name sym_gsh) "check"
;;

let group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_ghs -> sym_ghs
  | sym_gsh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol"
      "Group_for_symbol_header_son_symbol"
      (name sym_gsh) "check"
;;

let group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_gst -> sym_gst
  | sym_gsh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol"
      "Group_for_symbol_header_son_top_symbol"
      (name sym_gsh) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol = function
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_make_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_make_equal_function sym_ghc
    end
;;

let is_let_make_nam_s_equal sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_make_nam_s_equal sym_ghc
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_make_of_topson_bare_nam_equal sym_ghc
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_ghc
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_ghc
    end
;;

let is_let_name_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_name_equal_function sym_ghc
    end
;;

let is_let_name_of_topson_bare_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_name_of_topson_bare_equal_function sym_ghc
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_ghc
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_ghc
    end
;;

let is_let_string_off_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_string_off_equal_function sym_ghc
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_ghc
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_ghc
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_gsh =
  if not (is_group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghc = group_for_symbol_header_constant_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_constant_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_ghc
    end
;;

let is_let_abbreviate_grandson_bare sym_gsh =
  if not (is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_son_top_symbol_v.is_let_abbreviate_grandson_bare sym_gst
    end
;;

let is_let_abbreviate_grandson_ofstring sym_gsh =
  if not (is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_son_top_symbol_v.is_let_abbreviate_grandson_ofstring sym_gst
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gsh =
  if not (is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gct = group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_top_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gct
    end
;;

let is_let_is_grandson_bare sym_gsh =
  if not (is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gct = group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_top_symbol_v.is_let_is_grandson_bare sym_gct
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gsh =
  if not (is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gct = group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_top_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gct
    end
;;

let is_let_is_grandson_ofstring sym_gsh =
  if not (is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gct = group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_top_symbol_v.is_let_is_grandson_ofstring sym_gct
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gsh =
  if not (is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gct = group_for_symbol_header_current_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_current_top_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gct
    end
;;

let is_let_is_topson_bare sym_gsh =
  if not (is_group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghs = group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_symbol_v.is_let_is_topson_bare sym_ghs
    end
;;

let is_let_is_topson_ofstring sym_gsh =
  if not (is_group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_ghs = group_for_symbol_header_son_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_symbol_v.is_let_is_topson_ofstring sym_ghs
    end
;;

let is_let_abbreviate_topson_bare sym_gsh =
  if not (is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_top_symbol_v.is_let_abbreviate_topson_bare sym_gst
    end
;;

let is_let_abbreviate_topson_ofstring sym_gsh =
  if not (is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_top_symbol_v.is_let_abbreviate_topson_ofstring sym_gst
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gsh =
  if not (is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_top_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gst
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gsh =
  if not (is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_top_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gst
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gsh =
  if not (is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh)
  then false
  else
    begin
      let sym_gst = group_for_symbol_header_son_top_symbol_off_group_for_symbol_header_symbol sym_gsh in
      Group_for_symbol_header_son_top_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gst
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol sym_ghc = 
  Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_ghc
;;

let group_for_symbol_header_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst = 
  Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_gst
;;

let group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol sym_gct = 
  Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_gct
;;

let group_for_symbol_header_symbol_of_group_for_symbol_header_son_symbol sym_ghs = 
  Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_ghs
;;

let group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol sym_gst = 
  Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_gst
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_make_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = group_for_symbol_header_symbol_of_group_for_symbol_header_current_son_top_symbol Group_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = group_for_symbol_header_symbol_of_group_for_symbol_header_current_son_top_symbol Group_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol Group_for_symbol_header_current_top_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol Group_for_symbol_header_current_top_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol Group_for_symbol_header_current_top_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol Group_for_symbol_header_current_top_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol Group_for_symbol_header_current_top_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = group_for_symbol_header_symbol_of_group_for_symbol_header_son_symbol Group_for_symbol_header_son_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = group_for_symbol_header_symbol_of_group_for_symbol_header_son_symbol Group_for_symbol_header_son_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol Group_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol Group_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol Group_for_symbol_header_son_top_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol Group_for_symbol_header_son_top_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol Group_for_symbol_header_son_top_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_symbol_header_symbol_of_group_for_symbol_header_constant_symbol
      (Group_for_symbol_header_constant_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_constant_symbol:Group_for_symbol_header_constant_symbol_v:make" ->
  try group_for_symbol_header_symbol_of_group_for_symbol_header_current_son_top_symbol
      (Group_for_symbol_header_current_son_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_current_son_top_symbol:Group_for_symbol_header_current_son_top_symbol_v:make" ->
  try group_for_symbol_header_symbol_of_group_for_symbol_header_current_top_symbol
      (Group_for_symbol_header_current_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_current_top_symbol:Group_for_symbol_header_current_top_symbol_v:make" ->
  try group_for_symbol_header_symbol_of_group_for_symbol_header_son_symbol
      (Group_for_symbol_header_son_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_son_symbol:Group_for_symbol_header_son_symbol_v:make" ->
  try group_for_symbol_header_symbol_of_group_for_symbol_header_son_top_symbol
      (Group_for_symbol_header_son_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_header_son_top_symbol:Group_for_symbol_header_son_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_symbol_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol_header subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_header_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_header_symbol:Group_for_symbol_header_symbol_v.ml:make"
;;


(** Group_for_symbol_header_symbol_v at 15:34:15 on 30 May 2013. created by version v1.13 of generator *)



