(** {3 Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needs : VARLOI:Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_context_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name_entity Tag it provides its Datafile from its Context";
   "How-is-it-done : by extracting its Localinput_set_fence_cell_external_context tag from its Define B-Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_cell_databox_constructor from it";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lne =

  let tag_lec = 
    Localinput_set_fence_cell_external_context_tag_by_localinput_set_fence_variable_name_entity_external_tag_provider_v.provide 
      tag_lne
  in 
  
  let tag_lvc = 
    Localinput_set_fence_variable_name_context_tag_by_localinput_set_fence_cell_external_context_tag_provider_v.provide
      tag_lec
  in
  
  Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_context_tag_provider_v.provide
    tag_lvc 
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
