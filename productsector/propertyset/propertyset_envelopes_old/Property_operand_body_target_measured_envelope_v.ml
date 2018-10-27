(** {3 Property_operand_body_target_measured_envelope_v} *)

(** {6 Documenting_for_envelope_v} *)

let documentation () = 
  [
   "Current : VPRO:Property_operand_body_target_measured_envelope_v";
   "Needs : FPRO:Property_operand_body_target_measured_container_v";
   "Needs : TPRO:Property_operator_fence_creation_tag_v";
   "Needs : IPRO:Operator_tag_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VOPE:Operator_envelope_v";
   "Needed-by : ";
   "What-is-it : the Envelope of a Property_operand_body_target_measured";
   "How-is-it-done : Property_operand_body_target_measured_tag <=| argument";
   "How-is-it-done : Property_operator_fence_creation_tag <=| Property_operand_body_target_measured_tag ";
   "How-is-it-done : Operator_creation_name <=| Property_operand_body_target_measured_tag ";
   "How-is-it-done : Operator_creation_tag <=| Operator_creation_name";
   "How-is-it-done : Operator_creation_envelope <=| Operator_creation_tag";
   "How-is-it-done : Property_operand_body_tag <=| Property_operand_body_target_measured_tag ";
   "How-is-it-done : Recursion until No more Property_operand_body_target_measured is reached";
   "How-is-it-done : use specific non-recursive modules for those operand";
   "Author : François Colonna 18 mars 2017 at 15:11:03+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* type property_operand_body_target_measured_container =  *)
(*   (Property_operator_fence_creation_tomeasure_tag_t.property_operator_fence_creation_tomeasure_tag, *)
(*    Property_operand_body_tag_t.property_operand_body_tag) *)
(* Doublet_t.doublet;; *)

(* Tree :     operand_body_target_measured             *)
(* Tree :             (Len_bc)                         *)
(* Tree :     /                     \                  *)
(* Tree :  operator_target_measured   operand external *)
(* Tree :         (Ope_len)               (Seg_bc)     *)

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_ptm =
  let nam_fun = "envelope_of_tag" in

  Management_v.debug_what_string "tag_ptm" nam_mod nam_fun (Property_operand_body_target_measured_tag_v.fullname tag_ptm);  

(* Containee Operator_target_creation *)
(*   let tag_pct = property_operator_fence_creation_tomeasure_tag_of_tag tag_ptm in ??? *)

(* Containee Operand *)
  let tag_pop = Property_operand_body_target_measured_container_v.property_operand_tag_of_tag tag_ptm in

  let env_ptm =
    Property_elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
;;
