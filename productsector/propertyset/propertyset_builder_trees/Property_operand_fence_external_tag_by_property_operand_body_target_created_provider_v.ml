(** {3 Property_operand_fence_external_tag_by_property_operand_body_target_created_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_operand_fence_external_tag_by_property_operand_body_target_created_tag_provider_v";
   "Needs : BPRO:Property_tag_subtree_by_property_tag_provider_v";
   "Needed-by :"; 
   "Author : François Colonna 31 mai 2017 at 14:44:58+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ptc = 

  let tag_pro_ptc = 
    Property_operand_body_target_created_tag_v.property_tag_of_property_operand_body_target_created_tag
      tag_ptc
  in

  let tag_pro_ptc_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide 
      tag_pro_ptc
  in
  
  let tag_pro_pfe = 
    Tree_v.only_node_of_node_predicate_off_tree 
      (fun (s, i) -> (Property_symbol_v.is_property_operand_fence_external_constructor s) )
      tag_pro_ptc_st
  in
  
  Property_operand_fence_external_tag_v.property_operand_fence_external_tag_off_property_tag
    tag_pro_pfe
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

