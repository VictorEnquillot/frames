(** {3 Group_for_formula_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_formula_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_gba ->
    Group_for_formula_body_builder_alone_symbol_v.name sym_gba
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_gbd ->
    Group_for_formula_body_builder_data_symbol_v.name sym_gbd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_gda ->
    Group_for_formula_body_data_alone_symbol_v.name sym_gda
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_gdb ->
    Group_for_formula_body_localset_builder_symbol_v.name sym_gdb
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_gdd ->
    Group_for_formula_body_localset_data_symbol_v.name sym_gdd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_gmb ->
    Group_for_formula_body_main_builder_symbol_v.name sym_gmb
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_gmd ->
    Group_for_formula_body_main_data_symbol_v.name sym_gmd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_gbs ->
    Group_for_formula_body_son_symbol_v.name sym_gbs
  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_gbt ->
    Group_for_formula_body_top_symbol_v.name sym_gbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_gba ->
  Group_for_formula_body_builder_alone_symbol_v.string_off sym_gba
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_gbd ->
  Group_for_formula_body_builder_data_symbol_v.string_off sym_gbd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_gda ->
  Group_for_formula_body_data_alone_symbol_v.string_off sym_gda
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_gdb ->
  Group_for_formula_body_localset_builder_symbol_v.string_off sym_gdb
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_gdd ->
  Group_for_formula_body_localset_data_symbol_v.string_off sym_gdd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_gmb ->
  Group_for_formula_body_main_builder_symbol_v.string_off sym_gmb
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_gmd ->
  Group_for_formula_body_main_data_symbol_v.string_off sym_gmd
  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_gbs ->
  Group_for_formula_body_son_symbol_v.string_off sym_gbs
  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_gbt ->
  Group_for_formula_body_top_symbol_v.string_off sym_gbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gfb =
  Format.sprintf "Group_for_formula_body_symbol_t.%s" (String.capitalize (name sym_gfb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gfb =
  Format.sprintf "%s \"%s\"" (longname sym_gfb) (string_off sym_gfb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_gba -> sym_gba
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_builder_alone_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_gbd -> sym_gbd
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_builder_data_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_gda -> sym_gda
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_data_alone_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_gdb -> sym_gdb
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_localset_builder_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_gdd -> sym_gdd
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_localset_data_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_gmb -> sym_gmb
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_main_builder_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_gmd -> sym_gmd
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_main_data_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_son_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_gbs -> sym_gbs
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_son_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_son_symbol"
      (name sym_gfb) "check"
;;

let group_for_formula_body_top_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_gbt -> sym_gbt
  | sym_gfb -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_body_top_symbol_off_group_for_formula_body_symbol"
      "Group_for_formula_body_top_symbol"
      (name sym_gfb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let group_for_formula_body_son_builder_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_son_top_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_son_symbol_v.group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_top_alone_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_top_symbol_v.group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_top_symbol_v.group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_top_symbol_v.group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_top_data_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_top_symbol_v.group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_top_main_symbol_off_group_for_formula_body_symbol sym_gfb = 
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
    Group_for_formula_body_top_symbol_v.group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol sym_gbt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol = function
  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_make_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gba = group_for_formula_body_builder_alone_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_builder_alone_symbol_v.is_make_builder_tag_list sym_gba
    end
;;

let is_data_formula_list sym_gfb =
  if not (is_group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbd = group_for_formula_body_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_builder_data_symbol_v.is_data_formula_list sym_gbd
    end
;;

let is_make_data_tag_list sym_gfb =
  if not (is_group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gda = group_for_formula_body_data_alone_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_data_alone_symbol_v.is_make_data_tag_list sym_gda
    end
;;

let is_localset_symbol_builder_list sym_gfb =
  if not (is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gdb = group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_localset_builder_symbol_v.is_localset_symbol_builder_list sym_gdb
    end
;;

let is_store_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gdb = group_for_formula_body_localset_builder_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_localset_builder_symbol_v.is_store_builder_tag_list sym_gdb
    end
;;

let is_localset_symbol_data_list sym_gfb =
  if not (is_group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gdd = group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_localset_data_symbol_v.is_localset_symbol_data_list sym_gdd
    end
;;

let is_store_data_tag_list sym_gfb =
  if not (is_group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gdd = group_for_formula_body_localset_data_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_localset_data_symbol_v.is_store_data_tag_list sym_gdd
    end
;;

let is_builder_node_symbol_builder_list sym_gfb =
  if not (is_group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gmb = group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_main_builder_symbol_v.is_builder_node_symbol_builder_list sym_gmb
    end
;;

let is_sole_index_builder_list sym_gfb =
  if not (is_group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gmb = group_for_formula_body_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_main_builder_symbol_v.is_sole_index_builder_list sym_gmb
    end
;;

let is_builder_stem_symbol_data_list sym_gfb =
  if not (is_group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gmd = group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_main_data_symbol_v.is_builder_stem_symbol_data_list sym_gmd
    end
;;

let is_sole_index_data_list sym_gfb =
  if not (is_group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gmd = group_for_formula_body_main_data_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_main_data_symbol_v.is_sole_index_data_list sym_gmd
    end
;;

let is_pipe_topson_formula_type_bare_one_constructor sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_pipe_topson_formula_type_bare_one_constructor sym_gbs
    end
;;

let is_pipe_topson_formula_type_ofstring_one_constructor sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_pipe_topson_formula_type_ofstring_one_constructor sym_gbs
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_gbs
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_gbs
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_gbs
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_gbs
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gbs
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gbs
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_gbs
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_gbs
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_gbs
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_gbs
    end
;;

let is_make_topson_pattern_bare_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_make_topson_pattern_bare_for_formula sym_gbs
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_son_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_gbs
    end
;;

let is_symbol_of_formula_in_name_top sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_symbol_of_formula_in_name_top sym_gbt
    end
;;

let is_symbol_of_formula_in_string_off_top sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_symbol_of_formula_in_string_off_top sym_gbt
    end
;;

let is_builder_formula_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_builder_formula_list sym_gbt
    end
;;

let is_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_builder_tag_list sym_gbt
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_builder_tag_list_of_tag_for_formula sym_gbt
    end
;;

let is_iter2_on_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_iter2_on_builder_tag_list sym_gbt
    end
;;

let is_iter_on_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_iter_on_builder_tag_list sym_gbt
    end
;;

let is_map2_on_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_map2_on_builder_tag_list sym_gbt
    end
;;

let is_map_on_builder_tag_list sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_map_on_builder_tag_list sym_gbt
    end
;;

let is_documentation_list_for_formula sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_documentation_list_for_formula sym_gbt
    end
;;

let is_data_tag_list_of_tag_for_formula sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_data_tag_list_of_tag_for_formula sym_gbt
    end
;;

let is_main_tag_off_top_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
      let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
      Group_for_formula_body_top_symbol_v.is_main_tag_off_top_symbol sym_gbt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_top_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbs = group_for_formula_body_son_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_son_symbol_v.is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_body_son_symbol sym_gbs
    end
;;

let is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_top_symbol_v.is_group_for_formula_body_top_alone_symbol_off_group_for_formula_body_top_symbol sym_gbt
    end
;;

let is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_top_symbol_v.is_group_for_formula_body_top_builder_symbol_off_group_for_formula_body_top_symbol sym_gbt
    end
;;

let is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_top_symbol_v.is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_body_top_symbol sym_gbt
    end
;;

let is_group_for_formula_body_top_data_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_top_symbol_v.is_group_for_formula_body_top_data_symbol_off_group_for_formula_body_top_symbol sym_gbt
    end
;;

let is_group_for_formula_body_top_main_symbol_off_group_for_formula_body_symbol sym_gfb =
  if not (is_group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb)
  then false
  else
    begin
  let sym_gbt = group_for_formula_body_top_symbol_off_group_for_formula_body_symbol sym_gfb in
  Group_for_formula_body_top_symbol_v.is_group_for_formula_body_top_main_symbol_off_group_for_formula_body_top_symbol sym_gbt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_formula_body_symbol_of_group_for_formula_body_builder_alone_symbol sym_gba = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_gba
;;

let group_for_formula_body_symbol_of_group_for_formula_body_builder_data_symbol sym_gbd = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_gbd
;;

let group_for_formula_body_symbol_of_group_for_formula_body_data_alone_symbol sym_gda = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_gda
;;

let group_for_formula_body_symbol_of_group_for_formula_body_localset_builder_symbol sym_gdb = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_gdb
;;

let group_for_formula_body_symbol_of_group_for_formula_body_localset_data_symbol sym_gdd = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_gdd
;;

let group_for_formula_body_symbol_of_group_for_formula_body_main_builder_symbol sym_gmb = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_gmb
;;

let group_for_formula_body_symbol_of_group_for_formula_body_main_data_symbol sym_gmd = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_gmd
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt = 
  Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_gbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let group_for_formula_body_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_top_symbol sym_gst = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_symbol sym_gst in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb = 
  let sym_gbs = Group_for_formula_body_son_symbol_v.group_for_formula_body_son_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb in
    group_for_formula_body_symbol_of_group_for_formula_body_son_symbol sym_gbs
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_alone_symbol sym_gta = 
  let sym_gbt = Group_for_formula_body_top_symbol_v.group_for_formula_body_top_symbol_of_group_for_formula_body_top_alone_symbol sym_gta in
    group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb = 
  let sym_gbt = Group_for_formula_body_top_symbol_v.group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb in
    group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd = 
  let sym_gbt = Group_for_formula_body_top_symbol_v.group_for_formula_body_top_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd in
    group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_data_symbol sym_gtd = 
  let sym_gbt = Group_for_formula_body_top_symbol_v.group_for_formula_body_top_symbol_of_group_for_formula_body_top_data_symbol sym_gtd in
    group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt
;;

let group_for_formula_body_symbol_of_group_for_formula_body_top_main_symbol sym_gtm = 
  let sym_gbt = Group_for_formula_body_top_symbol_v.group_for_formula_body_top_symbol_of_group_for_formula_body_top_main_symbol sym_gtm in
    group_for_formula_body_symbol_of_group_for_formula_body_top_symbol sym_gbt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let make_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_builder_alone_symbol Group_for_formula_body_builder_alone_symbol_v.make_builder_tag_list;;

let data_formula_list = group_for_formula_body_symbol_of_group_for_formula_body_builder_data_symbol Group_for_formula_body_builder_data_symbol_v.data_formula_list;;

let make_data_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_data_alone_symbol Group_for_formula_body_data_alone_symbol_v.make_data_tag_list;;

let localset_symbol_builder_list = group_for_formula_body_symbol_of_group_for_formula_body_localset_builder_symbol Group_for_formula_body_localset_builder_symbol_v.localset_symbol_builder_list;;

let store_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_localset_builder_symbol Group_for_formula_body_localset_builder_symbol_v.store_builder_tag_list;;

let localset_symbol_data_list = group_for_formula_body_symbol_of_group_for_formula_body_localset_data_symbol Group_for_formula_body_localset_data_symbol_v.localset_symbol_data_list;;

let store_data_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_localset_data_symbol Group_for_formula_body_localset_data_symbol_v.store_data_tag_list;;

let builder_node_symbol_builder_list = group_for_formula_body_symbol_of_group_for_formula_body_main_builder_symbol Group_for_formula_body_main_builder_symbol_v.builder_node_symbol_builder_list;;

let sole_index_builder_list = group_for_formula_body_symbol_of_group_for_formula_body_main_builder_symbol Group_for_formula_body_main_builder_symbol_v.sole_index_builder_list;;

let builder_stem_symbol_data_list = group_for_formula_body_symbol_of_group_for_formula_body_main_data_symbol Group_for_formula_body_main_data_symbol_v.builder_stem_symbol_data_list;;

let sole_index_data_list = group_for_formula_body_symbol_of_group_for_formula_body_main_data_symbol Group_for_formula_body_main_data_symbol_v.sole_index_data_list;;

let pipe_topson_formula_type_bare_one_constructor = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.pipe_topson_formula_type_bare_one_constructor;;

let pipe_topson_formula_type_ofstring_one_constructor = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.pipe_topson_formula_type_ofstring_one_constructor;;

let symbol_of_formula_topson_pattern_bare = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_son_symbol Group_for_formula_body_son_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.builder_formula_list;;

let builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.builder_tag_list;;

let builder_tag_list_of_tag_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.data_tag_list_of_tag_for_formula;;

let main_tag_off_top_symbol = group_for_formula_body_symbol_of_group_for_formula_body_top_symbol Group_for_formula_body_top_symbol_v.main_tag_off_top_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_formula_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_formula_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_formula_body_symbol_of_group_for_formula_body_builder_alone_symbol
      (Group_for_formula_body_builder_alone_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_builder_alone_symbol:Group_for_formula_body_builder_alone_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_builder_data_symbol
      (Group_for_formula_body_builder_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_builder_data_symbol:Group_for_formula_body_builder_data_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_data_alone_symbol
      (Group_for_formula_body_data_alone_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_data_alone_symbol:Group_for_formula_body_data_alone_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_localset_builder_symbol
      (Group_for_formula_body_localset_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_localset_builder_symbol:Group_for_formula_body_localset_builder_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_localset_data_symbol
      (Group_for_formula_body_localset_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_localset_data_symbol:Group_for_formula_body_localset_data_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_main_builder_symbol
      (Group_for_formula_body_main_builder_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_main_builder_symbol:Group_for_formula_body_main_builder_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_main_data_symbol
      (Group_for_formula_body_main_data_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_main_data_symbol:Group_for_formula_body_main_data_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_son_symbol
      (Group_for_formula_body_son_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_son_symbol:Group_for_formula_body_son_symbol_v:make" ->
  try group_for_formula_body_symbol_of_group_for_formula_body_top_symbol
      (Group_for_formula_body_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_body_top_symbol:Group_for_formula_body_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_formula_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_formula_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_formula_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_formula_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_formula_body subtype" nam s)
      "it does not exists"
      "Check file Group_for_formula_body_symbol_v.ml"
    in
    failwith "Not_a_group_for_formula_body_symbol:Group_for_formula_body_symbol_v.ml:make"
;;


(** Group_for_formula_body_symbol_v at 16:44:20 on 30 May 2013. created by version v1.13 of generator *)



