(** {3 Readee_units_by_elementary_fence_units_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_units_by_elementary_fence_units_tag_provider_v";
   "Register : DELE:Readee_by_elementary_fence_tag_register_v";
   "What-is-it : the Elementary_fence_units_value (Readee_units) from Database";
   "Remark : ";
 ]
;;

(** {6 Building} *)

let build tag_eun =
  let mea = Measure_by_elementary_fence_units_tag_provider_v.provide tag_eun
      Readee_
;;
    
let build_n_store tag_eun =
  let mea = build tag_eun in
  let tag_edf = Tag_v.map_entity
      Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_symbol
      tag_eun
  in
  Readee_by_elementary_fence_tag_register_v.store tag_edf mea;
  mea
;;

let provide_without_trace tag_eun =
  let readee tag_eun =
    let tag_edf = Tag_v.map_entity
	Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_symbol
	tag_eun
    in
    if Readee_by_elementary_fence_tag_register_v.is_stored tag_edf
    then Readee_by_elementary_fence_tag_register_v.retrieve tag_edf
    else build_n_store tag_eun
  in
  let bou = readee tag_eun in
  Readee_v.readee_units_off_readee bou
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


