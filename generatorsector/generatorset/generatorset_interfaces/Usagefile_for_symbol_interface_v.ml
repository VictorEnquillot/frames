(** {3 Usagefile_for_symbol_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Usagefile_for_symbol_interface_v";
   "Needed-by : FGNR:Usagefile_for_symbol_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make_of_tuple qui_uim = 
  let (sym_uim, sym_cof, sym_enp, sym_cat, sym_dos) = qui_uim in

  match sym_uim with
  | Usagefile_for_symbol_symbol_t.Implementation_for_symbol ->

      begin
	match sym_cof with
	| Contentfile_symbol_t.Type_alone ->
	    
	    [
	     Item_symbol_v.heading; 
	     Item_symbol_v.typing_for_symbol; 
	     Item_symbol_v.ending
	   ]
	      
	| Contentfile_symbol_t.Type_n_value ->
	    
	    Utilities_v.not_yet_implemented nam_cod "make Type_n_value"
	      
	| Contentfile_symbol_t.Value_alone ->

	    let sym_it1 = Item_for_any_only_top_symbol_v.heading in
	    let sym_it2 = Item_for_symbol_only_top_symbol_v.documenting_for_symbol in
	    let sym_it3 = Item_for_symbol_by_group_topsons_symbol_v.naming_for_symbol in

	    let sym_it4 = Item_for_symbol_by_group_topsons_symbol_v.string_offing_for_symbol in

	    let sym_it5 = Item_for_symbol_only_top_symbol_v.longnaming_for_symbol in
	    let sym_it6 = Item_for_symbol_only_top_symbol_v.fullnaming_for_symbol in

	    let sym_it7 = Item_for_symbol_each_topson_notleaf_symbol_v.extracting_topson_notleaf_for_symbol in
	    let sym_it8 = Item_for_symbol_each_grandson_notleaf_symbol_v.extracting_grandson_notleaf_for_symbol in

	    let sym_it9 = Item_for_symbol_each_topson_bare_symbol_v.querying_topson_bare_for_symbol in
	    let sym_i10 = Item_for_symbol_each_topson_ofstring_symbol_v.querying_topson_ofstring_for_symbol in
	    let sym_i11 = Item_for_symbol_each_topson_notleaf_symbol_v.querying_topson_notleaf_for_symbol in

	    let sym_i12 = Item_for_symbol_each_grandson_bare_symbol_v.querying_grandson_bare_for_symbol in
	    let sym_i13 = Item_for_symbol_each_grandson_ofstring_symbol_v.querying_grandson_ofstring_for_symbol in
	    let sym_i14 = Item_for_symbol_each_grandson_notleaf_symbol_v.querying_grandson_notleaf_for_symbol in

	    let sym_i15 = Item_for_symbol_each_topson_notleaf_symbol_v.upgrading_topson_notleaf_for_symbol in
	    let sym_i16 = Item_for_symbol_each_grandson_notleaf_symbol_v.upgrading_grandson_notleaf_for_symbol in

	    let sym_i17 = Item_for_symbol_each_topson_bare_symbol_v.abbreviating_topson_bare_for_symbol in
	    let sym_i18 = Item_for_symbol_each_topson_ofstring_symbol_v.abbreviating_topson_ofstring_for_symbol in

	    let sym_i19 = Item_for_symbol_each_grandson_bare_symbol_v.abbreviating_grandson_bare_for_symbol in
	    let sym_i20 = Item_for_symbol_each_grandson_ofstring_symbol_v.abbreviating_grandson_ofstring_for_symbol in

	    let sym_i21 = Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_bare in
	    let sym_i22 = Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_ofstring in
	    let sym_i23 = Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_notleaf in
	    let sym_i24 = Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol in

	    let sym_i25 = Item_for_any_only_top_symbol_v.ending in

	    [
	     Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_it1;
	     Item_symbol_v.item_symbol_of_item_for_symbol_only_top_symbol sym_it2;

	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_it3;
	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_it4;

	     Item_symbol_v.item_symbol_of_item_for_symbol_only_top_symbol sym_it5;
	     Item_symbol_v.item_symbol_of_item_for_symbol_only_top_symbol sym_it6;

	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_it7;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_it8;

	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_bare_symbol sym_it9;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_ofstring_symbol sym_i10;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_i11;

	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_bare_symbol sym_i12;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_ofstring_symbol sym_i13;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_i14;

 	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_i15;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_i16;

	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_bare_symbol sym_i17;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_ofstring_symbol sym_i18;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_bare_symbol sym_i19;
	     Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_ofstring_symbol sym_i20;

	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_i21;
	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_i22;
	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_i23;
	     Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_i24;

	     Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol sym_i25;
	   ]
      
      end

  | Usagefile_for_symbol_symbol_t.Interface_for_symbol ->
      
      Utilities_v.not_yet_implemented nam_cod "make Interface_for_symbol"
;;
