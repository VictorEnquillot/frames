(** {3 Camlparagraph_for_formula_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlparagraph_for_formula_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Camlparagraph_for_formula_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_iii =
  match sym_iii with
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol _ ->
      Utilities_v.not_yet_implemented nam_cod "make Node"
	
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type ->
(* section_for_any_header_constant : type_et_any_equal *)
(* section_for_any_body_son : pipe_topson_any_type_notleaf_constructors *) 
(* section_for_formula_body_son_builder : pipe_topson_formula_type_ofstring_constructors *) 
(* section_for_formula_body_son_builder : pipe_topson_formula_type_bare_constructors *) 


      let sym_se1 = Section_for_any_header_constant_symbol_v.type_et_any_equal in
      let sym_se2 = Section_for_any_body_son_symbol_v.pipe_topson_any_type_notleaf_constructors in
      let sym_se3 = Section_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_ofstring_constructors in 
      let sym_se4 = Section_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_bare_constructors in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_any_body_son_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_builder_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_builder_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]
;;


