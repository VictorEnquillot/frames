(** {3 Elementary_symbol_subtree_by_nwchem_context_database_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_subtree_by_nwchem_context_database_tag_provider_v";
   "Needs : DELE:Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : BNWC:Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v";
   "Needs : TNWC:Nwchem_context_databox_tag_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Elementary_symbol Parameters";
   "What-is-it : it is Rooted by Elementary_context_databox_skeletondata_symbol";
   "What-is-it : it is a prolongation of Skeleton_symbol Tree to provide Elementary Values";
   "How-is-it-done : by getting all Elementary_body_parameter_tuple String_off from Nwchem Builder-Tree";
   "How-is-it-done : using String_off to get Nwchem Tag and build Elementary_symbol";
   "How-is-it-done : Nwchem_body_node_aoset_numerical_values <=> Elementary_body_parameter_tuple";
   "How-is-it-done : String_off is converted to the Frames Conventions of Skeleton";
   "How-is-it-done : Example : \"ne p 2 1\" <= \"ne p 4 gaussian 1\"";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ndf  = nwchem_context_databox";
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
   "Improve : Elementary_fence_units_length_by_database_name_provider_v";
   "Improve : Elementary_fence_units_energy_by_database_name_provider_v";
  ]
;;

(*    Elementary_context_databox_skeletondata               Nwchem_context_databox       *)
(*               |                                     |                                   *)
(*               |                                    ...                                  *)
(*               |                                     |                                   *)
(*    Elementary_body_parameter_tuple_aopef      Nwchem_body_node_aoset_numerical_values   *)
(*          "ne p 2 1"                      <=>          "ne p 4 gaussian 1"               *)
(*          /         \                                                                    *)
(*    Elementary_border_parameter                                                          *)
(*       (exponent | coefficient)                                                          *)


(** {6 Building} *)

let build tag_ncb =

  let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ncb in
  let tag_nwc_anv_l = List.filter 
      (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
      tag_nwc_l
  in

  let sof_nwc_anv_l = List.map Nwchem_tag_v.string_off tag_nwc_anv_l in

  let sof_ele_ptu_l = 
    Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v.translate
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

  let nam_dbo = Nwchem_context_databox_tag_v.string_off tag_ncb in
  let sym_ele_bas = Elementary_symbol_v.elementary_context_databox_skeletondata_constructor nam_dbo in

  Tree_v.make_of_node sym_ele_bas sym_ele_pta_stl 
;;

let build_n_store tag_ncb =
  build tag_ncb 
;;

let provide_without_trace tag_ncb =
  build tag_ncb
;;

let provide_with_trace tag_ncb =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_ncb in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_ncb =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_ncb
  else provide_without_trace tag_ncb
;;


