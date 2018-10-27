(** {3 Group_for_formula_body_son_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_body_son_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_gsb ->
    Group_for_formula_body_son_builder_symbol_v.name sym_gsb
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_gst ->
    Group_for_formula_body_son_top_symbol_v.name sym_gst
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_gtb ->
    Group_for_formula_body_son_top_builder_symbol_v.name sym_gtb
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_gtd ->
    Group_for_formula_body_son_top_data_symbol_v.name sym_gtd
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_gtm ->
    Group_for_formula_body_son_top_main_symbol_v.name sym_gtm
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_gmb ->
    Group_for_formula_body_son_top_main_builder_symbol_v.name sym_gmb
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_gsb ->
  Group_for_formula_body_son_builder_symbol_v.string_off sym_gsb
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_gst ->
  Group_for_formula_body_son_top_symbol_v.string_off sym_gst
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_gtb ->
  Group_for_formula_body_son_top_builder_symbol_v.string_off sym_gtb
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_gtd ->
  Group_for_formula_body_son_top_data_symbol_v.string_off sym_gtd
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_gtm ->
  Group_for_formula_body_son_top_main_symbol_v.string_off sym_gtm
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_gmb ->
  Group_for_formula_body_son_top_main_builder_symbol_v.string_off sym_gmb
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gbs =
  Format.sprintf "Group_for_formula_body_son_symbol_t.%s" (String.capitalize (name sym_gbs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gbs =
  Format.sprintf "%s \"%s\"" (longname sym_gbs) (string_off sym_gbs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_gsb -> sym_gsb
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_builder_symbol"
      (name sym_gbs) "check"
;;

let group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_gst -> sym_gst
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_top_symbol"
      (name sym_gbs) "check"
;;

let group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_gtb -> sym_gtb
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_top_builder_symbol"
      (name sym_gbs) "check"
;;

let group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_gtd -> sym_gtd
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_top_data_symbol"
      (name sym_gbs) "check"
;;

let group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_gtm -> sym_gtm
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_top_main_symbol"
      (name sym_gbs) "check"
;;

let group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_gmb -> sym_gmb
  | sym_gbs -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol"
      "Group_for_formula_body_son_top_main_builder_symbol"
      (name sym_gbs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol = function
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_topson_formula_type_bare_one_constructor sym_gbs =
  if not (is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gsb = group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_builder_symbol_v.is_pipe_topson_formula_type_bare_one_constructor sym_gsb
    end
;;

let is_pipe_topson_formula_type_ofstring_one_constructor sym_gbs =
  if not (is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gsb = group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_builder_symbol_v.is_pipe_topson_formula_type_ofstring_one_constructor sym_gsb
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_gbs =
  if not (is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gst = group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_gst
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_gbs =
  if not (is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gst = group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_gst
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_gbs =
  if not (is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gst = group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_gst
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_gtb
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gtb
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtb = group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gtb
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtd = group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_gtd
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtd = group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_gtd
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtd = group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_gtd
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gtm = group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_main_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_gtm
    end
;;

let is_make_topson_pattern_bare_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gmb = group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_main_builder_symbol_v.is_make_topson_pattern_bare_for_formula sym_gmb
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_gbs =
  if not (is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs)
  then false
  else
    begin
      let sym_gmb = group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs in
      Group_for_formula_body_son_top_main_builder_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_gmb
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_gsb
;;

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol sym_gst = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_gst
;;

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_gtb
;;

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_gtd
;;

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_gtm
;;

let group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb = 
  Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_gmb
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_topson_formula_type_bare_one_constructor = group_for_formula_body_son_symbol_of_group_for_formula_body_son_builder_symbol Group_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_bare_one_constructor;;

let pipe_topson_formula_type_ofstring_one_constructor = group_for_formula_body_son_symbol_of_group_for_formula_body_son_builder_symbol Group_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_ofstring_one_constructor;;

let symbol_of_formula_topson_pattern_bare = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol Group_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol Group_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol Group_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol Group_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol Group_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol Group_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_symbol Group_for_formula_body_son_top_main_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_builder_symbol Group_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_builder_symbol Group_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_ofstring_for_formula;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_body_son_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_body_son_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_builder_symbol
      (Group_for_formula_body_son_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_builder_symbol:Group_for_formula_body_son_builder_symbol_v:make" ->
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol
      (Group_for_formula_body_son_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_top_symbol:Group_for_formula_body_son_top_symbol_v:make" ->
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol
      (Group_for_formula_body_son_top_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_top_builder_symbol:Group_for_formula_body_son_top_builder_symbol_v:make" ->
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol
      (Group_for_formula_body_son_top_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_top_data_symbol:Group_for_formula_body_son_top_data_symbol_v:make" ->
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_symbol
      (Group_for_formula_body_son_top_main_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_top_main_symbol:Group_for_formula_body_son_top_main_symbol_v:make" ->
  try group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_builder_symbol
      (Group_for_formula_body_son_top_main_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_top_main_builder_symbol:Group_for_formula_body_son_top_main_builder_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_formula_body_son_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_body_son_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_body_son_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_body_son_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula_body_son subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_body_son_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_body_son_symbol:Group_for_formula_body_son_symbol_v.ml:make"
;;


(** Group_for_formula_body_son_symbol_v at 15:33:6 on 30 May 2013. created by version v1.13 of generator *)



