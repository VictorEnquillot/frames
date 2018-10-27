(** {3 Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_nwchemdata_body_node_as_aoset_onecenter_block_tag_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_nwchemdata_body_node_as_aoset_onecenter_block_tag_translator_v";
   "Needs : DELE:Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needed-by :"; 
   "What-is-it : the list of Elementary String_off translated from Nwchemdata_body_node_aoset_numerical_values String_ff";
   "How-is-it-done : by extracting each five elements :";
   "How-is-it-done : (nam_center nam_shell shell_ordinal ao_kind ao_ordinal)";
   "How-is-it-done : by skipping ao_kind";
   "How-is-it-done : by transforming shell_ordinal as nwchemdata_shell_ordinal - first_int_ordinal_of_shell_symmetry";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ndf  = nwchemdata_context_databox";
   "Abbreviation : nwc  = nwchem";
   "Abbreviation : nbn  = nwchemdata_body_node";
   "Abbreviation : nbn_cen = nwchemdata_body_node_as_aoset_center_block";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ptu  = elementary_body_parameter_tuple";
   "Abbreviation : pta  = elementary_body_parameter_tuple_aopef";
   "Abbreviation : exp  = elementary_border_parameter_aopef_exponent";
   "Abbreviation : coe  = elementary_border_parameter_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
  ]
;;

(*    Elementary_body_parameter_tuple   Nwchemdata_body_node_aoset_numerical_values            *)
(*           String_off                                   String_off                   *)                       
(*           "ne p 3 1"                    <=          "ne p 5 gaussian 1"             *)

let nwchemdata_string_off_list_of_nwchemdata_body_node_tag tag_nbn_cen =
  let soi_nbn = Tag_v.sole_index_off_tag tag_nbn_cen in

  let nam_eba =
    Nwchemdata_any_category_by_sole_index_extractor_v.nwchemdata_context_databox_string_off_off_sole_index 
      soi_nbn
  in
  let tag_ncb = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_eba in
  let tag_nwc_t = Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide tag_ncb in

  let sof_nbn_cen = Nwchemdata_body_node_tag_v.string_off tag_nbn_cen in
  let tag_nwc_cen_st = Tree_v.subtree_find_of_node_predicate_off_tree 
      (fun (s, i) -> 
	(Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_onecenter_block s)
	  &&
	(Nwchemdata_symbol_v.string_off s = sof_nbn_cen)
      )
      tag_nwc_t
  in

  let tag_nwc_anv_l = Tree_v.node_list_of_node_predicate_off_tree 
      (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_numerical_values s)
      tag_nwc_cen_st
  in

  List.map Nwchemdata_tag_v.string_off tag_nwc_anv_l 
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_nbn_cen =
  let sof_nwc_anv_l = nwchemdata_string_off_list_of_nwchemdata_body_node_tag tag_nbn_cen in
  let sof_ele_l = 
    Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v.translate
      sof_nwc_anv_l 
  in
  Doublet_list_v.make sof_ele_l sof_nwc_anv_l
;;

(** {6 Translating} *)

let translate tag_nbn_cen =
  let nam_fun = "translate" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build tag_nbn_cen in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_translator_without_register.sh on mercredi 20 avril 2016, 15:23:15 (UTC+0200) *)
