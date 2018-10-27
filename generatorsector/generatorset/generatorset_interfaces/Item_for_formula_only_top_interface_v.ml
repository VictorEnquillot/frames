(** {3 Item_for_formula_only_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : ";
   "Needs : IGNR:Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Item_for_formula_only_top_interface_v";
   "Needed-by : FGNR:Item_for_formula_only_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol} *)

let make sym_ifs =
  match sym_ifs with
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_builder_tag_list_off_top_tag *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_builder_tag_list_off_top_tag in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_build_n_store_basic_sons *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_build_n_store_basic_sons in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_build_n_store_proper_sons *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_build_n_store_proper_sons in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_match : let_data_tag_list_off_top_formula *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_match_symbol_v.let_data_tag_list_off_top_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_match_symbol sym_ca2;
     ]


  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_data_tag_list_off_top_tag *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_data_tag_list_off_top_tag in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.Documenting_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_documentation_for_formula *)

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
      let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_documentation_for_formula in
      let sym_ca3 = Camlparagraph_for_any_function_symbol_v.let_nam_cod_equal in
      
      [ 
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
	Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_function_symbol sym_ca3;
      ]

  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_fullname_argument_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
 
    ]

  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_map_for_formula *)
(* camlparagraph_for_formula_let_argument : let_iter_for_formula *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_map_for_formula in
    let sym_ca3 = Camlparagraph_for_formula_let_argument_symbol_v.let_iter_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca3;
    ]

  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_map2_for_formula *)
(* camlparagraph_for_formula_let_argument : let_iter2_for_formula *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_map2_for_formula in
    let sym_ca3 = Camlparagraph_for_formula_let_argument_symbol_v.let_iter2_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca3;
    ]

 
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_longname_argument_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]      

  | Item_for_formula_only_top_symbol_t.Naming_for_formula ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_name_argument_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_retrieve_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

  | Item_for_formula_only_top_symbol_t.String_offing_for_formula ->

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_argument_symbol_v.let_string_off_argument_for_formula in
      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_ca2;
     ]

;;
