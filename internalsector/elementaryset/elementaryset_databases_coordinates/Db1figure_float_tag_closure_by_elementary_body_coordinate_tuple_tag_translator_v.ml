(** {3 Db1figure_float_tag_by_elementary_border_coordinate_tag_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Db1figure_float_tag_closure_by_elementary_body_coordinate_tuple_tag_translator_v";
   "Needs : DELE:Db1figure_as_element_vertex_tag_by_elementary_border_coordinate_tag_translator_v";
   "Needs : DELE:Db1figure_tag_float_closure_by_db1figure_tag_provider_v";
   "Needed-by :"; 
   "How-is-it-done : tag_dd1_ver <-|translator| tag_ele_ctu";
   "How-is-it-done : tag_d1f_clo <-|provider| tag_dd1_ver";
  ]
;;

let translate_without_trace tag_ctu =
  Utilities_v.not_yet_implemented __LOC__ "translate_without_trace";
  (* let tag_dd1_ver = *)
  (*   Db1figure_as_element_vertex_tag_by_elementary_border_coordinate_tag_translator_v.translate  *)
  (*     tag_ctu *)
  (* in *)
  (* Db1figure_tag_float_closure_by_db1figure_tag_provider_v.provide tag_dd1_ver *)
;;

let translate_with_trace tag_ctu =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_ctu in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_ctu =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace tag_ctu
  else translate_without_trace tag_ctu
;;

