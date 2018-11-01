(** {3 Group_for_formula_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol sym_ghc ->
    Group_for_formula_header_constant_symbol_v.name sym_ghc
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol sym_gtb ->
    Group_for_formula_header_top_builder_symbol_v.name sym_gtb
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol sym_gtd ->
    Group_for_formula_header_top_data_symbol_v.name sym_gtd
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol sym_gtm ->
    Group_for_formula_header_top_main_symbol_v.name sym_gtm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol sym_ghc ->
  Group_for_formula_header_constant_symbol_v.string_off sym_ghc
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol sym_gtb ->
  Group_for_formula_header_top_builder_symbol_v.string_off sym_gtb
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol sym_gtd ->
  Group_for_formula_header_top_data_symbol_v.string_off sym_gtd
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol sym_gtm ->
  Group_for_formula_header_top_main_symbol_v.string_off sym_gtm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gfh =
  Format.sprintf "Group_for_formula_header_symbol_t.%s" (String.capitalize_ascii (name sym_gfh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gfh =
  Format.sprintf "%s \"%s\"" (longname sym_gfh) (string_off sym_gfh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol sym_ghc -> sym_ghc
  | sym_gfh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol"
      "Group_for_formula_header_constant_symbol"
      (name sym_gfh) "check"
;;

let group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol sym_gtb -> sym_gtb
  | sym_gfh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol"
      "Group_for_formula_header_top_builder_symbol"
      (name sym_gfh) "check"
;;

let group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol sym_gtd -> sym_gtd
  | sym_gfh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol"
      "Group_for_formula_header_top_data_symbol"
      (name sym_gfh) "check"
;;

let group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol sym_gtm -> sym_gtm
  | sym_gfh -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol"
      "Group_for_formula_header_top_main_symbol"
      (name sym_gfh) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol = function
  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_symbol_of_formula_equal_function sym_gfh =
  if not (is_group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_ghc = group_for_formula_header_constant_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_constant_symbol_v.is_let_symbol_of_formula_equal_function sym_ghc
    end
;;

let is_let_builder_tag_list_off_top_formula sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_builder_tag_list_off_top_formula sym_gtb
    end
;;

let is_let_builder_tag_list_off_top_tag sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_builder_tag_list_off_top_tag sym_gtb
    end
;;

let is_let_iter2_for_formula sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_iter2_for_formula sym_gtb
    end
;;

let is_let_iter_for_formula sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_iter_for_formula sym_gtb
    end
;;

let is_let_map2_for_formula sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_map2_for_formula sym_gtb
    end
;;

let is_let_map_for_formula sym_gfh =
  if not (is_group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtb = group_for_formula_header_top_builder_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_builder_symbol_v.is_let_map_for_formula sym_gtb
    end
;;

let is_let_data_tag_list_off_top_formula sym_gfh =
  if not (is_group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtd = group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_data_symbol_v.is_let_data_tag_list_off_top_formula sym_gtd
    end
;;

let is_let_data_tag_list_off_top_tag sym_gfh =
  if not (is_group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtd = group_for_formula_header_top_data_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_data_symbol_v.is_let_data_tag_list_off_top_tag sym_gtd
    end
;;

let is_let_build_n_store_basic_sons sym_gfh =
  if not (is_group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtm = group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_main_symbol_v.is_let_build_n_store_basic_sons sym_gtm
    end
;;

let is_let_build_n_store_proper_sons sym_gfh =
  if not (is_group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtm = group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_main_symbol_v.is_let_build_n_store_proper_sons sym_gtm
    end
;;

let is_let_make_arguments_equal_match_with sym_gfh =
  if not (is_group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh)
  then false
  else
    begin
      let sym_gtm = group_for_formula_header_top_main_symbol_off_group_for_formula_header_symbol sym_gfh in
      Group_for_formula_header_top_main_symbol_v.is_let_make_arguments_equal_match_with sym_gtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_formula_header_symbol_of_group_for_formula_header_constant_symbol sym_ghc = 
  Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol sym_ghc
;;

let group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol sym_gtb = 
  Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol sym_gtb
;;

let group_for_formula_header_symbol_of_group_for_formula_header_top_data_symbol sym_gtd = 
  Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol sym_gtd
;;

let group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol sym_gtm = 
  Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol sym_gtm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_symbol_of_formula_equal_function = group_for_formula_header_symbol_of_group_for_formula_header_constant_symbol Group_for_formula_header_constant_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_map2_for_formula;;

let let_map_for_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol Group_for_formula_header_top_builder_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = group_for_formula_header_symbol_of_group_for_formula_header_top_data_symbol Group_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = group_for_formula_header_symbol_of_group_for_formula_header_top_data_symbol Group_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol Group_for_formula_header_top_main_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol Group_for_formula_header_top_main_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol Group_for_formula_header_top_main_symbol_v.let_make_arguments_equal_match_with;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_formula_header_symbol_of_group_for_formula_header_constant_symbol
      (Group_for_formula_header_constant_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_header_constant_symbol:Group_for_formula_header_constant_symbol_v:make" ->
  try group_for_formula_header_symbol_of_group_for_formula_header_top_builder_symbol
      (Group_for_formula_header_top_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_header_top_builder_symbol:Group_for_formula_header_top_builder_symbol_v:make" ->
  try group_for_formula_header_symbol_of_group_for_formula_header_top_data_symbol
      (Group_for_formula_header_top_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_header_top_data_symbol:Group_for_formula_header_top_data_symbol_v:make" ->
  try group_for_formula_header_symbol_of_group_for_formula_header_top_main_symbol
      (Group_for_formula_header_top_main_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_header_top_main_symbol:Group_for_formula_header_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_formula_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula_header subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_header_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_header_symbol:Group_for_formula_header_symbol_v.ml:make"
;;


(** Group_for_formula_header_symbol_v at 15:33:29 on 30 May 2013. created by version v1.13 of generator *)



