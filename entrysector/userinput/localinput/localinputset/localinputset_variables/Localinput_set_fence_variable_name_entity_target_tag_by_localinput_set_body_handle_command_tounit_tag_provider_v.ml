(** {3 Localinput_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needs : VARLOI:Localinput_as_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Body_handle_command_tounit it provides its Target Operand";
   "Author : François Colonna 19 avril 2017 at 15:05:33+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lct =
  let tag_loi_lne = 
    Localinput_as_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v.provide
      tag_lct
  in

 (* Coerce Down *)
  Localinput_set_fence_variable_name_entity_target_tag_v.localinput_set_fence_variable_name_entity_target_tag_off_localinput_tag
    tag_loi_lne
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
(* done with do_provider_without_register.sh Localinput_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v.ml  on lundi 6 mars 2017, 10:34:18 (UTC+0100) *)
