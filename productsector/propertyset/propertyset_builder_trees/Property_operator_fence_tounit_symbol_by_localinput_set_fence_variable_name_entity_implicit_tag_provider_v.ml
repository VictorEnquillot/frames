(** {3 Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Needs : BPRO:Localinput_set_body_handle_command_tounit_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Register : BPRO:Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_register_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name of Entity_implicit it provides the Property_operator_fence associated with";
   "How-is-it-done : Localinput_set_body_handle_command_tounit_tag Sof <= Sof Localinput_set_fence_variable_name_entity_implicit_tag";
   "How-is-it-done : Property_property_operator_fence_tounit_symbol Sof <= Sof Localinput_set_body_handle_command_tounit_tag";
   "Author : François Colonna 11 mai 2016 at 16:58:04+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_lei = 
    
  let tag_lcu =
    Localinput_set_body_handle_command_tounit_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide
      tag_lei
  in

  let sym_lcu = Tag_v.entity_off_tag tag_lcu in

  match sym_lcu with 
  | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_write_symbol
      (Localinput_set_body_handle_command_tounit_write_symbol_t.Localinput_set_body_handle_command_tounit_write_constructor
         sof_lcu) ->

	   let nam_mod = Management_v.current_module_name (documentation ()) in
	   Utilities_v.not_yet_implemented nam_mod "build write"
	     
  | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
      (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
         sof_lcu) ->

	   Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_print_constructor sof_lcu
;;

(** {6 Storing} *)

let store tag_lei sym_pot =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_register_v.store nam_mod tag_lei sym_pot;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lei =
  let sym_pot = build tag_lei in
  store tag_lei sym_pot;
  sym_pot
;;

(** {6 Retrieving} *)

let retrieve tag_lei =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_register_v.retrieve nam_mod tag_lei in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lei =
  if Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_register_v.is_stored tag_lei
  then retrieve tag_lei
  else build_n_store tag_lei
;;

(** {6 Providing} *)

let provide tag_lei =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lei in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:06 (UTC+0100) *)
