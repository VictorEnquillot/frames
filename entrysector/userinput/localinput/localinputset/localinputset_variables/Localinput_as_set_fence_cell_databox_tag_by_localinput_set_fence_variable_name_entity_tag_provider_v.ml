(** {3 Localinput_as_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needs : VARLOI:Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name_entity Tag it provides its Datafile from its Context";
   "How-is-it-done : by extracting its Localinput_set_fence_cell_external_context tag from its Define B-Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_cell_databox_constructor from it";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lne =
  let tag_lcd =
    Localinput_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lne
  in
  Localinput_set_fence_cell_databox_tag_v.localinput_tag_of_localinput_set_fence_cell_databox_tag tag_lcd
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
(* done with do_provider_without_register.sh Localinput_as_set_fence_cell_databox_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.ml force on lundi 24 avril 2017, 08:17:55 (UTC+0200) *)
