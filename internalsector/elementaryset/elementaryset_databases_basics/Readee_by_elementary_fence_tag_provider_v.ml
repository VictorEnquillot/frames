(** {3 Readee_by_elementary_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_by_elementary_fence_tag_provider_v";
   "Register : DELE:Readee_by_elementary_fence_tag_register_v";
   "What-is-it : the Elementary_border_value (Readee) from Database";
   "Remark : ";
 ]
;;

(** {6 Building} *)

let build tag_edf =
  let soi_edf = Tag_v.sole_index_off_tag tag_edf in
  let sym_edf = Tag_v.entity_off_tag tag_edf in
  match sym_edf with   
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_eba ->
      let tag_eba = Tag_v.make sym_eba soi_edf in
      let bou_bas = Readee_basic_by_elementary_fence_basic_tag_provider_v.provide tag_eba in
      Readee_v.readee_of_readee_basic bou_bas
	
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_eco ->
      Readee_v.readee_of_elementary_fence_color_symbol sym_eco 
	
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_eun ->
      let tag_eun = Tag_v.make sym_eun soi_edf in
      let mea = Measure_by_elementary_fence_units_tag_provider_v.provide tag_eun in
      Readee_v.readee_of_measure mea
;;
    
let build_n_store tag_edf =
  let mea = build tag_edf in
  Readee_by_elementary_fence_tag_register_v.store tag_edf mea;
  mea
;;

let provide_without_trace tag_edf =
  if Readee_by_elementary_fence_tag_register_v.is_stored tag_edf
  then Readee_by_elementary_fence_tag_register_v.retrieve tag_edf
  else build_n_store tag_edf 
;;

let provide_with_trace tag_edf =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_edf in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_edf =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_edf
  else provide_without_trace tag_edf
;;


