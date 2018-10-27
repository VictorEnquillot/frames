(** {6 Section_for_formula_header_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_header_interface_v";
   "Needed-by : FGNR:Section_for_formula_header_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sfh =
  let sym_sfh = Octuplet_v.left_off_octuplet oct_sfh in
  match sym_sfh with
  | Section_for_formula_header_symbol_t.Let_builder_tag_list_off_top_formula_equal_function ->
      
      let sym_gr1 = Group_for_formula_header_symbol_v.generatorset_symbol_of_builder_symbol in
      let sym_gr2 = Group_for_formula_header_symbol_v.tag_builder_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_formula_header_symbol sym_gr2;
     ]
	
  | Section_for_formula_header_symbol_t.Let_symbol_of_formula_equal_function ->

;;
