(** {3 Group_for_formula_body_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_body_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_gta ->
    Group_for_formula_body_top_alone_symbol_v.name sym_gta
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_gtb ->
    Group_for_formula_body_top_builder_symbol_v.name sym_gtb
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_gbd ->
    Group_for_formula_body_top_builder_data_symbol_v.name sym_gbd
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_gtd ->
    Group_for_formula_body_top_data_symbol_v.name sym_gtd
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_gtm ->
    Group_for_formula_body_top_main_symbol_v.name sym_gtm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_gta ->
  Group_for_formula_body_top_alone_symbol_v.string_off sym_gta
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_gtb ->
  Group_for_formula_body_top_builder_symbol_v.string_off sym_gtb
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_gbd ->
  Group_for_formula_body_top_builder_data_symbol_v.string_off sym_gbd
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_gtd ->
  Group_for_formula_body_top_data_symbol_v.string_off sym_gtd
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_gtm ->
  Group_for_formula_body_top_main_symbol_v.string_off sym_gtm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gbt =
  Format.sprintf "Group_for_formula_body_top_symbol_t.%s" (String.capitalize (name sym_gbt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gbt =
  Format.sprintf "%s \"%s\"" (longname sym_gbt) (string_off sym_gbt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_gta -> sym_gta
  | sym_gbt -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol"
      "Group_for_formula_body_top_alone_symbol"
      (name sym_gbt) "check"
;;

let group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_gtb -> sym_gtb
  | sym_gbt -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol"
      "Group_for_formula_body_top_builder_symbol"
      (name sym_gbt) "check"
;;

let group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_gbd -> sym_gbd
  | sym_gbt -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol"
      "Group_for_formula_body_top_builder_data_symbol"
      (name sym_gbt) "check"
;;

let group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_gtd -> sym_gtd
  | sym_gbt -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol"
      "Group_for_formula_body_top_data_symbol"
      (name sym_gbt) "check"
;;

let group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_gtm -> sym_gtm
  | sym_gbt -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol"
      "Group_for_formula_body_top_main_symbol"
      (name sym_gbt) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol = function
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_symbol_of_formula_in_name_top sym_gbt =
  if not (is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gta = group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_alone_symbol_v.is_symbol_of_formula_in_name_top sym_gta
    end
;;

let is_symbol_of_formula_in_string_off_top sym_gbt =
  if not (is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gta = group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_alone_symbol_v.is_symbol_of_formula_in_string_off_top sym_gta
    end
;;

let is_builder_formula_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_builder_formula_list sym_gtb
    end
;;

let is_builder_tag_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_builder_tag_list sym_gtb
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_builder_tag_list_of_tag_for_formula sym_gtb
    end
;;

let is_iter2_on_builder_tag_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_iter2_on_builder_tag_list sym_gtb
    end
;;

let is_iter_on_builder_tag_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_iter_on_builder_tag_list sym_gtb
    end
;;

let is_map2_on_builder_tag_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_map2_on_builder_tag_list sym_gtb
    end
;;

let is_map_on_builder_tag_list sym_gbt =
  if not (is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_symbol_v.is_map_on_builder_tag_list sym_gtb
    end
;;

let is_documentation_list_for_formula sym_gbt =
  if not (is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gbd = group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_builder_data_symbol_v.is_documentation_list_for_formula sym_gbd
    end
;;

let is_data_tag_list_of_tag_for_formula sym_gbt =
  if not (is_group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtd = group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_data_symbol_v.is_data_tag_list_of_tag_for_formula sym_gtd
    end
;;

let is_main_tag_off_top_symbol sym_gbt =
  if not (is_group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol sym_gbt)
  then false
  else
    begin
      let sym_gtm = group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol sym_gbt in
      Group_for_formula_body_top_main_symbol_v.is_main_tag_off_top_symbol sym_gtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_formula_body_top_symbol_of_group_for_formula_body_top_alone_symbol sym_gta = 
  Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_gta
;;

let group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb = 
  Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_gtb
;;

let group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd = 
  Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_gbd
;;

let group_for_formula_body_top_symbol_of_group_for_formula_body_top_data_symbol sym_gtd = 
  Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_gtd
;;

let group_for_formula_body_top_symbol_of_group_for_formula_body_top_main_symbol sym_gtm = 
  Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_gtm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let symbol_of_formula_in_name_top = group_for_formula_body_top_symbol_of_group_for_formula_body_top_alone_symbol Group_for_formula_body_top_alone_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = group_for_formula_body_top_symbol_of_group_for_formula_body_top_alone_symbol Group_for_formula_body_top_alone_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.builder_formula_list;;

let builder_tag_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.builder_tag_list;;

let builder_tag_list_of_tag_for_formula = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol Group_for_formula_body_top_builder_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_data_symbol Group_for_formula_body_top_builder_data_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = group_for_formula_body_top_symbol_of_group_for_formula_body_top_data_symbol Group_for_formula_body_top_data_symbol_v.data_tag_list_of_tag_for_formula;;

let main_tag_off_top_symbol = group_for_formula_body_top_symbol_of_group_for_formula_body_top_main_symbol Group_for_formula_body_top_main_symbol_v.main_tag_off_top_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_body_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_body_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_formula_body_top_symbol_of_group_for_formula_body_top_alone_symbol
      (Group_for_formula_body_top_alone_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_alone_symbol:Group_for_formula_body_top_alone_symbol_v:make" ->
  try group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol
      (Group_for_formula_body_top_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_builder_symbol:Group_for_formula_body_top_builder_symbol_v:make" ->
  try group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_data_symbol
      (Group_for_formula_body_top_builder_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_builder_data_symbol:Group_for_formula_body_top_builder_data_symbol_v:make" ->
  try group_for_formula_body_top_symbol_of_group_for_formula_body_top_data_symbol
      (Group_for_formula_body_top_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_data_symbol:Group_for_formula_body_top_data_symbol_v:make" ->
  try group_for_formula_body_top_symbol_of_group_for_formula_body_top_main_symbol
      (Group_for_formula_body_top_main_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_main_symbol:Group_for_formula_body_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_formula_body_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_body_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_body_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_body_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula_body_top subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_body_top_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_body_top_symbol:Group_for_formula_body_top_symbol_v.ml:make"
;;


(** Group_for_formula_body_top_symbol_v at 15:33:16 on 30 May 2013. created by version v1.13 of generator *)



