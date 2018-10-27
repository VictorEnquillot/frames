(** {3 Property_operator_fence_creation_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VPRO:Property_operator_fence_creation_envelope_v";
   "Needs : TPRO:Property_operator_fence_creation_tag_v";
   "Needs : VPRO:Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VPRO:Elementary_tag_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VPRO:Figure_tag_by_localinput_set_fence_variable_name_entity_string_off_provider_v";
   "Needs : VPRO:Skeleton_tag_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VELE:Elementary_envelope_v";
   "Needs : VSKE:Skeleton_envelope_v";
   "Needs : VFIG:Figure_envelope_v";
   "Needed-by : Property_target_body_created_envelope_v";
   "What-is-it : the Envelope for an External Entity Operand of a Target";
   "How-is-it-done : (Tag : Property_operator_fence_creation_tag) <=| argument";
   "How-is-it-done : String_off <= Tag";
   "How-is-it-done : Domain_external_name <=| Property_operator_fence_creation_tag ";
   "How-is-it-done : Domain_external_tag <=| Domain_external_name";
   "How-is-it-done : Domain_external_envelope <=| Domain_external_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_poc =
  let sof_poc = Property_operator_fence_creation_tag_v.string_off tag_poc in 
  let soi_poc = Tag_v.sole_index_off_tag tag_poc in
  let nam_ibo = 
    Operator_context_inputbox_name_by_any_sole_index_provider_v.provide 
      soi_poc 
  in
  let nam_dom_poe =
    Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (nam_ibo, sof_poc)
  in

  Property_envelope_by_basicname_domain_n_basicname_databox_n_basicname_variableprovider_v.provide (nam_dom_poe, nam_ibo, sof_poc)
;;
 
