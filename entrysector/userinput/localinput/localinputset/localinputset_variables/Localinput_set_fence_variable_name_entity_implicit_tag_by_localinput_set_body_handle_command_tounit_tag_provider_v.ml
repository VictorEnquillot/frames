(** {3 Localinput_set_fence_variable_name_entity_implicit_tag_by_localinput_set_body_handle_command_tounit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_implicit_tag_by_localinput_set_body_handle_command_tounit_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Command_tounit it provides the Variable_name Tag for its Entity_implicit";
   "How-is-it-done : by getting the Command Unit Tag Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_variable_name_entity_implicit_constructor from it";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_hcu =

  let tag_lhc = Tag_v.map_entity (* Coerce Up *)
      Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_tounit_symbol
      tag_hcu
  in

  let tag_loi_hcu_st = 
    Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_provider_v.provide
      tag_lhc
  in

  let nam_hcu = Localinput_set_body_handle_command_tag_v.string_off tag_lhc in

  let pre_tag_lei_sof sof (s, i) = 
    (Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor sof = s)
  in

  let tag_loi_lei = Tree_v.only_node_of_node_predicate_off_tree 
      (pre_tag_lei_sof nam_hcu) 
      tag_loi_hcu_st
  in
  
  Tag_v.map_entity (* Coerce Down *)
    Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol
    tag_loi_lei
;;

let build_n_store tag_hcu =
  build tag_hcu 
;;

(** {6 Providing} *)

let provide_without_trace tag_hcu =
  build_n_store tag_hcu
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
