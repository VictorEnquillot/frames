(** {6 Section_for_formula_header_constant_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_header_constant_interface_v";
   "Needed-by : FGNR:Section_for_formula_header_constant_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_shc =
  let sym_shc = Octuplet_v.left_off_octuplet oct_shc in
  match sym_shc with
  | Section_for_formula_header_constant_symbol_t.Let_symbol_of_formula_equal_function ->
      
      let sym_gr1 = Group_for_formula_header_constant_symbol_v.let_symbol_of_formula_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_constant_symbol sym_gr1;
     ]
	

;;
