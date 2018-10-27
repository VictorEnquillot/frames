(** {3 Group_for_formula_body_top_builder_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_top_builder_data_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_top_builder_data_interface_v";
   "What-is-it : It defines the Builder_data_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilder_dataset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_top_builder_data_symbol_t.Documentation_list_for_formula ->
      let sym_ca1 = Camlline_constant_pervasive_symbol_v.bracket_left in
      let sym_ca2 = Camlline_constant_function_symbol_v.double_quote_needs in
      let sym_ca3 = Camlline_for_any_uno_top_symbol_v.double_quote_current in
      let sym_ca4 = Camlline_constant_function_symbol_v.double_quote_needed in
      let sym_ca5 = Camlline_for_formula_uno_builder_symbol_v.double_quote_builders in
      let sym_ca6 = Camlline_for_formula_uno_data_symbol_v.double_quote_data in
      let sym_ca7 = Camlline_constant_function_symbol_v.double_quote_what_is_it in
      let sym_ca8 = Camlline_constant_function_symbol_v.double_quote_how_is_it_done in
      let sym_ca9 = Camlline_constant_function_symbol_v.double_quote_example in
      let sym_c10 = Camlline_constant_pervasive_symbol_v.bracket_right in 
      
      [ 
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca1;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca2;
	Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca3;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca4;
	Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca5;
	Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_data_symbol sym_ca6;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca7;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca8;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca9;
	Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_c10;    
      ]
;;

