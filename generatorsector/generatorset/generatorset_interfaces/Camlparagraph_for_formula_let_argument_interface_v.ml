(** {3 Camlparagraph_for_formula_let_argument_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_formula_let_argument_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_formula_let_argument_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cla = 
  match sym_cla with
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons ->
(* camlparagraph_for_formula_let_argument : let_build_n_store_basic_sons  *)

(* section_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* section_for_formula_body_top_main_data : builder_stem_sole_index_data_list  *)
(* section_for_formula_body_data : data_tag_list  *)
(* ;; *)

      let sym_se1 = Section_for_formula_header_top_main_symbol_v.let_build_n_store_basic_sons in
      let sym_se2 = Section_for_formula_body_top_main_data_symbol_v.builder_stem_sole_index_data_list in
      let sym_se3 = Section_for_formula_body_localset_data_symbol_v.data_tag_list in
      let sym_se4 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_main_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_main_data_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_localset_data_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se4;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_proper_sons ->
(* camlparagraph_for_formula_let_argument : let_build_n_store_proper_sons *)

(* section_for_formula_header_top_main : let_build_n_store_proper_sons  *)
(* section_for_formula_body_top_main_builder : builder_node_sole_index_builder_list *)
(* section_for_formula_body_localset_builder : builder_tag_list *)
(* ;; *)

      let sym_se1 = Section_for_formula_header_top_main_symbol_v.let_build_n_store_proper_sons in
      let sym_se2 = Section_for_formula_body_top_main_builder_symbol_v.builder_node_sole_index_builder_list in
      let sym_se3 = Section_for_formula_body_localset_builder_symbol_v.builder_tag_list in
      let sym_se4 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_main_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_main_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_localset_builder_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se4;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_builder_tag_list_off_top_tag ->
(* (\* camlparagraph_for_formula_let_argument : let_builder_tag_list_off_top_tag *\) *)

(* (\* section_for_formula_header_top_builder : let_builder_tag_list_off_top_tag *\) *)
(* let builder_tag_list_off_top_tag tag_top = *)

(* (\* section_for_formula_body_top_builder : builder_tag_list_of_tag_for_formula *\) *)
(*   let for_top = retrieve tag_top in *)
(*   builder_tag_list_off_top_formula for_top *)
(* ;;  *)

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_tag in
      let sym_se2 = Section_for_formula_body_top_builder_symbol_v.builder_tag_list_of_tag_for_formula in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_data_tag_list_off_top_tag ->

      let sym_se1 = Section_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_tag in
      let sym_se2 = Section_for_formula_body_top_data_symbol_v.data_tag_list_of_tag_for_formula in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_data_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_data_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_documentation_for_formula ->

      let sym_se1 = Section_for_any_header_constant_symbol_v.let_documentation in
      let sym_se2 = Section_for_formula_body_top_builder_data_symbol_v.documentation_list_for_formula in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_data_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_fullname_argument_for_formula ->

      Utilities_v.not_yet_implemented nam_cod "make Let_fullname_argument_for_formula"

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_iter2_for_formula ->

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_iter2_for_formula in
      let sym_se2 = Section_for_formula_body_top_builder_symbol_v.iter2_on_builder_tag_list in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_iter_for_formula ->

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_iter_for_formula in
      let sym_se2 = Section_for_formula_body_top_builder_symbol_v.iter_on_builder_tag_list in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_longname_argument_for_formula ->

      Utilities_v.not_yet_implemented nam_cod "make Let_longname_argument_for_formula"

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_make_arguments_for_formula ->

      let sym_se1 = Section_for_formula_header_top_main_symbol_v.let_make_arguments_equal_match_with in
      let sym_se2 = Section_for_formula_body_son_top_main_symbol_v.make_topson_pattern_notleaf_for_formula in
      let sym_se3 = Section_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_ofstring_for_formula in
      let sym_se4 = Section_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_bare_for_formula in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_main_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_main_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_map2_for_formula ->

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_map2_for_formula in
      let sym_se2 = Section_for_formula_body_top_builder_symbol_v.map2_on_builder_tag_list in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_map_for_formula ->

      let sym_se1 = Section_for_formula_header_top_builder_symbol_v.let_map_for_formula in
      let sym_se2 = Section_for_formula_body_top_builder_symbol_v.map_on_builder_tag_list in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_name_argument_for_formula ->

      let sym_se1 = Section_for_any_header_top_symbol_v.let_name_argument_equal in
      let sym_se2 = Section_for_formula_body_top_symbol_v.symbol_of_formula_in_name_top in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_retrieve_for_formula ->

      let sym_se1 = Section_for_any_header_top_symbol_v.let_retrieve_tag_top_equal in
      let sym_se2 = Section_for_any_body_top_main_symbol_v.make_tag_top in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_any_body_top_main_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_formula_let_argument_symbol_t.Let_string_off_argument_for_formula ->

      let sym_se1 = Section_for_any_header_top_symbol_v.let_string_off_argument_equal in
      let sym_se2 = Section_for_formula_body_top_symbol_v.symbol_of_formula_in_string_off_top in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_formula_body_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

;;
