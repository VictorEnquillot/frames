(** {3 Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name Tag it provides the associated Command_creation_define Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lne =
  
  let tag_lvn = Tag_v.map_entity (* Coerce Up *)
      Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_symbol_of_localinput_set_fence_variable_name_entity_symbol 
      tag_lne
  in
  
  Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_tag_provider_v.provide
    tag_lvn
;;

let build_n_store tag_lne =
  build tag_lne 
;;

(** {6 Providing} *)

let provide_without_trace tag_lne =
  build_n_store tag_lne
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
