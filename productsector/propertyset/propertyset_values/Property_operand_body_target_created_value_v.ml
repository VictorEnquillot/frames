(** {3 Property_operand_body_target_created_value_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_body_target_created_value_v";
   "Needs : IPRO:Property_any_category_by_sole_index_extractor_v";
   "Needs : TELE:Elementary_units_tag_v";
   "Needs : FELE:Elementary_coordinate_tuple_cartesian_container_v";
   "Needs : FFIG:Figure_point_container_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done : ";
   "Improve : Create Property_operand_body_target_created_envelope_by_operator_tag_n_operand_external_tag_provider_v";
   "How-is-it-done : by providing the Triplet_list (Tag_operator, Tag_operand, Tag_target) for all target";
   "How-is-it-done : List.map application of Tag_operator on each Tag_operand from bottom to Top";
   "Author : François Colonna 20 mars 2017 at 10:26:19+01:00";
   "Author : François Colonna 11 mai 2017 at 11:29:03+02:00";
   "Author : François Colonna 21 mai 2017 at 16:12:53+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Tree :                  (Measured_float_tuple_list Poi_u)              *)
(* Tree :                                       |                              *)      
(* Tree :                     property_operand_body_target_created             *)
(* Tree :                                   (ptc Poi_u)                        *)
(* Tree :                                  /    |     \                        *)
(* Tree : property_operator_fence_creation_toentity  property_operand_target_created *)
(* Tree :                     (Tra_s)           |            (Poi_t)           *)
(* Tree :                  "translation"        |                              *)
(* Tree :                        |              |                              *)
(* Tree :        cofactor_entity (Seg_s)        |                              *)
(* Tree :                                       |                              *)
(* Tree :                  (Measured_float_tuple_list Poi_t)              *)
(* Tree :                                       |                              *)      
(* Tree :                     property_operand_body_target_created             *)
(* Tree :                                   (ptc Poi_t)                        *)
(* Tree :                                  /    |     \                        *)
(* Tree : property_operator_fence_creation_toentity  property_operand_fence_external   *)
(* Tree :                     (Tra_bc)          |            (Poi_a)           *)
(* Tree :                  "translation"        |                              *)
(* Tree :                        |              |                              *)
(* Tree :        cofactor_entity (Seg_bc)       |                              *)
(* Tree :                                       |                              *)
(* Tree :                measure_tuple_list  =======>     measure_tuple_list   *)
(* Tree :                                       |                              *)

let nam_mod = Management_v.current_module_name (documentation ());;

let value_of_tag tag_ptc = 
  Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_v.provide tag_ptc 
;;
