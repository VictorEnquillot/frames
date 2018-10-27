(** {3 Item_for_symbol_only_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : SGNR:Item_for_symbol_only_top_symbol_v";
   "Needs : IGNR:Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Item_for_symbol_only_top_interface_v";
   "Needed-by : FGNR:Item_for_symbol_only_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol} *)

let make sym_ifs =
  match sym_ifs with
   | Item_for_symbol_only_top_symbol_t.Documenting_for_symbol ->

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
      let sym_ca2 = Camlparagraph_for_symbol_let_argument_symbol_v.let_documentation_for_symbol in
      let sym_ca3 = Camlparagraph_for_any_function_symbol_v.let_nam_cod_equal in
      
      [ 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca2;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_function_symbol sym_ca3;
      ]
      

 | Item_for_symbol_only_top_symbol_t.Fullnaming_for_symbol ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_symbol_let_argument_symbol_v.let_fullname_argument_for_symbol in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca2;
     ]

  | Item_for_symbol_only_top_symbol_t.Longnaming_for_symbol ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_symbol_let_argument_symbol_v.let_longname_argument_for_symbol in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca2;
     ]      

;;
