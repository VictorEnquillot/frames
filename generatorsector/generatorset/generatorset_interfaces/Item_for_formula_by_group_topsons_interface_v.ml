(** {3 Item_for_formula_by_group_topsons_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Item_for_formula_by_group_topsons_interface_v";
   "Needed-by : FGNR:Item_for_formula_by_group_topsons_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_ifs =
  match sym_ifs with

  | Item_for_formula_by_group_topsons_symbol_t.Builder_tag_listing_off_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_match : let_builder_tag_list_off_top_formula *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_symbol_v.let_builder_tag_list_off_top_formula in

      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_symbol sym_ca2;
     ]

  | Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_match : let_symbol_of_formula_equal_function *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_symbol_v.let_symbol_of_formula_equal_function in

      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_symbol sym_ca2;
     ]

  | Item_for_formula_by_group_topsons_symbol_t.Making_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_let_argument : let_make_arguments_for_formula *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_let_symbol_v.let_make_arguments_for_formula in

      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_symbol sym_ca2;
     ]

  | Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula ->
(* camlparagraph_for_any_comment : item_title *)
(* camlparagraph_for_formula_symbol : camlparagraph_for_formula_type *)

    let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
    let sym_ca2 = Camlparagraph_for_formula_symbol_v.camlparagraph_for_formula_type in

      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_symbol sym_ca2;
     ]

;;


