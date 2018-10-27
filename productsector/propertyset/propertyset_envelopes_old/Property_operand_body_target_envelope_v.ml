(** {3 Property_operand_body_target_envelope_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Property_operand_body_target_envelope_v";
   "Needs : TPRO:Property_operand_body_target_calculated_envelope_v";
   "Needs : TPRO:Property_operand_body_target_created_envelope_v";
   "Needs : TPRO:Property_operand_body_target_measured_envelope_v";
   "Needed-by : Property_operand_body_envelope_v";
   "What-is-it : the Envelope for any Entity Operand_target of a Target";
   "How-is-it-done : by Coercion";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_pot =
  (* let nam_fun = "envelope_of_tag" in *)

  let (sym_pot, soi_pot) = tag_pot in
  
  match sym_pot with 
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc ->
      Property_operand_body_target_calculated_envelope_v.envelope_of_tag (sym_ptc, soi_pot)

  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc ->
      Property_operand_body_target_created_envelope_v.envelope_of_tag (sym_ptc, soi_pot)

  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
      Property_operand_body_target_measured_envelope_v.envelope_of_tag (sym_ptm, soi_pot)
;;
 
