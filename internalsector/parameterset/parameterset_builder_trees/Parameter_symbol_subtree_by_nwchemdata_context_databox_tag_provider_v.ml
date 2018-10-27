(** {3 Parameter_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BPAR:Nwchemdata_symbol_subtree_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Parameter_symbol Parameters";
   "What-is-it : it is Rooted by Parameter_context_databox_skeletondata_symbol";
   "What-is-it : it is a prolongation of Skeleton_symbol Tree to provide Parameter Values";
   "How-is-it-done : by getting all Parameter_set_body_parameter_tuple String_off from Nwchem Builder-Tree";
   "How-is-it-done : using String_off to get Nwchem Tag and build Parameter_symbol";
   "How-is-it-done : Nwchemdata_set_body_node_aoset_numericalvalues <=> Parameter_set_body_parameter_tuple";
   "How-is-it-done : String_off is converted to the Frames Conventions of Skeleton";
   "How-is-it-done : Example : \"ne p 2 1\" <= \"ne p 4 gaussian 1\"";
   "Abbreviation : anv  = aoset_numericalvalues";
   "Abbreviation : nbo  = nwchemdata_context_databox";
   "Abbreviation : nwc  = nwchem";
   "Abbreviation : par  = parameter";
   "Abbreviation : ptu  = parameter_set_body_tuple";
   "Abbreviation : pta  = parameter_set_body_tuple_aopef";
   "Abbreviation : exp  = parameter_set_fence_aopef_exponent";
   "Abbreviation : coe  = parameter_set_fence_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Remark : No storage. Only Tags are stored";
   "Improve : BNWC Symbol_subtree should work without need of tag tree";
   "Author : François Colonna 02 avril 2017 at 12:34:21+02:00";
  ]
;;

(*    Parameter_context_databox                 Nwchemdata_context_databox                     *)
(*               |                                     |                                       *)
(*               |                                    ...                                      *)
(*               |                                     |                                       *)
(*    Parameter_set_body_tuple_aopef       Nwchemdata_set_body_node_aoset_numericalvalues_constructor *)
(*          "ne p 2 1"                 <=>          "Ne P 4 GAUSSIAN 1"                        *)
(*          /         \                                                                        *)
(*    Parameter_border_parameter                                                               *)
(*       (exponent | coefficient)                                                              *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nbo =

  let bna_dbo = 
    Basicname_databox_by_nwchemdata_context_databox_tag_provider_v.provide
      tag_nbo
  in

  let sof_nwc_anv_l =  
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_basicname_databox_provider_v.provide
      bna_dbo 
  in
  
  let sof_par_ptu_l = 
    Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
      sof_nwc_anv_l
  in
  
  let sym_par_pta_l = List.map 
      Parameter_symbol_v.parameter_set_body_tuple_aopef_constructor 
      sof_par_ptu_l 
  in  
  
  let sym_par_coe_l = List.map 
      Parameter_symbol_v.parameter_set_fence_aopef_coefficient_constructor 
      sof_par_ptu_l 
  in

  let sym_par_exp_l = List.map 
      Parameter_symbol_v.parameter_set_fence_aopef_exponent_constructor 
      sof_par_ptu_l 
  in

  let sym_par_coe_stl = List.map
      Tree_v.make_of_leaf
      sym_par_coe_l
  in

  let sym_par_exp_stl = List.map
      Tree_v.make_of_leaf
      sym_par_exp_l
  in

  let sym_par_pec_stll = List.map2 
      (fun e c  -> [e; c]) sym_par_exp_stl sym_par_coe_stl
  in
  
  let sym_par_pta_stl = List.map2 Tree_v.make_of_node sym_par_pta_l sym_par_pec_stll in
  
  let nam_dbo = Basicname_v.string_off bna_dbo in
  let sym_par_pbo = Parameter_symbol_v.parameter_context_databox_constructor nam_dbo in

  Tree_v.make_of_node sym_par_pbo sym_par_pta_stl 
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Parameter_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:13:03 (UTC+0200) *)
