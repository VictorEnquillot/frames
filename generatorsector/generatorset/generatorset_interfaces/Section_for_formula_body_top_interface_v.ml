(** {6 Section_for_formula_body_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_top_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
  | Section_for_formula_body_top_symbol_t.Symbol_of_formula_in_name_top ->
  (* let sym_top = symbol_of_formula for_top in *)
  (* Top_symbol_v.name sym_top *)

      let sym_gr1 = Group_for_formula_body_top_symbol_v.symbol_of_formula_in_name_top in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_symbol sym_gr1;
     ]
	
  | Section_for_formula_body_top_symbol_t.Symbol_of_formula_in_string_off_top ->
  (* let sym_top = symbol_of_formula for_top in *)
  (* Top_symbol_v.string_off sym_top *)

      let sym_gr1 = Group_for_formula_body_top_symbol_v.symbol_of_formula_in_string_off_top in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_symbol sym_gr1;
     ]
	
;;
