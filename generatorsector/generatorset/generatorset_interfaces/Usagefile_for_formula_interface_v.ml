(** {3 Usagefile_for_formula_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Usagefile_for_formula_interface_v";
   "Needed-by : FGNR:Usagefile_for_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let is_constructor_stem_of_entity_proper_tritup tri_enp =
  let sym_ent_sut =
    Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide 
      tri_enp
  in
  Tree_v.has_some_topson_leaf_of_tree sym_ent_sut
;;

let is_builder_stem_of_entity_proper_tritup tri_enp =
  let sym_ent_sut =
    Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide 
      tri_enp
  in
  Tree_v.has_some_topson_leaf_of_tree sym_ent_sut
;;

let has_no_builder_proper_topson_symbol_of_entity_proper_tritup tri_enp =
  let sym_bui_t = 
    Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide
      tri_enp
  in
  
  Tree_v.has_no_topson_inner_of_tree sym_bui_t
;;

let all_item_symbol_list =
  let sym_it1 = Item_for_any_only_top_symbol_v.heading in
  let sym_it2 = Item_for_formula_by_group_topsons_symbol_v.symbolizing_for_formula in
  let sym_it3 = Item_for_formula_only_top_symbol_v.building_and_storing_basic_sons in
  let sym_it4 = Item_for_formula_only_top_symbol_v.building_and_storing_proper_sons in
  let sym_it5 = Item_for_formula_by_group_topsons_symbol_v.making_for_formula in
  let sym_it6 = Item_for_formula_only_top_symbol_v.retrieving_for_formula in
  let sym_it7 = Item_for_formula_by_group_topsons_symbol_v.builder_tag_listing_off_formula in
  let sym_it8 = Item_for_formula_only_top_symbol_v.builder_tag_listing_off_tag in
  let sym_it9 = Item_for_formula_only_top_symbol_v.data_tag_listing_off_formula in
  let sym_i10 = Item_for_formula_only_top_symbol_v.data_tag_listing_off_tag in
  let sym_i11 = Item_for_any_only_top_symbol_v.ending in
  
  [
   Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_it1;
   Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_it2;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it3;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it4;
   Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_it5;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it6;
   Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_it7;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it8;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it9;
   Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i10;
   Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_i11;
 ]
;;

(** {6 Builder_symbol Datastructure} *)

let make_of_tuple qui_uim = 
  let (sym_uim, sym_cof, sym_ent, sym_cat, sym_dos) = qui_uim in

  match sym_uim with
  | Usagefile_for_formula_symbol_t.Implementation_for_formula ->

      begin
	match sym_cof with
	| Contentfile_symbol_t.Type_alone ->
	    
	    [
	     Item_symbol_v.heading; 
	     Item_symbol_v.typing_for_formula; 
	     Item_symbol_v.ending
	   ]
	      
	| Contentfile_symbol_t.Type_n_value ->
	    
	    Utilities_v.not_yet_implemented nam_cod "make Type_n_value"
	      
	| Contentfile_symbol_t.Value_alone ->

	    let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent in
	    let tri_enp = (sym_enp, sym_cat, sym_dos) in

	    let sym_it3 = List.nth all_item_symbol_list 2 in (* building_and_storing_basic_sons *)
	    let sym_it4 = List.nth all_item_symbol_list 3 in (* building_and_storing_proper_sons *)
	    let sym_it7 = List.nth all_item_symbol_list 6 in (* builder_tag_listing_off_formula *)
	    let sym_it8 = List.nth all_item_symbol_list 7 in (* builder_tag_listing_off_tag *)
  
            let no_it3_it4_l =
	      if is_constructor_stem_of_entity_proper_tritup tri_enp 
	      then 

		if is_builder_stem_of_entity_proper_tritup tri_enp
		then List_v.exclude_of_element_of_list sym_it4 all_item_symbol_list (* basic *)
		else List_v.exclude_of_element_of_list sym_it3 all_item_symbol_list (* proper *)

	      else 

		List_v.exclusion_off_list_of_list all_item_symbol_list [sym_it3; sym_it4] 
	    in

	    if has_no_builder_proper_topson_symbol_of_entity_proper_tritup tri_enp
	    then List_v.exclusion_off_list_of_list no_it3_it4_l [sym_it7; sym_it8]
	    else no_it3_it4_l
      end

  | Usagefile_for_formula_symbol_t.Interface_for_formula ->
      
      Utilities_v.not_yet_implemented nam_cod "make Interface_for_formula"
;;


      (* 	| Contentfile_symbol_t.Value_alone -> *)

      (* 	    let sym_it1 = Item_for_any_only_top_symbol_v.heading in *)
      (* 	    let sym_it2 = Item_for_formula_only_top_symbol_v.documenting_for_formula in *)

      (* 	    let sym_it3 = Item_for_formula_by_group_topsons_symbol_v.symbolizing_for_formula in *)

      (* 	    let sym_it4 = Item_for_formula_only_top_symbol_v.naming_for_formula in *)
      (* 	    let sym_it5 = Item_for_formula_only_top_symbol_v.string_offing_for_formula in *)
      (* 	    let sym_it6 = Item_for_formula_only_top_symbol_v.longnaming_for_formula in *)
      (* 	    let sym_it7 = Item_for_formula_only_top_symbol_v.fullnaming_for_formula in *)
      (* 	    let sym_it8 = Item_for_formula_only_top_symbol_v.building_and_storing_for_formula in *)

      (* 	    let sym_it9 = Item_for_formula_by_group_topsons_symbol_v.making_for_formula in *)
	   
      (* 	    let sym_i10 = Item_for_formula_only_top_symbol_v.retrieving_for_formula in *)

      (* 	    let sym_i11 = Item_for_formula_by_group_topsons_symbol_v.builder_tag_listing_off_formula in *)

      (* 	    let sym_i12 = Item_for_formula_only_top_symbol_v.builder_tag_listing_off_tag in *)
      (* 	    let sym_i13 = Item_for_formula_only_top_symbol_v.data_tag_listing_off_formula in *)
      (* 	    let sym_i14 = Item_for_formula_only_top_symbol_v.data_tag_listing_off_tag in *)
      (* 	    let sym_i15 = Item_for_formula_only_top_symbol_v.iterating_one_function_for_formula in *)
      (* 	    let sym_i16 = Item_for_formula_only_top_symbol_v.iterating_two_functions_for_formula in *)

      (* 	    let sym_i17 = Item_for_any_only_top_symbol_v.ending in *)

      (* 	    [ *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_it1; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it2; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_it3; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it4; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it5; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it6; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it7; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_it8; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_it9; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i10; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol sym_i11; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i12; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i13; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i14; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i15; *)
      (* 	     Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol sym_i16; *)

      (* 	     Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_i17; *)
      (* 	   ] *)
      
