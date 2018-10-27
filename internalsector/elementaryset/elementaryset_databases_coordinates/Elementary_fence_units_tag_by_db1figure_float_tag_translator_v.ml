(** {3 Elementary_fence_units_tag_by_db1figure_float_tag_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_fence_units_tag_by_db1figure_float_tag_translator_v";
   "Needs : SELE:Elementary_tag_all_list_by_elementary_context_domain_tag_provider_v";
   "Needed-by :"; 
   "How-is-it-done : by getting String_off from Db1figure_float";
   "How-is-it-done : by getting Units from Elementary_tag_all_list using String_off"; 
  ]
;;

let translate_without_trace tag_d1f =
  let sof_d1f = Db1figure_float_tag_v.string_off tag_d1f in
  let ele_edo = Elementary_context_domain_tag_v.elementary_context_domain_tag in
  let tag_ele_l = Elementary_tag_all_list_by_elementary_context_domain_tag_provider_v.provide tag_edo in
  List_v.only_element_of_predicate_off_list
    (fun t -> Elementary_tag_v.string_off t = sof_d1f) 
    tag_ele_l
;;

let translate_with_trace tag_d1f =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_d1f in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_d1f =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace tag_d1f
  else translate_without_trace tag_d1f
;;

