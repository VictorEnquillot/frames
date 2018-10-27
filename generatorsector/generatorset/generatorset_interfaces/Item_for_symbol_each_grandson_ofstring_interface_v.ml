(** {3 Item_for_symbol_each_grandson_ofstring_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_grandson_symbol_list_by_item_for_symbol_each_grandson_ofstring_tuple_provider_v";
   "Current : FGNR:Item_for_symbol_each_grandson_ofstring_interface_v";
   "Needed-by : FGNR:Item_for_symbol_each_ofstring_interface_v";
   "What-is-it : the Camlparagraph_symbol list expressing Item_for_symbol_each_ofstring Abbreviating_grandson";
   "How-is-it-done : One Camlparagraph_symbol by Grandson Leaf";
   "Remark : It is a Tool";
   "Improve :";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make_of_tuple sex_ifs =
  let tri_ent = Sextuplet_v.right_triplet_off_sextuplet sex_ifs in

  let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in

  let sym_cap_tit = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol 
      sym_ca1 
  in 
  
  let sym_ent_gso_l = 
    Entity_grandson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
      tri_ent 
  in 
      
  let sym_ifs = Sextuplet_v.left_off_sextuplet sex_ifs in

  match sym_ifs with
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol ->
      
      let sym_ca2 = Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_grandson_ofstring in

      let sym_cao = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol 
	  sym_ca2 
      in

      let sym_cao_l =
	List_v.repeated_list_of_count_of_element 
	  (List.length sym_ent_gso_l)
	  sym_cao
      in

      sym_cap_tit :: sym_cao_l 

  | Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol ->
      
      let sym_ca2 = Camlparagraph_for_symbol_let_argument_symbol_v.let_is_grandson_ofstring in

      let sym_cao = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol 
	  sym_ca2
      in

      let sym_cao_l =
	List_v.repeated_list_of_count_of_element 
	  (List.length sym_ent_gso_l)
	  sym_cao
      in

      sym_cap_tit :: sym_cao_l 
;;
