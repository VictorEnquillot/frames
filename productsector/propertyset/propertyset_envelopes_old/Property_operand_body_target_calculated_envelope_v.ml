(** {3 Property_operand_body_target_calculated_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VPRO:Property_operand_body_target_calculated_value_v";
   "Needs : TPRO:Property_operand_body_target_calculated_tag_v";
   "Needs : VARLOI:Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : IPRO:Property_elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : ";
   "What-is-it : the Envelope for an Target_calculated Entity Operand of a Target";
   "How-is-it-done : (Tag : Property_operand_body_target_calculated_tag) <=| argument";
   "How-is-it-done : String_off <= Tag";
   "How-is-it-done : Domain_target_calculated_name <=| Property_operand_body_target_calculated_tag ";
   "How-is-it-done : Domain_target_calculated_tag <=| Domain_target_calculated_name";
   "How-is-it-done : Domain_target_calculated_envelope <=| Domain_target_calculated_tag";
   "Author : François Colonna 17 avril 2017 at 12:43:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_ptc =
  let nam_fun = "envelope_of_tag" in

  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let sof_ptc = Property_operand_body_target_calculated_tag_v.string_off tag_ptc in 
  let soi_ptc = Tag_v.sole_index_off_tag tag_ptc in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptc in
  let bna_var = Basicname_v.basicname_variable_of_string sof_ptc in

  let env_ptc = 
    Property_elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
      (bna_ibo, bna_var)
  in

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;

  env_ptc
;;
