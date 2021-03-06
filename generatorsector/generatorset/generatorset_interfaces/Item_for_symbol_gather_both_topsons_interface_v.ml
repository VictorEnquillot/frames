(** {3 Item_for_symbol_gather_both_topsons_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Item_for_symbol_gather_both_topsons_interface_v";
   "Needed-by : FGNR:Item_for_symbol_gather_both_topsons_for_symbol_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_ifs =
  match sym_ifs with
  | Item_for_symbol_gather_both_topsons_symbol_t.Listing_for_symbol -> 

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
      let sym_ca2 = Camlparagraph_for_symbol_let_mixed_symbol_v.let_symbol_list_argument_equal_function_for_symbol in
   [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_mixed_symbol sym_ca2;

     ]

  | Item_for_symbol_gather_both_topsons_symbol_t.Making_for_symbol -> 

      let sym_ca1 = Camlparagraph_for_any_comment_symbol_v.item_title in
      let sym_ca2 = Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_bare_nam_equal_for_symbol in
      let sym_ca3 = Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_ofstring_nam_s_equal_for_symbol in
      let sym_ca4 = Camlparagraph_for_symbol_let_argument_symbol_v.let_make_of_topson_notleaf_nam_s_equal_for_symbol in
      let sym_ca5 = Camlparagraph_for_symbol_let_argument_symbol_v.let_make_nam_s_equal_for_symbol in

      [
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol sym_ca1;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca2;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca3;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca4;
       Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol sym_ca5;
     ]

;;


