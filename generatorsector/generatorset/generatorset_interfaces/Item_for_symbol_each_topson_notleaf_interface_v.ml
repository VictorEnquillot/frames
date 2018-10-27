(** {3 Item_for_symbol_each_topson_notleaf_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : SGNR:Item_for_symbol_each_topson_notleaf_symbol_v";
   "Needs : IGNR:Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Item_for_symbol_each_topson_notleaf_interface_v";
   "Needed-by : FGNR:Item_for_symbol_each_topson_notleaf_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let make_of_tuple sex_ifs =
  let sym_ifs = Sextuplet_v.left_off_sextuplet sex_ifs in
  let tri_ent = Sextuplet_v.right_triplet_off_sextuplet sex_ifs in

  let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
  let sym_cap_tit = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol
      sym_ca1
    in

  match sym_ifs with
  | Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_notleaf_for_symbol ->
      
      let sym_ent = Triplet_v.left_off_triplet tri_ent in
      let sym_ca2 =
	if Entity_symbol_v.is_entity_proper_with_one_son sym_ent 
	then     
	  Camlparagraph_for_symbol_let_match_symbol_v.let_onlyson_notleaf_symbol_off_top_symbol
	else
	  Camlparagraph_for_symbol_let_match_symbol_v.let_topson_notleaf_symbol_off_top_symbol
      in
      
      let sym_cap = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol 
	  sym_ca2
      in
      
      let sym_cap_l = 
	Tools_ignr_v.topson_notleaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet
	  sym_cap 
	  tri_ent
      in
      
      sym_cap_tit :: sym_cap_l 
		      
  | Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol ->
      
      let sym_ent = Triplet_v.left_off_triplet tri_ent in
      let sym_ca2 =
	if Entity_symbol_v.is_entity_proper_with_one_son sym_ent 
	then     
	  Camlparagraph_for_symbol_let_match_symbol_v.let_is_onlyson_notleaf_symbol_off_top_symbol
	else
	  Camlparagraph_for_symbol_let_match_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol
      in
      
      let sym_cap = 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol 
	  sym_ca2
      in
      
      let sym_cap_l = 
	Tools_ignr_v.topson_notleaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet
	  sym_cap 
	  tri_ent
      in
      
      sym_cap_tit :: sym_cap_l 
		      
  | Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_notleaf_for_symbol ->

      let sym_ca2 =
	Camlparagraph_for_symbol_let_argument_symbol_v.let_top_symbol_of_topson_notleaf_symbol
      in
      let sym_cap =
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol
	  sym_ca2
      in
      
      let sym_cap_l =
	Tools_ignr_v.topson_notleaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet
	  sym_cap
	  tri_ent
      in
      
      sym_cap_tit :: sym_cap_l
;;
