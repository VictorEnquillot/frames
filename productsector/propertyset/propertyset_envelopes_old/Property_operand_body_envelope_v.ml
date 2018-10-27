(** {3 Property_operand_body_envelope_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Property_operand_body_envelope_v";
   "Needs : TPRO:Property_operand_fence_external_tag_v";
   "Needed-by : Property_target_body_created_envelope_v";
   "What-is-it : the Envelope for any of the 3 Target as Operand_body_target (non Implicit)";
   "How-is-it-done : by applying the Operator Containee to the Orerand";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_pop =
  (* let nam_fun = "envelope_of_tag" in *)

  let (sym_pop, soi_pop) = tag_pop in
  
  match sym_pop with 
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc ) ->

	Property_operand_body_target_calculated_envelope_v.envelope_of_tag (sym_ptc, soi_pop)
	  
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc) ->

	Property_operand_body_target_created_envelope_v.envelope_of_tag (sym_ptc, soi_pop)
	  
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm) ->

	Property_operand_body_target_measured_envelope_v.envelope_of_tag (sym_ptm, soi_pop)
;;


 
