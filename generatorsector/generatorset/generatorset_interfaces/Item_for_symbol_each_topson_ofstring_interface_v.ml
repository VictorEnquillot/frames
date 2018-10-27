(** {3 Item_for_symbol_each_topson_ofstring_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : SGNR:Item_for_symbol_each_topson_ofstring_symbol_v";
   "Needs : IGNR:Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Item_for_symbol_each_topson_ofstring_interface_v";
   "Needed-by : FGNR:Item_for_symbol_each_topson_ofstring_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let make_of_tuple sex_ifs =
  let tri_ent = Sextuplet_v.right_triplet_off_sextuplet sex_ifs in

  let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in

  let sym_cap_tit = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol 
      sym_ca1 
  in 
      
  let sym_ent_tso_l = 
    Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
      tri_ent 
  in 
      
  let sym_ifs = Sextuplet_v.left_off_sextuplet sex_ifs in

  match sym_ifs with
  | Item_for_symbol_each_topson_ofstring_symbol_t.Abbreviating_topson_ofstring_for_symbol ->
      
      let sym_ca2 = Camlparagraph_for_symbol_let_abbreviate_symbol_v.let_abbreviate_topson_ofstring in

      let sym_cao = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol 
	  sym_ca2 
      in

      let sym_cao_l =
	List_v.repeated_list_of_count_of_element 
	  (List.length sym_ent_tso_l)
	  sym_cao
      in

      sym_cap_tit :: sym_cao_l 

  | Item_for_symbol_each_topson_ofstring_symbol_t.Querying_topson_ofstring_for_symbol ->
      
      let sym_ent = Triplet_v.left_off_triplet tri_ent in
      let sym_ca2 =
	if Entity_symbol_v.is_entity_proper_with_one_son sym_ent 
	then     
	  Camlparagraph_for_symbol_let_match_symbol_v.let_is_onlyson_ofstring
	else
	  Camlparagraph_for_symbol_let_match_symbol_v.let_is_topson_ofstring
      in
      
      let sym_cao = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol 
	  sym_ca2
      in

      let sym_cao_l =
	List_v.repeated_list_of_count_of_element 
	  (List.length sym_ent_tso_l)
	  sym_cao
      in

      sym_cap_tit :: sym_cao_l 
;;
