(** {3 Camlparagraph_for_any_comment_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_any_comment_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_any_comment_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cac = 
  match sym_cac with
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title -> 
      let sym_hea = Section_for_any_header_top_symbol_v.camlfile_title in

      [	
	Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_hea; 
      ]

  | Camlparagraph_for_any_comment_symbol_t.Empty -> 
      
      []
	
  | Camlparagraph_for_any_comment_symbol_t.Ending ->
      let sym_foo = Section_for_any_footer_symbol_v.ending in

      [ 
	Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_foo;
      ]
	
  | Camlparagraph_for_any_comment_symbol_t.Item_title -> 
      let sym_hea = Section_for_any_header_top_symbol_v.item_title in

      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_hea;
     ]
;;

