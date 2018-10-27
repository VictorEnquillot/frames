(** {3 Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v";
   "Needs : VARLOI:Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Localinput Handle Command Define of an Inputbox";
   "What-is-it : it provides the Tag for the here defined Variable_name_entity";
   "Author : François Colonna 29 mars 2017 at 11:22:09+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, sym_lcd) =

  let tag_loi_lne = 
    Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.provide 
      (bna_ibo, sym_lcd)
  in

  Localinput_set_fence_variable_name_entity_tag_v.localinput_set_fence_variable_name_entity_tag_off_localinput_tag tag_loi_lne
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
(* done with do_provider_without_register.sh Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.ml  on mardi 7 mars 2017, 13:09:17 (UTC+0100) *)
