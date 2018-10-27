(** {3 Measure_by_elementary_fence_units_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_by_elementary_fence_units_tag_provider_v";
   "Register : DELE:Readee_by_elementary_fence_tag_register_v";
   "Needs: DELE:Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : DELE:Elementary_aopef_name_n_nwchem_aopef_name_list_by_center_name_provider_v";
   "What-is-it : the Elementary_fence_units_value (Measure) from Database ";
   "How-is-it-done : Elementary                  Nwchem";
   "How-is-it-done : parameter_tuple_aopef             ";
   "Author : François Colonna 15 february 2016";
 ]
;;

(* let elementary_body_parameter_tuple_tag_subtree_off_elementary_tag_tree_of_elementary_fence_units_tag tag_ele_t tag_eun = *)
(*   let soi_eun = Tag_v.sole_index_off_tag tag_eun in *)
(*   let tag_ept =  *)
(*     Elementary_any_category_by_sole_index_extractor_v.elementary_body_parameter_tuple_tag_off_sole_index  *)
(*       soi_eun *)
(*   in *)
(*   let tag_ele_ptu = Tag_v.map_entity  *)
(*       Elementary_symbol_v.elementary_symbol_of_elementary_body_parameter_tuple_symbol *)
(*       tag_ept *)
(*   in *)
(*   Tree_v.subtree_find_of_node_predicate_off_tree  *)
(*     (fun t -> t = tag_ele_ptu) *)
(*     tag_ele_t *)
(* ;; *)

let nwchem_string_off_of_elementary_string_off sof_ept =
  let nam_cen = String_v.first_word_off_string sof_ept in

  let ele_sof_n_nwc_sof_l =
    Elementary_aopef_name_n_nwchem_aopef_name_list_by_center_name_provider_v.provide
      nam_cen
  in

  Doublet_list_v.right_of_left_off_doublet_list sof_ept ele_sof_n_nwc_sof_l
;;

let nwchem_as_body_node_aoset_numerical_values_tag_subtree_of_nwchem_tag_tree_of_elementary_body_parameter_tuple tag_nwc_t tag_ept =

  let sof_ept = Elementary_body_parameter_tuple_tag_v.string_off tag_ept in

  let sof_nwc_anv = 
    nwchem_string_off_of_elementary_string_off 
      sof_ept 
  in  
  
  Tree_v.subtree_find_of_node_predicate_off_tree
    (fun (s, i) -> 
      (Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
	&&
      (Nwchem_symbol_v.string_off s = sof_nwc_anv)
    )
    tag_nwc_t
;;

(** {6 Building} *)

let build tag_efu =
  let soi_efu = Tag_v.sole_index_off_tag tag_efu in
  let nam_edb = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_context_database_string_off_off_sole_index 
      soi_efu
  in
  match nam_edb with 
  | "db1" ->
      Utilities_v.not_yet_implemented __LOC__ "build db1";
      (* let tag_d1f = Db1figure_float_tag_by_elementary_fence_units_tag_translator_v.translate tag_efu in *)
      (* let flo = Float_by_db1figure_float_tag_provider_v.provide tag_d1f in *)
      (* let sym_efu = Tag_v.entity_off_tag tag_efu in  *)
      (* Measure_v.make flo sym_efu *)
      
  | "nwchem" ->
      let nam_eds =
	Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_skeletondata_string_off_off_sole_index 
	  soi_efu
      in

      let tag_ncd = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_eds in
      let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ncd in

      let tag_ept = 
	Elementary_any_category_by_sole_index_extractor_v.elementary_body_parameter_tuple_tag_off_sole_index 
	  soi_efu
      in

      let tag_nwc_anv_st = 
	nwchem_as_body_node_aoset_numerical_values_tag_subtree_of_nwchem_tag_tree_of_elementary_body_parameter_tuple 
	  tag_nwc_t 
	  tag_ept 
      in 

      let tag_nwc_fen = Tree_v.leaf_node_list_off_tree tag_nwc_anv_st in
      let sof_nwc_fen = List.map Nwchem_tag_v.string_off tag_nwc_fen in
      let flo_l = List.map String_v.float_of_string sof_nwc_fen in

      let idx_epa = List.nth soi_efu 1 in
      let flo = List.nth flo_l (idx_epa-1) in
      let sym_efu = Tag_v.entity_off_tag tag_efu in

      Measure_v.make flo sym_efu 

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Access to Database >%s< were implemented" nam_edb)
        "It is NOT"
        "Please report or implement code" 
;;
    
let build_n_store tag_efu =
  let mea = build tag_efu in
  let tag_edf = Tag_v.map_entity
      Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_symbol
      tag_efu
  in
  let bou = Readee_v.readee_of_measure mea in 
  Readee_by_elementary_fence_tag_register_v.store tag_edf bou;
  mea
;;

let provide_without_trace tag_efu =
  let readee tag_efu =
    let tag_edf = Tag_v.map_entity
	Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_symbol
	tag_efu
    in
    if Readee_by_elementary_fence_tag_register_v.is_stored tag_edf
    then Readee_by_elementary_fence_tag_register_v.retrieve tag_edf
    else Readee_v.readee_of_measure (build_n_store tag_efu)
  in
  let bou = readee tag_efu in
  Readee_v.measure_off_readee bou
;;

let provide_with_trace tag_efu =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_efu in

  Management_v.exiting_of_current_module_name nam_mod;
  result 
;;

let provide tag_efu =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_efu
  else provide_without_trace tag_efu
;;


