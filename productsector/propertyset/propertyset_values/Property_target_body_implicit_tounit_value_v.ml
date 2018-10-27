(** {3 Property_target_body_implicit_tounit_value_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : FPRO:Property_target_body_implicit_tounit_value_v";
   "Needs : FPRO:Property_target_body_implicit_tounit_container_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 17 mars 2017 at 12:11:28+01:00";
   "Author : François Colonna 11 mai 2017 at 12:17:58+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* Tree :               target_body_implicit_tounit                            *)
(* Tree :                 /                  \                                 *)
(* Tree :  operator_fence_tounit_print        \                                *)
(* Tree :                                      \                               *)
(* Tree :  -------------------------------------\----------------------------- *)
(* Tree :                           operand_body_target_measured               *)
(* Tree :                                   (ptm Len_bc)                       *)

let nam_mod = Management_v.current_module_name (documentation ());;

let value_of_tag tag_pit =

(* Containee Operand *)
  let tag_pro_opd =
    Property_target_body_implicit_tounit_container_v.property_operand_tag_of_tag
      tag_pit
  in

  let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd in

(* Containee Operator *)
  let tag_pot = 
    Property_target_body_implicit_tounit_container_v.property_operator_fence_tounit_tag_of_tag
      tag_pit 
  in

  let sym_pot = Tag_v.entity_off_tag tag_pot in
  
  match sym_pot with 
  | Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
      (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor sof_pot) ->

	begin	
	  match sym_pro_opd with
	  | Property_operand_symbol_t.Property_operand_body_symbol
	      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
		 (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
		    (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor s))) ->
		      
		      let tag_ptm = Tag_v.map_entity
			  Property_operand_symbol_v.property_operand_body_target_measured_symbol_off_property_operand_symbol 
			  tag_pro_opd
		      in
		      let mea = Property_operand_body_target_measured_value_v.value_of_tag tag_ptm in

		      (Format.fprintf Format.std_formatter "@.Print \"%s\":@." sof_pot);
		      
		      (Format.fprintf Format.std_formatter "@.%s" (Measure_v.name mea));
		      
		      
	  | Property_operand_symbol_t.Property_operand_fence_symbol
	      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
		 (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor s ))->
		      
		   let tag_pfe = Tag_v.map_entity
		       Property_operand_symbol_v.property_operand_fence_external_symbol_off_property_operand_symbol 
		       tag_pro_opd
		   in
		   let flo_mtl =
		     Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v.provide 
		       tag_pfe
		   in
		   
		   (Format.fprintf Format.std_formatter "@.Print \"%s\":@." sof_pot);
		   (Format.fprintf Format.std_formatter "@.%s" 
		      (List_v.name_in_column Measured_float_tuple_v.shortname flo_mtl)
		   )

	  | _ -> 
	      Error_messages_v.print_fatal_error __LOC__ "value_of_tag" 
		"Property_operand_symbol were Property_operand_body_target_measured | Property_operand_fence_external"
		(Format.sprintf "%s" (Property_operand_symbol_v.fullname sym_pro_opd))
		"Check"
	end

  | Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_write_symbol
      (Property_operator_fence_tounit_write_symbol_t.Property_operator_fence_tounit_write_constructor sof_pot) ->

	Utilities_v.not_yet_implemented __LOC__ "build write"
;;

