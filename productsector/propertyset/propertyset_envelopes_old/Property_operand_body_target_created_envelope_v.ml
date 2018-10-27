(** {3 Property_operand_body_target_created_envelope_v} *)

(** {6 Documenting_for_envelope_v} *)

let documentation () = 
  [
   "Current : VPRO:Property_operand_body_target_created_envelope_v";
   "Needs : FPRO:Property_operand_body_target_created_container_v";
   "Needs : TPRO:Property_operator_fence_creation_tag_v";
   "Needs : IPRO:Operator_tag_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VOPE:Operator_envelope_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Parameter_envelopee";
   "Definition : an Envelope is a list of Envelopee. It propagates Tagged Readee along the BT";
   "Definition : type property_operand_body_target_created_container = ";
   "Definition :   (Property_operator_fence_creation_tag, Property_operand_body_tag)"; 
   "What-is-it : the Envelope of a Property_operand_body_target_created";
   "What-is-it : i.e. the Envelope of the Created Target";
   "How-is-it-done : Property_operand_body_target_created_tag <=| argument";
   "How-is-it-done : Property_operator_fence_creation_tag <=| Property_operand_body_target_created_tag ";
   "How-is-it-done : Operator_creation_name <=| Property_operand_body_target_created_tag ";
   "How-is-it-done : Operator_creation_tag <=| Operator_creation_name";
   "How-is-it-done : Operator_creation_envelope <=| Operator_creation_tag";
   "How-is-it-done : Property_operand_body_tag <=| Property_operand_body_target_created_tag ";
   "How-is-it-done : Recursion until No more Property_operand_body_target_created is reached";
   "How-is-it-done : use specific non-recursive modules for those operand";
   "Author : François Colonna 13 mars 2017 at 15:03:38+01:00";
 ]
;;

(* Inputbox : define Con_db1 *)
(* Inputbox :        context *)
(* Inputbox :          database "db1" *)
(* Inputbox :          domain "figure" *)
(* Inputbox :          end -- context *)
(* Inputbox :        end -- define *)

(* Inputbox : define Tra_bc *)
(* Inputbox :        operator  *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(* Inputbox :          operation "translation" *)
(* Inputbox :          ondomain "figure" *)
(* Inputbox : 	       cofactor  *)
(* Inputbox :            cofactor_entity Seg_bc  *)
(* Inputbox :            end -- cofactor	 *)
(* Inputbox :          end -- operator *)
(* Inputbox :        end -- define *)

(* Inputbox : define Seg_bc *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "figure" "set" "body" "segment" "constructor" ] *)
(* Inputbox :          external_name "BC" *)
(* Inputbox :          external_context Con_db1 *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

(* Inputbox : define Poi_a         *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ] *)
(* Inputbox :          external_name "T_A" *)
(* Inputbox :          external_context Con_db1 *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

(* Inputbox : define Poi_t *)
(* Inputbox :        target  *)
(* Inputbox :          type [ "property" "operand" "target" "created" "constructor" ] *)
(* Inputbox :          operator Tra_bc *)
(* Inputbox :          operand Poi_a *)
(* Inputbox :          end -- target *)
(* Inputbox :        end -- define *)

(* Inputbox : stop *)

(* Tree :  operand_target_created  Poi_t     *)
(* Tree :       /               \            *)
(* Tree :  operator Tra_bc   operand Poi_a   *)
(* Tree :       /                            *)
(* Tree :  cofactor_entity Seg_bc            *)

let nam_mod = Management_v.current_module_name (documentation ());;

(* ---- Recursion ---- *)
  
let rec envelope_of_tag tag_ptc =
  let nam_fun = "envelope_of_tag" in

  Management_v.debug_what_string "tag_ptc" nam_mod nam_fun (Property_operand_body_target_created_tag_v.fullname tag_ptc);  

(* Builder Tag Duo *)
  
  (* let tag_pro_d = Property_operand_body_target_created_container_v.builder_tag_duo tag_ptc in *)

(* Operator_target_created envelope *)

  (* let tag_pro_ope = Duo_v.first_off_duo tag_pro_d in *)

(* Operand_target_created envelope *)

  (* let tag_pro_opd = Duo_v.second_off_duo tag_pro_d in *)

(* Application of Operator envelope on Operand envelope *)

  Utilities_v.not_yet_implemented nam_mod nam_fun
;;
