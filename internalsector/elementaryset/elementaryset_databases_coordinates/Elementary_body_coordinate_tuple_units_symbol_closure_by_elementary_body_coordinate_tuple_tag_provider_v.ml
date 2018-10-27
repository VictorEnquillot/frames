(** {3 Elementary_body_coordinate_tuple_units_symbol_closure_by_elementary_body_coordinate_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_body_coordinate_tuple_units_symbol_closure_by_elementary_body_coordinate_tuple_tag_provider_v";
   "Needs : D1FIG:Db1figure_as_element_vertex_tag_by_elementary_body_coordinate_tuple_tag_translator_v";
   "Needs : D1FIG:Elementary_body_coordinate_tuple_units_symbol_closure_by_db1figure_element_vertex_tag_translator_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_fence_units_symbol_closure for a Elementary_body_coordinate_tuple";
   "How-is-it-done : Db1figure_element_vertex <=|TrD1ofD| Elementary_body_coordinate_tuple_symbol";
   "How-is-it-done : Elementary_body_coordinate_tuple_units_symbol_closure <=|TrDofD1| Db1figure_element_vertex";
  ]
;;

(** {6 Building} *)

let build tag_ctu =
  let tag_dwe = 
    Db1figure_as_element_vertex_tag_by_elementary_body_coordinate_tuple_tag_translator_v.translate 
      tag_ctu 
  in

  Elementary_body_coordinate_tuple_units_symbol_closure_by_db1figure_element_vertex_tag_translator_v.translate tag_dwe
;;

let build_n_store tag_ctu =
  build tag_ctu 
;;

let provide_without_trace tag_ctu =
  build tag_ctu
;;

let provide_with_trace tag_ctu =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_ctu in
b
  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_ctu =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_ctu
  else provide_without_trace tag_ctu
;;


