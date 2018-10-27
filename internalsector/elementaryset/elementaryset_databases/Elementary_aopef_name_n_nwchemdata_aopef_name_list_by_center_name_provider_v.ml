(** {3 Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_center_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_center_name_provider_v";
   "Needs : COM:Parameters_general_provider_v";
   "Needs : DELE:Nwchemdata_context_databox_tag_by_databox_name_provider_v";
   "Needs : DELE:Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_nwchemdata_body_node_as_aoset_onecenter_block_tag_translator_v";
   "Needed-by :"; 
   "What-is-it : the list of Aopef_string_off doublet in (Elementary format, Nwchem format for a Center Name)";
  ]
;;

(*    Elementary_body_parameter_tuple   Nwchemdata_body_node_aoset_numerical_values      *)
(*           String_off                                 String_off                   *)                       
(*           "ne p 3 1"              <=             "ne p 5 gaussian 1"              *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build nam_cen =
  let nam_dbo = Parameters_general_provider_v.provide "databox-name" in
  let tag_ndf = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_dbo in

  let tag_nwc_l = Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.provide tag_ndf in
  let tag_nwc_cen = List_v.only_element_of_predicate_off_list
      (fun (s, i) -> 
	(Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_onecenter_block s)
	  &&
	(Nwchemdata_symbol_v.string_off s = nam_cen)
      )
      tag_nwc_l
  in
  
  let tag_nbn_cen = Tag_v.map_entity 
      Nwchemdata_symbol_v.nwchemdata_body_node_symbol_off_nwchemdata_symbol 
      tag_nwc_cen 
  in

  Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_nwchemdata_body_node_as_aoset_onecenter_block_tag_translator_v.translate
    tag_nbn_cen
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_center_name_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
