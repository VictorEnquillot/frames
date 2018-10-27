(** {3 Localinput_as_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name Tag it provides the B-SubTree of its Command_creation_define";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lei =
  let tag_lne_opd = 
    Localinput_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide
      tag_lei
  in
  
  Tag_v.map_entity 
    Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_variable_name_entity_symbol
    tag_lne_opd
;;

let build_n_store tag_lei =
  build tag_lei 
;;

(** {6 Providing} *)

let provide_without_trace tag_lei =
  build_n_store tag_lei
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
