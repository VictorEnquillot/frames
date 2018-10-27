(** {3 Measure_canonical_list_by_elementary_fence_units_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_canonical_list_by_elementary_fence_units_tag_provider_v";
 ]
;;

(** {6 Building} *)

let build tag_eun =
  [Measure_canonical_by_elementary_fence_units_tag_provider_v.provide tag_eun]
;;
    
let build_n_store tag_eun =
  build tag_eun
;;

let provide_without_trace tag_eun =
  build_n_store tag_eun 
;;

let provide_with_trace tag_eun =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_eun in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_eun =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_eun
  else provide_without_trace tag_eun
;;


