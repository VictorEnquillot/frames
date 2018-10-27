(** {3 Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v";
   "Needs : BPRO:Localinput_basicname_inputbox_by_any_sole_index_provider_v";
   "Needs : BPRO:Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name_entity_target Tag it provides the Property_operand_body_target_symbol associated with";
   "How-is-it-done : Localinput_set_body_box_type_string_list <= Sof Localinput_set_fence_variable_name_entity_target_tag";
   "How-is-it-done : Make ";
   "Author : François Colonna 20 mai 2017 at 16:30:54+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_let = 
  let soi_let = Tag_v.sole_index_off_tag tag_let in
  let bna_ibo = Localinput_basicname_inputbox_by_any_sole_index_provider_v.provide soi_let in
  let nam_var = Localinput_set_fence_variable_name_entity_target_tag_v.string_off tag_let in
  let bna_var = Basicname_v.basicname_variable_of_string nam_var in
  let str_l = 
    Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
  in

  let str_arg = List_v.name_underscored_off_string_list str_l in

  try Property_symbol_v.make str_arg nam_var
  with Failure "Not_a_property_symbol:Property_symbol_v.ml:make" ->
    let nam_ibo = Basicname_v.string_off bna_ibo in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "string \"%s\" were an argument of Property_symbol_v.make" str_arg)
      "it is NOT"
      (Format.sprintf "Check module Property_symbol_v or Inputbox file \"%s.loc\"" nam_ibo)
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
(* done with do_provider_without_register.sh Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:10 (UTC+0100) *)
