(** {3 Group_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_symbol_t.Group_for_any_symbol sym_gfa ->
    Group_for_any_symbol_v.name sym_gfa
  | Group_symbol_t.Group_for_formula_symbol sym_gff ->
    Group_for_formula_symbol_v.name sym_gff
  | Group_symbol_t.Group_for_symbol_symbol sym_gfs ->
    Group_for_symbol_symbol_v.name sym_gfs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_symbol_t.Group_for_any_symbol sym_gfa ->
  Group_for_any_symbol_v.string_off sym_gfa
  | Group_symbol_t.Group_for_formula_symbol sym_gff ->
  Group_for_formula_symbol_v.string_off sym_gff
  | Group_symbol_t.Group_for_symbol_symbol sym_gfs ->
  Group_for_symbol_symbol_v.string_off sym_gfs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gro =
  Format.sprintf "Group_symbol_t.%s" (String.capitalize_ascii (name sym_gro))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gro =
  Format.sprintf "%s \"%s\"" (longname sym_gro) (string_off sym_gro)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_any_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_any_symbol sym_gfa -> sym_gfa
  | sym_gro -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_symbol_off_group_symbol"
      "Group_for_any_symbol"
      (name sym_gro) "check"
;;

let group_for_formula_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_formula_symbol sym_gff -> sym_gff
  | sym_gro -> Error_messages_v.print_fatal_error
      nam_cod "group_for_formula_symbol_off_group_symbol"
      "Group_for_formula_symbol"
      (name sym_gro) "check"
;;

let group_for_symbol_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_symbol_symbol sym_gfs -> sym_gfs
  | sym_gro -> Error_messages_v.print_fatal_error
      nam_cod "group_for_symbol_symbol_off_group_symbol"
      "Group_for_symbol_symbol"
      (name sym_gro) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let group_for_any_header_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_header_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_header_constant_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_header_constant_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_header_top_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_header_top_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_body_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_body_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_body_son_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_body_son_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_body_top_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_body_top_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_body_top_main_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_body_top_main_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_any_footer_symbol_off_group_symbol sym_gro = 
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
    Group_for_any_symbol_v.group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa
;;

let group_for_formula_body_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_builder_alone_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_builder_alone_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_builder_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_builder_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_data_alone_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_data_alone_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_localset_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_localset_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_localset_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_localset_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_main_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_main_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_main_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_main_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_top_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_top_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_top_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_top_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_top_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_top_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_top_main_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_top_main_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_son_top_main_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_alone_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_alone_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_builder_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_builder_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_body_top_main_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_body_top_main_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_header_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_header_constant_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_header_constant_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_header_top_builder_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_header_top_builder_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_header_top_data_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_header_top_data_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_formula_header_top_main_symbol_off_group_symbol sym_gro = 
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
    Group_for_formula_symbol_v.group_for_formula_header_top_main_symbol_off_group_for_formula_symbol sym_gff
;;

let group_for_symbol_header_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_header_constant_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_constant_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_header_current_son_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_header_current_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_current_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_header_son_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_son_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_header_son_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_header_son_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_body_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_body_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_body_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_body_son_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_body_son_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_body_son_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_body_son_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_body_current_son_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_footer_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs
;;

let group_for_symbol_footer_top_symbol_off_group_symbol sym_gro = 
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
    Group_for_symbol_symbol_v.group_for_symbol_footer_top_symbol_off_group_for_symbol_symbol sym_gfs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_any_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_any_symbol _ -> true
  | _ -> false
;;

let is_group_for_formula_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_formula_symbol _ -> true
  | _ -> false
;;

let is_group_for_symbol_symbol_off_group_symbol = function
  | Group_symbol_t.Group_for_symbol_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_documentation sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_documentation sym_gfa
    end
;;

let is_let_nam_cod_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_nam_cod_equal sym_gfa
    end
;;

let is_type_et_any_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_type_et_any_equal sym_gfa
    end
;;

let is_camlfile_title sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_camlfile_title sym_gfa
    end
;;

let is_item_title sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_item_title sym_gfa
    end
;;

let is_let_fullname_argument_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_fullname_argument_equal sym_gfa
    end
;;

let is_let_longname_argument_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_longname_argument_equal sym_gfa
    end
;;

let is_let_name_argument_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_name_argument_equal sym_gfa
    end
;;

let is_let_retrieve_tag_top_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_retrieve_tag_top_equal sym_gfa
    end
;;

let is_let_string_off_argument_equal sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_let_string_off_argument_equal sym_gfa
    end
;;

let is_pipe_topson_any_type_notleaf_one_constructor sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_pipe_topson_any_type_notleaf_one_constructor sym_gfa
    end
;;

let is_sprintf_for_any_fullname sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_sprintf_for_any_fullname sym_gfa
    end
;;

let is_sprintf_for_any_longname sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_sprintf_for_any_longname sym_gfa
    end
;;

let is_make_tag_top sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_make_tag_top sym_gfa
    end
;;

let is_ending sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_ending sym_gfa
    end
;;

let is_double_semicolon sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
      Group_for_any_symbol_v.is_double_semicolon sym_gfa
    end
;;

let is_make_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_make_builder_tag_list sym_gff
    end
;;

let is_data_formula_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_data_formula_list sym_gff
    end
;;

let is_make_data_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_make_data_tag_list sym_gff
    end
;;

let is_localset_symbol_builder_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_localset_symbol_builder_list sym_gff
    end
;;

let is_store_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_store_builder_tag_list sym_gff
    end
;;

let is_localset_symbol_data_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_localset_symbol_data_list sym_gff
    end
;;

let is_store_data_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_store_data_tag_list sym_gff
    end
;;

let is_builder_node_symbol_builder_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_node_symbol_builder_list sym_gff
    end
;;

let is_sole_index_builder_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_sole_index_builder_list sym_gff
    end
;;

let is_builder_stem_symbol_data_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_stem_symbol_data_list sym_gff
    end
;;

let is_sole_index_data_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_sole_index_data_list sym_gff
    end
;;

let is_pipe_topson_formula_type_bare_one_constructor sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_pipe_topson_formula_type_bare_one_constructor sym_gff
    end
;;

let is_pipe_topson_formula_type_ofstring_one_constructor sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_pipe_topson_formula_type_ofstring_one_constructor sym_gff
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_gff
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_gff
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_gff
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_gff
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_gff
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_gff
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_gff
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_gff
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_gff
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_gff
    end
;;

let is_make_topson_pattern_bare_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_make_topson_pattern_bare_for_formula sym_gff
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_gff
    end
;;

let is_symbol_of_formula_in_name_top sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_symbol_of_formula_in_name_top sym_gff
    end
;;

let is_symbol_of_formula_in_string_off_top sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_symbol_of_formula_in_string_off_top sym_gff
    end
;;

let is_builder_formula_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_formula_list sym_gff
    end
;;

let is_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_tag_list sym_gff
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_builder_tag_list_of_tag_for_formula sym_gff
    end
;;

let is_iter2_on_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_iter2_on_builder_tag_list sym_gff
    end
;;

let is_iter_on_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_iter_on_builder_tag_list sym_gff
    end
;;

let is_map2_on_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_map2_on_builder_tag_list sym_gff
    end
;;

let is_map_on_builder_tag_list sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_map_on_builder_tag_list sym_gff
    end
;;

let is_documentation_list_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_documentation_list_for_formula sym_gff
    end
;;

let is_data_tag_list_of_tag_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_data_tag_list_of_tag_for_formula sym_gff
    end
;;

let is_main_tag_off_top_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_main_tag_off_top_symbol sym_gff
    end
;;

let is_let_symbol_of_formula_equal_function sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_symbol_of_formula_equal_function sym_gff
    end
;;

let is_let_builder_tag_list_off_top_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_builder_tag_list_off_top_formula sym_gff
    end
;;

let is_let_builder_tag_list_off_top_tag sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_builder_tag_list_off_top_tag sym_gff
    end
;;

let is_let_iter2_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_iter2_for_formula sym_gff
    end
;;

let is_let_iter_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_iter_for_formula sym_gff
    end
;;

let is_let_map2_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_map2_for_formula sym_gff
    end
;;

let is_let_map_for_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_map_for_formula sym_gff
    end
;;

let is_let_data_tag_list_off_top_formula sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_data_tag_list_off_top_formula sym_gff
    end
;;

let is_let_data_tag_list_off_top_tag sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_data_tag_list_off_top_tag sym_gff
    end
;;

let is_let_build_n_store_basic_sons sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_build_n_store_basic_sons sym_gff
    end
;;

let is_let_build_n_store_proper_sons sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_build_n_store_proper_sons sym_gff
    end
;;

let is_let_make_arguments_equal_match_with sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
      Group_for_formula_symbol_v.is_let_make_arguments_equal_match_with sym_gff
    end
;;

let is_let_make_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_make_equal_function sym_gfs
    end
;;

let is_let_make_nam_s_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_make_nam_s_equal sym_gfs
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_make_of_topson_bare_nam_equal sym_gfs
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_gfs
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_gfs
    end
;;

let is_let_name_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_name_equal_function sym_gfs
    end
;;

let is_let_name_of_topson_bare_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_name_of_topson_bare_equal_function sym_gfs
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_gfs
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_gfs
    end
;;

let is_let_string_off_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_string_off_equal_function sym_gfs
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_gfs
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_gfs
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_gfs
    end
;;

let is_let_abbreviate_grandson_bare sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_abbreviate_grandson_bare sym_gfs
    end
;;

let is_let_abbreviate_grandson_ofstring sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_abbreviate_grandson_ofstring sym_gfs
    end
;;

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gfs
    end
;;

let is_let_is_grandson_bare sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_grandson_bare sym_gfs
    end
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal sym_gfs
    end
;;

let is_let_is_grandson_ofstring sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_grandson_ofstring sym_gfs
    end
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal sym_gfs
    end
;;

let is_let_is_topson_bare sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_topson_bare sym_gfs
    end
;;

let is_let_is_topson_ofstring sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_topson_ofstring sym_gfs
    end
;;

let is_let_abbreviate_topson_bare sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_abbreviate_topson_bare sym_gfs
    end
;;

let is_let_abbreviate_topson_ofstring sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_abbreviate_topson_ofstring sym_gfs
    end
;;

let is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_is_topson_notleaf_symbol_off_top_symbol_equal_function sym_gfs
    end
;;

let is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_topson_notleaf_symbol_off_top_symbol_equal_function sym_gfs
    end
;;

let is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_top_symbol_of_topson_notleaf_symbol_argument_equal sym_gfs
    end
;;

let is_documentation_list_for_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_documentation_list_for_symbol sym_gfs
    end
;;

let is_try_make_of_topson_bare_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_make_of_topson_bare_with_failure_arrow sym_gfs
    end
;;

let is_try_make_of_topson_ofstring_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_make_of_topson_ofstring_with_failure_arrow sym_gfs
    end
;;

let is_try_make_of_topson_notleaf_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_make_of_topson_notleaf_with_failure_arrow sym_gfs
    end
;;

let is_try_name_of_topson_bare_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_name_of_topson_bare_with_failure_arrow sym_gfs
    end
;;

let is_try_name_of_topson_ofstring_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_name_of_topson_ofstring_with_failure_arrow sym_gfs
    end
;;

let is_try_name_of_topson_notleaf_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_name_of_topson_notleaf_with_failure_arrow sym_gfs
    end
;;

let is_try_string_off_of_topson_bare_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_string_off_of_topson_bare_with_failure_arrow sym_gfs
    end
;;

let is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_string_off_of_topson_notleaf_with_failure_arrow sym_gfs
    end
;;

let is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_string_off_of_topson_ofstring_with_failure_arrow sym_gfs
    end
;;

let is_pipe_esstring_arrow_es sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_esstring_arrow_es sym_gfs
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_esstring_arrow_es_sarg sym_gfs
    end
;;

let is_pipe_es_symbol_bare_type_constructor sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_es_symbol_bare_type_constructor sym_gfs
    end
;;

let is_pipe_es_symbol_ofstring_type_constructor sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_es_symbol_ofstring_type_constructor sym_gfs
    end
;;

let is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_onlyson_bare_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_onlyson_notleaf_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_onlyson_ofstring_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_is_topson_bare_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_topson_bare_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_topson_notleaf_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_is_topson_ofstring_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_onlyson_notleaf_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_topson_notleaf_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_topson_notleaf_symbol_off_top_symbol sym_gfs
    end
;;

let is_pipe_upgrade_name_bare_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_name_bare_function sym_gfs
    end
;;

let is_pipe_upgrade_name_notleaf_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_name_notleaf_function sym_gfs
    end
;;

let is_pipe_upgrade_name_ofstring_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_name_ofstring_function sym_gfs
    end
;;

let is_pipe_upgrade_string_off_bare_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_string_off_bare_function sym_gfs
    end
;;

let is_pipe_upgrade_string_off_notleaf_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_string_off_notleaf_function sym_gfs
    end
;;

let is_pipe_upgrade_string_off_ofstring_function sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_upgrade_string_off_ofstring_function sym_gfs
    end
;;

let is_try_top_of_topson_with_failure_arrow sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_try_top_of_topson_with_failure_arrow sym_gfs
    end
;;

let is_upgrade_topson_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_upgrade_topson_symbol sym_gfs
    end
;;

let is_if_not_is_topson_begin_leaf_end sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_if_not_is_topson_begin_leaf_end sym_gfs
    end
;;

let is_if_not_is_topson_begin_notleaf_end sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_if_not_is_topson_begin_notleaf_end sym_gfs
    end
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol sym_gfs
    end
;;

let is_upgrade_grandson_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_upgrade_grandson_symbol sym_gfs
    end
;;

let is_failwith_not_a_topson_notleaf sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_failwith_not_a_topson_notleaf sym_gfs
    end
;;

let is_let_underscore_print_error_failwith_make sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_underscore_print_error_failwith_make sym_gfs
    end
;;

let is_let_underscore_print_error_failwith_name sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_underscore_print_error_failwith_name sym_gfs
    end
;;

let is_let_underscore_print_error_failwith_string_off sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_let_underscore_print_error_failwith_string_off sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_make sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_name sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_gfs
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_gfs
    end
;;

let is_print_fatal_error_make sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_print_fatal_error_make sym_gfs
    end
;;

let is_print_fatal_error_name sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_print_fatal_error_name sym_gfs
    end
;;

let is_print_fatal_error_string_off sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
      let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
      Group_for_symbol_symbol_v.is_print_fatal_error_string_off sym_gfs
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_group_for_any_header_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_header_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_header_constant_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_header_constant_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_header_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_header_top_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_body_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_body_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_body_son_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_body_son_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_body_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_body_top_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_body_top_main_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_body_top_main_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_any_footer_symbol_off_group_symbol sym_gro =
  if not (is_group_for_any_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfa = group_for_any_symbol_off_group_symbol sym_gro in
  Group_for_any_symbol_v.is_group_for_any_footer_symbol_off_group_for_any_symbol sym_gfa
    end
;;

let is_group_for_formula_body_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_builder_alone_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_builder_alone_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_builder_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_builder_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_data_alone_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_data_alone_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_localset_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_localset_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_localset_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_localset_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_main_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_main_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_main_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_main_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_top_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_top_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_top_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_top_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_top_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_top_main_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_top_main_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_son_top_main_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_son_top_main_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_alone_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_alone_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_builder_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_builder_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_body_top_main_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_body_top_main_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_header_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_header_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_header_constant_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_header_constant_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_header_top_builder_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_header_top_builder_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_header_top_data_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_header_top_data_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_formula_header_top_main_symbol_off_group_symbol sym_gro =
  if not (is_group_for_formula_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gff = group_for_formula_symbol_off_group_symbol sym_gro in
  Group_for_formula_symbol_v.is_group_for_formula_header_top_main_symbol_off_group_for_formula_symbol sym_gff
    end
;;

let is_group_for_symbol_header_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_header_constant_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_constant_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_header_current_son_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_header_current_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_current_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_header_son_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_son_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_header_son_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_header_son_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_body_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_body_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_body_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_body_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_body_son_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_body_son_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_body_son_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_body_son_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_body_current_son_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_body_current_son_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_footer_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_footer_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;

let is_group_for_symbol_footer_top_symbol_off_group_symbol sym_gro =
  if not (is_group_for_symbol_symbol_off_group_symbol sym_gro)
  then false
  else
    begin
  let sym_gfs = group_for_symbol_symbol_off_group_symbol sym_gro in
  Group_for_symbol_symbol_v.is_group_for_symbol_footer_top_symbol_off_group_for_symbol_symbol sym_gfs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_symbol_of_group_for_any_symbol sym_gfa = 
  Group_symbol_t.Group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_formula_symbol sym_gff = 
  Group_symbol_t.Group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_symbol_symbol sym_gfs = 
  Group_symbol_t.Group_for_symbol_symbol sym_gfs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let group_symbol_of_group_for_any_header_symbol sym_gah = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_header_symbol sym_gah in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_header_constant_symbol sym_ghc = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_header_constant_symbol sym_ghc in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_header_top_symbol sym_ght = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_header_top_symbol sym_ght in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_body_symbol sym_gab = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_body_symbol sym_gab in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_body_son_symbol sym_gbs = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_body_son_symbol sym_gbs in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_body_top_symbol sym_gbt = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_body_top_symbol sym_gbt in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_body_top_main_symbol sym_gtm = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_body_top_main_symbol sym_gtm in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_any_footer_symbol sym_gaf = 
  let sym_gfa = Group_for_any_symbol_v.group_for_any_symbol_of_group_for_any_footer_symbol sym_gaf in
    group_symbol_of_group_for_any_symbol sym_gfa
;;

let group_symbol_of_group_for_formula_body_symbol sym_gfb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_symbol sym_gfb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_builder_alone_symbol sym_gba = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_builder_alone_symbol sym_gba in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_builder_data_symbol sym_gbd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_builder_data_symbol sym_gbd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_data_alone_symbol sym_gda = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_data_alone_symbol sym_gda in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_localset_builder_symbol sym_gdb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_localset_builder_symbol sym_gdb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_localset_data_symbol sym_gdd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_localset_data_symbol sym_gdd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_main_builder_symbol sym_gmb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_main_builder_symbol sym_gmb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_main_data_symbol sym_gmd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_main_data_symbol sym_gmd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_symbol sym_gbs = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_symbol sym_gbs in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_builder_symbol sym_gsb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_top_symbol sym_gst = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_top_symbol sym_gst in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gtb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_top_data_symbol sym_gtd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_top_main_symbol sym_gtm in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gmb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_symbol sym_gbt = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_symbol sym_gbt in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_alone_symbol sym_gta = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_alone_symbol sym_gta in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_builder_symbol sym_gtb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gbd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_data_symbol sym_gtd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_data_symbol sym_gtd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_body_top_main_symbol sym_gtm = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_body_top_main_symbol sym_gtm in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_header_symbol sym_gfh = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_header_symbol sym_gfh in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_header_constant_symbol sym_ghc = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_header_constant_symbol sym_ghc in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_header_top_builder_symbol sym_gtb = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_header_top_builder_symbol sym_gtb in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_header_top_data_symbol sym_gtd = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_header_top_data_symbol sym_gtd in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_formula_header_top_main_symbol sym_gtm = 
  let sym_gff = Group_for_formula_symbol_v.group_for_formula_symbol_of_group_for_formula_header_top_main_symbol sym_gtm in
    group_symbol_of_group_for_formula_symbol sym_gff
;;

let group_symbol_of_group_for_symbol_header_symbol sym_gsh = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_symbol sym_gsh in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_header_constant_symbol sym_ghc = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_constant_symbol sym_ghc in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_header_current_top_symbol sym_gct = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_current_top_symbol sym_gct in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_header_son_symbol sym_ghs = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_son_symbol sym_ghs in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_header_son_top_symbol sym_gst = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_header_son_top_symbol sym_gst in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_body_symbol sym_gsb = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_body_symbol sym_gsb in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_body_top_symbol sym_gbt = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_body_top_symbol sym_gbt in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_body_son_symbol sym_gbs = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_body_son_symbol sym_gbs in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_body_son_top_symbol sym_gst = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_body_son_top_symbol sym_gst in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_footer_symbol sym_gsf = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_footer_symbol sym_gsf in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;

let group_symbol_of_group_for_symbol_footer_top_symbol sym_gft = 
  let sym_gfs = Group_for_symbol_symbol_v.group_for_symbol_symbol_of_group_for_symbol_footer_top_symbol sym_gft in
    group_symbol_of_group_for_symbol_symbol sym_gfs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_documentation = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_documentation;;

let let_nam_cod_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_nam_cod_equal;;

let type_et_any_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.type_et_any_equal;;

let camlfile_title = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.camlfile_title;;

let item_title = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.item_title;;

let let_fullname_argument_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_fullname_argument_equal;;

let let_longname_argument_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_longname_argument_equal;;

let let_name_argument_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_name_argument_equal;;

let let_retrieve_tag_top_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_argument_equal = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.let_string_off_argument_equal;;

let pipe_topson_any_type_notleaf_one_constructor = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.pipe_topson_any_type_notleaf_one_constructor;;

let sprintf_for_any_fullname = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.sprintf_for_any_longname;;

let make_tag_top = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.make_tag_top;;

let ending = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.ending;;

let double_semicolon = group_symbol_of_group_for_any_symbol Group_for_any_symbol_v.double_semicolon;;

let make_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.make_builder_tag_list;;

let data_formula_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.data_formula_list;;

let make_data_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.make_data_tag_list;;

let localset_symbol_builder_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.localset_symbol_builder_list;;

let store_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.store_builder_tag_list;;

let localset_symbol_data_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.localset_symbol_data_list;;

let store_data_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.store_data_tag_list;;

let builder_node_symbol_builder_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_node_symbol_builder_list;;

let sole_index_builder_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.sole_index_builder_list;;

let builder_stem_symbol_data_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_stem_symbol_data_list;;

let sole_index_data_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.sole_index_data_list;;

let pipe_topson_formula_type_bare_one_constructor = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.pipe_topson_formula_type_bare_one_constructor;;

let pipe_topson_formula_type_ofstring_one_constructor = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.pipe_topson_formula_type_ofstring_one_constructor;;

let symbol_of_formula_topson_pattern_bare = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_formula_list;;

let builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_tag_list;;

let builder_tag_list_of_tag_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.data_tag_list_of_tag_for_formula;;

let main_tag_off_top_symbol = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.main_tag_off_top_symbol;;

let let_symbol_of_formula_equal_function = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_map2_for_formula;;

let let_map_for_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = group_symbol_of_group_for_formula_symbol Group_for_formula_symbol_v.let_make_arguments_equal_match_with;;

let let_make_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_make_equal_function;;

let let_make_nam_s_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_name_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_string_off_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_abbreviate_grandson_bare = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_abbreviate_grandson_bare;;

let let_abbreviate_grandson_ofstring = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_abbreviate_grandson_ofstring;;

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;

let let_is_topson_bare = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_topson_bare;;

let let_is_topson_ofstring = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_topson_ofstring;;

let let_abbreviate_topson_bare = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_abbreviate_topson_bare;;

let let_abbreviate_topson_ofstring = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_abbreviate_topson_ofstring;;

let let_is_topson_notleaf_symbol_off_top_symbol_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_topson_notleaf_symbol_off_top_symbol_equal_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function;;

let let_top_symbol_of_topson_notleaf_symbol_argument_equal = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal;;

let documentation_list_for_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.documentation_list_for_symbol;;

let try_make_of_topson_bare_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_make_of_topson_bare_with_failure_arrow;;

let try_make_of_topson_ofstring_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_make_of_topson_ofstring_with_failure_arrow;;

let try_make_of_topson_notleaf_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_make_of_topson_notleaf_with_failure_arrow;;

let try_name_of_topson_bare_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_name_of_topson_bare_with_failure_arrow;;

let try_name_of_topson_ofstring_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_name_of_topson_ofstring_with_failure_arrow;;

let try_name_of_topson_notleaf_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_name_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_bare_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_string_off_of_topson_bare_with_failure_arrow;;

let try_string_off_of_topson_notleaf_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_string_off_of_topson_notleaf_with_failure_arrow;;

let try_string_off_of_topson_ofstring_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_string_off_of_topson_ofstring_with_failure_arrow;;

let pipe_esstring_arrow_es = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_esstring_arrow_es_sarg;;

let pipe_es_symbol_bare_type_constructor = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_es_symbol_bare_type_constructor;;

let pipe_es_symbol_ofstring_type_constructor = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_es_symbol_ofstring_type_constructor;;

let pipe_is_onlyson_bare_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_onlyson_bare_symbol_off_top_symbol;;

let pipe_is_onlyson_notleaf_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_is_onlyson_ofstring_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_onlyson_ofstring_symbol_off_top_symbol;;

let pipe_is_topson_bare_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_topson_bare_symbol_off_top_symbol;;

let pipe_is_topson_notleaf_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_topson_notleaf_symbol_off_top_symbol;;

let pipe_is_topson_ofstring_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_is_topson_ofstring_symbol_off_top_symbol;;

let pipe_onlyson_notleaf_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_onlyson_notleaf_symbol_off_top_symbol;;

let pipe_topson_notleaf_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_topson_notleaf_symbol_off_top_symbol;;

let pipe_upgrade_name_bare_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_name_bare_function;;

let pipe_upgrade_name_notleaf_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_name_notleaf_function;;

let pipe_upgrade_name_ofstring_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_name_ofstring_function;;

let pipe_upgrade_string_off_bare_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_string_off_bare_function;;

let pipe_upgrade_string_off_notleaf_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_string_off_notleaf_function;;

let pipe_upgrade_string_off_ofstring_function = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_upgrade_string_off_ofstring_function;;

let try_top_of_topson_with_failure_arrow = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.upgrade_topson_symbol;;

let if_not_is_topson_begin_leaf_end = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.if_not_is_topson_begin_leaf_end;;

let if_not_is_topson_begin_notleaf_end = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.if_not_is_topson_begin_notleaf_end;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let upgrade_grandson_symbol = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.upgrade_grandson_symbol;;

let failwith_not_a_topson_notleaf = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.print_fatal_error_make;;

let print_fatal_error_name = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.print_fatal_error_name;;

let print_fatal_error_string_off = group_symbol_of_group_for_symbol_symbol Group_for_symbol_symbol_v.print_fatal_error_string_off;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_symbol_of_group_for_any_symbol
      (Group_for_any_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_symbol:Group_for_any_symbol_v:make" ->
  try group_symbol_of_group_for_formula_symbol
      (Group_for_formula_symbol_v.make nam s)
  with Failure "Not_a_group_for_formula_symbol:Group_for_formula_symbol_v:make" ->
  try group_symbol_of_group_for_symbol_symbol
      (Group_for_symbol_symbol_v.make nam s)
  with Failure "Not_a_group_for_symbol_symbol:Group_for_symbol_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group subtype" nam s)
      "it does not exists"
      "Check file Group_symbol_v.ml"
    in
    failwith "Not_a_group_symbol:Group_symbol_v.ml:make"
;;


(** Group_symbol_v at 16:46:53 on 30 May 2013. created by version v1.13 of generator *)



