(** {3 Camlparagraph_for_symbol_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_symbol_interface_v";
   "Needed-by :FGNR:Camlparagraph_for_symbol_interface_v";
   "What-is-it : ";
   "How-is-it-done :";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cfs =
  match sym_cfs with
  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type ->

      let sym_se1 = Section_for_any_header_constant_symbol_v.type_et_any_equal in
      let sym_se2 = Section_for_any_body_son_symbol_v.pipe_topson_any_type_notleaf_constructors in
      let sym_se3 = Section_for_symbol_body_son_ofstring_symbol_v.pipe_topson_symbol_type_ofstring_constructors in
      let sym_se4 = Section_for_symbol_body_son_bare_symbol_v.pipe_topson_symbol_type_bare_constructors in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_any_body_son_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_bare_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]

  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol sym_csl ->
      Utilities_v.not_yet_implemented nam_cod "make Camlparagraph_for_symbol_let_symbol"
	
;;
