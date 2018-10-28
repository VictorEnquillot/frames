(** {3 Localinput_set_fence_cell_external_context_tag_by_localinput_set_fence_variable_name_entity_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_cell_external_context_tag_by_localinput_set_fence_variable_name_entity_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name Target Tag it provides its Operand Tag";
   "How-is-it-done : by getting the Command Define Tag Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_cell_external_context_constructor from it";
   "Author : François Colonna 19 avril 2017 at 12:04:20+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

 let build tag_lee =
   
   let tag_lne = Tag_v.map_entity 
       Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_external_symbol
       tag_lee
   in
   
  let tag_lcd = 
    Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lne
  in 

  let tag_loi_lcd = Tag_v.map_entity 
      Localinput_symbol_v.localinput_symbol_of_localinput_set_body_handle_command_creation_define_symbol
      tag_lcd
  in
  let tag_loi_lcd_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lcd in
  
  let tag_loi_cto = Tree_v.only_node_of_node_predicate_off_tree 
      (fun (s, i) -> 
	Localinput_symbol_v.is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol s 
      )
      tag_loi_lcd_st 
  in

  Localinput_set_fence_cell_external_context_tag_v.localinput_set_fence_cell_external_context_tag_off_localinput_tag tag_loi_cto

;;

let build_n_store tag_net =
  build tag_net 
;;

(** {6 Providing} *)

let provide_without_trace tag_net =
  build_n_store tag_net
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;