(** {3 Readee_basic_by_elementary_fence_basic_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_by_elementary_fence_basic_tag_provider_v";
   "Register : DELE:Readee_by_elementary_fence_tag_register_v";
   "What-is-it : the Elementary_fence_basic_value (Readee_basic) from Database";
   "Remark : ";
 ]
;;

(** {6 Building} *)

let build tag_eba =
  Utilities_v.not_yet_implemented __LOC__ "build";
;;
    
let build_n_store tag_eba =
  let bou_bas = build tag_eba in
  let tag_edf = Tag_v.map_entity
      Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_symbol
      tag_eba
  in
  let bou = Readee_v.readee_of_readee_basic bou_bas in
  Readee_by_elementary_fence_tag_register_v.store tag_edf bou;
  bou_bas
;;

let provide_without_trace tag_eba =
  let readee tag_eba =
    let tag_edf = Tag_v.map_entity
	Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_symbol
	tag_eba
    in
    if Readee_by_elementary_fence_tag_register_v.is_stored tag_edf
    then Readee_by_elementary_fence_tag_register_v.retrieve tag_edf
    else build_n_store tag_eba
  in
  let bou = readee tag_eba in
  Readee_v.readee_basic_off_readee bou
;;

let provide_with_trace tag_eba =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_eba in

  Management_v.exiting_of_current_module_name nam_mod;
  result 
;;

let provide tag_eba =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_eba
  else provide_without_trace tag_eba
;;


