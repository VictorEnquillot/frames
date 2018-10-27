(** {3 Measure_actual_by_elementary_fence_units_actual_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_actual_by_elementary_fence_units_actual_tag_provider_v";
   "Register : DELE:Measure_actual_by_elementary_fence_units_actual_tag_register_v";
   "Needs : DELE:Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : DELE:Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_center_name_provider_v";
   "What-is-it : the Elementary_fence_units_value (Measure_actual) from Database";
   "How-is-it-done : Elementary                  Db1pointsdata";
   "How-is-it-done : Elementary                  Nwchem";
   "How-is-it-done : parameter_tuple_aopef             ";
   "Author : François Colonna 15 february 2016";
   "Author : François Colonna 28th March 2016 Db1pointsdata implementation";
   "Improve : make a more efficient code";
 ]
;;

let nwchemdata_string_off_of_elementary_string_off sof_ept =
  let nam_cen = String_v.first_word_off_string sof_ept in

  let ele_sof_n_nwc_sof_l =
    Elementary_aopef_name_n_nwchemdata_aopef_name_list_by_center_name_provider_v.provide
      nam_cen
  in

  Doublet_list_v.right_of_left_off_doublet_list sof_ept ele_sof_n_nwc_sof_l
;;

let nwchemdata_as_body_node_aoset_numerical_values_tag_subtree_of_nwchemdata_tag_tree_of_elementary_body_parameter_tuple tag_nwc_t tag_ept =

  let sof_ept = Elementary_body_parameter_tuple_tag_v.string_off tag_ept in

  let sof_nwc_anv = 
    nwchemdata_string_off_of_elementary_string_off 
      sof_ept 
  in  
  
  Tree_v.subtree_find_of_node_predicate_off_tree
    (fun (s, i) -> 
      (Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_numerical_values s)
	&&
      (Nwchemdata_symbol_v.string_off s = sof_nwc_anv)
    )
    tag_nwc_t
;;

let db1pointsdata_as_body_sequence_float_tag_subtree_of_db1pointsdata_tag_tree_of_elementary_body_coordinate_tuple tag_db1_t tag_ect =

  let sof_ect = Elementary_body_coordinate_tuple_tag_v.string_off tag_ect in
  let sof_db1_anv = sof_ect in  
  
  Tree_v.subtree_find_of_node_predicate_off_tree
    (fun (s, i) -> 
      (Db1pointsdata_symbol_v.is_db1pointsdata_body_sequence_float_symbol_off_db1pointsdata_symbol s)
	&&
      (Db1pointsdata_symbol_v.string_off s = sof_db1_anv)
    )
    tag_db1_t
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_eua =
  let soi_eua = Tag_v.sole_index_off_tag tag_eua in
  let nam_edb = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_context_database_string_off_off_sole_index 
      soi_eua
  in
  match nam_edb with 
  | "db1pointsdata" ->

      let nam_ebo =
	Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_figuredata_string_off_off_sole_index 
	  soi_eua
      in

      let tag_ebo = Db1pointsdata_context_databox_tag_by_databox_name_provider_v.provide nam_ebo in
      let tag_db1_t = Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide tag_ebo in

      let tag_ect = 
	Elementary_any_category_by_sole_index_extractor_v.elementary_body_coordinate_tuple_tag_off_sole_index 
	  soi_eua
      in

      let tag_db1_anv_st = 
	db1pointsdata_as_body_sequence_float_tag_subtree_of_db1pointsdata_tag_tree_of_elementary_body_coordinate_tuple 
	  tag_db1_t 
	  tag_ect 
      in 

      let tag_db1_fen = Tree_v.leaf_node_list_off_tree tag_db1_anv_st in
      let sof_db1_fen = List.map Db1pointsdata_tag_v.string_off tag_db1_fen in
      let flo_l = List.map String_v.float_of_string sof_db1_fen in

      let idx_epa = List.nth soi_eua 1 in
      let flo = List.nth flo_l (idx_epa-1) in
      let sym_eua = Tag_v.entity_off_tag tag_eua in

      Measure_actual_v.make flo sym_eua 
      
  | "nwchem" ->
      let nam_ebo =
	Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_skeletondata_string_off_off_sole_index 
	  soi_eua
      in

      let tag_ebo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_ebo in
      let tag_nwc_t = Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide tag_ebo in

      let tag_ept = 
	Elementary_any_category_by_sole_index_extractor_v.elementary_body_parameter_tuple_tag_off_sole_index 
	  soi_eua
      in

      let tag_nwc_anv_st = 
	nwchemdata_as_body_node_aoset_numerical_values_tag_subtree_of_nwchemdata_tag_tree_of_elementary_body_parameter_tuple 
	  tag_nwc_t 
	  tag_ept 
      in 

      let tag_nwc_fen = Tree_v.leaf_node_list_off_tree tag_nwc_anv_st in
      let sof_nwc_fen = List.map Nwchemdata_tag_v.string_off tag_nwc_fen in
      let flo_l = List.map String_v.float_of_string sof_nwc_fen in

      let idx_epa = List.nth soi_eua 1 in
      let flo = List.nth flo_l (idx_epa-1) in
      let sym_eua = Tag_v.entity_off_tag tag_eua in

      Measure_actual_v.make flo sym_eua 

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Access to Database >%s< were implemented" nam_edb)
        "It is NOT. Implemented Databases are : db1pointsdata | nwchem"
        "Please report or implement code" 
;;

(** {6 Storing} *)

let store tag_eua val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measure_actual_by_elementary_fence_units_actual_tag_register_v.store nam_mod tag_eua val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_eua =
  let val_ = build tag_eua in
  store tag_eua val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_eua =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measure_actual_by_elementary_fence_units_actual_tag_register_v.retrieve nam_mod tag_eua in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_eua =
  if Measure_actual_by_elementary_fence_units_actual_tag_register_v.is_stored tag_eua
  then retrieve tag_eua
  else build_n_store tag_eua
;;

(** {6 Providing} *)

let provide tag_eua =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_eua in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Measure_actual_by_elementary_fence_units_actual_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:01 (UTC+0200) *)
