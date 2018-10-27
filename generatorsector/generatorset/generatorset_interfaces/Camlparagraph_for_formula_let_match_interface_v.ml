(** {3 Camlparagraph_for_formula_let_match_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_formula_let_match_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_formula_let_match_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_clm = 
  match sym_clm with
  | Camlparagraph_for_formula_let_match_symbol_t.Let_builder_tag_list_off_top_formula ->

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_formula in
      let sym_se2 = Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula in
      let sym_se3 = Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula in
      let sym_se4 = Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_bare_for_formula in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_builder_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_builder_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]
	
  | Camlparagraph_for_formula_let_match_symbol_t.Let_data_tag_list_off_top_formula ->
(* camlparagraph_for_formula_let_match : let_data_tag_list_off_top_formula *)

(* section_for_formula_header_top_data : let_data_tag_list_off_top_formula *)
(* section_for_formula_body_son_top_data : data_tag_list_topson_pattern_notleaf_for_formula *)
(* section_for_formula_body_son_top_data : data_tag_list_topson_pattern_ofstring_for_formula *)
(* section_for_formula_body_son_top_data : data_tag_list_topson_pattern_bare_for_formula *)

      let sym_se1 = Section_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_formula in
      let sym_se2 = Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula in
      let sym_se3 = Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula in
      let sym_se4 = Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_bare_for_formula in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_data_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_data_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_data_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_data_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]
	
  | Camlparagraph_for_formula_let_match_symbol_t.Let_symbol_of_formula_equal_function ->

      let sym_se1 = Section_for_formula_header_symbol_v.let_symbol_of_formula_equal_function in
      let sym_se2 = Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_notleaf in
      let sym_se3 = Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_ofstring in
      let sym_se4 = Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_bare in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]

;;
