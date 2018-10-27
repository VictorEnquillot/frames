(** {3 Item_for_symbol_only_top_for_any_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : SGNR:Item_for_symbol_only_top_for_any_symbol_v";
   "Needs : IGNR:Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Item_for_symbol_only_top_for_any_interface_v";
   "Needed-by : FGNR:Item_for_symbol_only_top_for_any_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol} *)

let make sym_iff =
  match sym_iff with
  | Item_for_any_only_top_symbol_t.Documenting ->

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
      let sym_ca2 = Camlparagraph_for_any_function_symbol_v.let_documentation in
      let sym_ca3 = Camlparagraph_for_any_function_symbol_v.let_nam_cod_equal in
      
      [ 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_function_symbol sym_ca2;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_function_symbol sym_ca3;
      ]
      
  | Item_for_any_only_top_symbol_t.Ending ->

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.ending in
      [ 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
      ]
      
  | Item_for_any_only_top_symbol_t.Heading ->

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.camlfile_title in
      [ 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
      ]
      
;;
