(** {3 Elementary_aopef_name_n_nwchem_aopef_name_list_by_center_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_aopef_name_n_nwchem_aopef_name_list_by_center_name_provider_v";
   "Needs : COM:Parameters_general_provider_v";
   "Needs : BNWC:Nwchem_context_databox_tag_by_databox_name_provider_v";
   "Needs : BNWC:Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_aopef_name_n_nwchem_aopef_name_list_by_nwchem_body_node_as_aoset_onecenter_block_tag_translator_v";
   "Needed-by :"; 
   "What-is-it : the list of Aopef_string_off doublet in (Elementary format, Nwchem format for a Center Name)";
  ]
;;

(*    Elementary_body_parameter_tuple   Nwchem_body_node_aoset_numerical_values      *)
(*           String_off                                 String_off                   *)                       
(*           "ne p 3 1"              <=             "ne p 5 gaussian 1"              *)

let build nam_cen =
  let nam_dbo = Parameters_general_provider_v.provide "databox-name" in
  let tag_ndf = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo in

  let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ndf in
  let tag_nwc_cen = List_v.only_element_of_predicate_off_list
      (fun (s, i) -> 
	(Nwchem_symbol_v.is_nwchem_body_node_aoset_onecenter_block s)
	  &&
	(Nwchem_symbol_v.string_off s = nam_cen)
      )
      tag_nwc_l
  in
  
  let tag_nbn_cen = Tag_v.map_entity 
      Nwchem_symbol_v.nwchem_body_node_symbol_off_nwchem_symbol 
      tag_nwc_cen 
  in

  Elementary_aopef_name_n_nwchem_aopef_name_list_by_nwchem_body_node_as_aoset_onecenter_block_tag_translator_v.translate
    tag_nbn_cen
;;

let build_n_store nam_cen =
  build nam_cen 
;;

let provide_without_trace nam_cen =
  build nam_cen
;;

let provide_with_trace nam_cen =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace nam_cen in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide nam_cen =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace nam_cen
  else provide_without_trace nam_cen
;;


