(** {3 Camlline_for_formula_uno_builder_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Camlline_for_formula_uno_builder_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders -> "double_quote_builders"
  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in -> "let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in"
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in -> "let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in"
  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal -> "let_soi_ab_l_equal"
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> "list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2"
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l -> "list_dot_iter_f_of_tag_ab_tag_ab_l"
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> "list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2"
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l -> "list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l"
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l -> "list_dot_map_f_of_tag_ab_tag_ab_l"
  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l -> "tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders -> ""
  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in -> ""
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in -> ""
  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal -> ""
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> ""
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l -> ""
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> ""
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l -> ""
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l -> ""
  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fub =
  Format.sprintf "Camlline_for_formula_uno_builder_symbol_t.%s" (String.capitalize (name sym_fub))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fub =
  Format.sprintf "%s \"%s\"" (longname sym_fub) (string_off sym_fub)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_double_quote_builders = function
  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders -> true
  | _ -> false
;;

let is_let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in = function
  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in -> true
  | _ -> false
;;

let is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in = function
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in -> true
  | _ -> false
;;

let is_let_soi_ab_l_equal = function
  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal -> true
  | _ -> false
;;

let is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = function
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> true
  | _ -> false
;;

let is_list_dot_iter_f_of_tag_ab_tag_ab_l = function
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l -> true
  | _ -> false
;;

let is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = function
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 -> true
  | _ -> false
;;

let is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l = function
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l -> true
  | _ -> false
;;

let is_list_dot_map_f_of_tag_ab_tag_ab_l = function
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l -> true
  | _ -> false
;;

let is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l = function
  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let double_quote_builders = Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders;;

let let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in = Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in;;

let let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in = Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in;;

let let_soi_ab_l_equal = Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal;;

let list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_iter_f_of_tag_ab_tag_ab_l = Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l;;

let list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l = Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l;;

let list_dot_map_f_of_tag_ab_tag_ab_l = Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l;;

let tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l = Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "double_quote_builders" -> double_quote_builders
  | "let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in" -> let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in
  | "let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in" -> let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in
  | "let_soi_ab_l_equal" -> let_soi_ab_l_equal
  | "list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2" -> list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | "list_dot_iter_f_of_tag_ab_tag_ab_l" -> list_dot_iter_f_of_tag_ab_tag_ab_l
  | "list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2" -> list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | "list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l" -> list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l
  | "list_dot_map_f_of_tag_ab_tag_ab_l" -> list_dot_map_f_of_tag_ab_tag_ab_l
  | "tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l" -> tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_uno_builder_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula_uno_builder subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_uno_builder_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_uno_builder_symbol:Camlline_for_formula_uno_builder_symbol_v.ml:make"
;;



