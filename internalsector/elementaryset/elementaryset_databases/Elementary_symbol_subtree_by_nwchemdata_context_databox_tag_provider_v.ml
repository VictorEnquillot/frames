(** {3 Elementary_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : DELE:Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : TNWC:Nwchemdata_context_databox_tag_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Elementary_symbol Parameters";
   "What-is-it : it is Rooted by Elementary_context_databox_skeletondata_symbol";
   "What-is-it : it is a prolongation of Skeleton_symbol Tree to provide Elementary Values";
   "How-is-it-done : by getting all Elementary_body_parameter_tuple String_off from Nwchem Builder-Tree";
   "How-is-it-done : using String_off to get Nwchem Tag and build Elementary_symbol";
   "How-is-it-done : Nwchemdata_body_node_aoset_numerical_values <=> Elementary_body_parameter_tuple";
   "How-is-it-done : String_off is converted to the Frames Conventions of Skeleton";
   "How-is-it-done : Example : \"ne p 2 1\" <= \"ne p 4 gaussian 1\"";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ndf  = nwchemdata_context_databox";
   "Abbreviation : nwc  = nwchem";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ptu  = elementary_body_parameter_tuple";
   "Abbreviation : pta  = elementary_body_parameter_tuple_aopef";
   "Abbreviation : exp  = elementary_border_parameter_aopef_exponent";
   "Abbreviation : coe  = elementary_border_parameter_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stll = subtree list";
   "Abbreviation : stll = subtree list list";
   "Remark : No storage. Only Tags are stored";
   "Improve : Emsrf_by_database_name_provider_v";
   "Improve : Emsrf_by_database_name_provider_v";
  ]
;;

(*    Elementary_context_databox_skeletondata               Nwchemdata_context_databox       *)
(*               |                                     |                                   *)
(*               |                                    ...                                  *)
(*               |                                     |                                   *)
(*    Elementary_body_parameter_tuple_aopef      Nwchemdata_body_node_aoset_numerical_values   *)
(*          "ne p 2 1"                      <=>          "ne p 4 gaussian 1"               *)
(*          /         \                                                                    *)
(*    Elementary_border_parameter                                                          *)
(*       (exponent | coefficient)                                                          *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ncb =

  let tag_nwc_l = Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.provide tag_ncb in
  let tag_nwc_anv_l = List.filter 
      (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_numerical_values s)
      tag_nwc_l
  in

  let sof_nwc_anv_l = List.map Nwchemdata_tag_v.string_off tag_nwc_anv_l in

  let sof_ele_ptu_l = 
    Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v.translate
      sof_nwc_anv_l
  in

  let sym_ele_pta_l = List.map 
      Elementary_symbol_v.elementary_body_parameter_tuple_aopef_constructor 
      sof_ele_ptu_l 
  in  
  
  let sym_ele_coe_l = List.map 
      Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_constructor 
      sof_ele_ptu_l 
  in

  let sym_ele_exp_l = List.map 
      Elementary_symbol_v.elementary_border_parameter_aopef_exponent_constructor 
      sof_ele_ptu_l 
  in

  let bohr_leaf = Tree_v.make_of_leaf Elementary_symbol_v.bohr in (* Nwchem is in Bohr *)

  let sym_ele_exp_stl = List.map 
      (fun s -> Tree_v.make_of_node s [bohr_leaf])
      sym_ele_exp_l
  in

  let sym_ele_coe_stl = List.map 
      (fun s -> Tree_v.make_of_node s [bohr_leaf])
      sym_ele_coe_l
  in

  let sym_ele_pec_stll = List.map2 
    (fun e c  -> [e; c]) sym_ele_exp_stl sym_ele_coe_stl
    in

  let sym_ele_pta_stl = List.map2 Tree_v.make_of_node sym_ele_pta_l sym_ele_pec_stll in

  let nam_dbo = Nwchemdata_context_databox_tag_v.string_off tag_ncb in
  let sym_ele_bas = Elementary_symbol_v.elementary_context_databox_skeletondata_constructor nam_dbo in

  Tree_v.make_of_node sym_ele_bas sym_ele_pta_stl 
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:05 (UTC+0200) *)
