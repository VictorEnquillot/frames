(** {3 Item_node_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Item_node_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_iii = 
  match for_iii with
  | Item_node_formula_t.Item_node_sub_1_formula for_cc1 ->
      Item_node_symbol_t.Item_node_sub_1_symbol
        (Item_node_sub_1_formula_v.symbol_of_formula for_cc1)

  | Item_node_formula_t.Item_node_sub_2_formula for_cc2 ->
      Item_node_symbol_t.Item_node_sub_2_symbol
        (Item_node_sub_2_formula_v.symbol_of_formula for_cc2)

  | Item_node_formula_t.Item_node_sub_3_formula for_cc3 ->
      Item_node_symbol_t.Item_node_sub_3_symbol
        (Item_node_sub_3_formula_v.symbol_of_formula for_cc3)

  | Item_node_formula_t.Item_node_sub_4_formula for_cc4 ->
      Item_node_symbol_t.Item_node_sub_4_symbol
        (Item_node_sub_4_formula_v.symbol_of_formula for_cc4)

  | Item_node_formula_t.Item_node_sub_5_formula for_cc5 ->
      Item_node_symbol_t.Item_node_sub_5_symbol
        (Item_node_sub_5_formula_v.symbol_of_formula for_cc5)

  | Item_node_formula_t.Item_node_sub_6_formula for_cc6 ->
      Item_node_symbol_t.Item_node_sub_6_symbol
        (Item_node_sub_6_formula_v.symbol_of_formula for_cc6)
;;

(** {6 Naming_for_formula} *)

let name for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Item_node_symbol_v.name sym_iii
;;
(* ***
let longname for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Item_node_symbol_v.longname sym_iii
;;

let string_off for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Item_node_symbol_v.string_off sym_iii
;;

let fullname for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Item_node_symbol_v.longname sym_iii
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_iii soi_ite =
  match sym_iii with 
  | Item_node_symbol_t.Item_node_sub_1_symbol sym_cc1 ->
      Item_node_formula_t.Item_node_sub_1_formula 
        (Item_node_sub_1_formula_v.make sym_cc1 soi_ite)

  | Item_node_symbol_t.Item_node_sub_2_symbol sym_cc2 ->
      Item_node_formula_t.Item_node_sub_2_formula 
        (Item_node_sub_2_formula_v.make sym_cc2 soi_ite)

  | Item_node_symbol_t.Item_node_sub_3_symbol sym_cc3 ->
      Item_node_formula_t.Item_node_sub_3_formula 
        (Item_node_sub_1_formula_v.make sym_cc3 soi_ite)

  | Item_node_symbol_t.Item_node_sub_4_symbol sym_cc4 ->
      Item_node_formula_t.Item_node_sub_4_formula 
        (Item_node_sub_2_formula_v.make sym_cc4 soi_ite)

  | Item_node_symbol_t.Item_node_sub_5_symbol sym_cc5 ->
      Item_node_formula_t.Item_node_sub_5_formula 
        (Item_node_sub_2_formula_v.make sym_cc5 soi_ite)

  | Item_node_symbol_t.Item_node_sub_6_symbol sym_cc6 ->
      Item_node_formula_t.Item_node_sub_6_formula 
        (Item_node_sub_2_formula_v.make sym_cc6 soi_ite)
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_iii =
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  make sym_iii soi_ite 
;; 

(** {6 Builder_tag_listing_off_formula} *)

let camlparagraph_tag_list_off_item_node_formula for_iii =
  match for_iii with 
  | Item_node_formula_t.Item_node_sub_1_formula for_cc1 ->
        Item_node_sub_1_formula_v.camlparagraph_tag_list_off_item_node_sub_1_formula for_cc1

  | Item_node_formula_t.Item_node_sub_2_formula for_cc2 ->
        Item_node_sub_2_formula_v.camlparagraph_tag_list_off_item_node_sub_2_formula for_cc2

  | Item_node_formula_t.Item_node_sub_3_formula for_cc3 ->
        Item_node_sub_3_formula_v.camlparagraph_tag_list_off_item_node_sub_3_formula for_cc3

  | Item_node_formula_t.Item_node_sub_4_formula for_cc4 ->
        Item_node_sub_4_formula_v.camlparagraph_tag_list_off_item_node_sub_4_formula for_cc4

  | Item_node_formula_t.Item_node_sub_5_formula for_cc5 ->
        Item_node_sub_5_formula_v.camlparagraph_tag_list_off_item_node_sub_5_formula for_cc5

  | Item_node_formula_t.Item_node_sub_6_formula for_cc6 ->
        Item_node_sub_6_formula_v.camlparagraph_tag_list_off_item_node_sub_6_formula for_cc6
;;

(** {6 Builder_tag_listing_off_tag} *)

let camlparagraph_tag_list_off_item_node_tag tag_iii =
  let for_ite = retrieve tag_iii in
  camlparagraph_tag_list_off_item_node_formula for_iii
;;
    
(** {6 Builder_leaf_tag_listing_off_formula} *)

let camlline_tag_list_off_item_node_formula for_iii =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_node_formula 
      for_iii 
  in
  let for_cap_l = List.map
      Camlparagraph_formula_v.retrieve 
      tag_cap_l 
  in
  let tag_cal_ll = List.map
      Camlparagraph_formula_v.camlline_tag_list_off_camlparagraph_formula 
      for_cap_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Builder_leaf_tag_listing_off_tag} *)

let camlline_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_item_formula for_ite
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_iii = 
  match for_iii with 
  | Item_node_formula_t.Item_node_sub_1_formula for_cc1 ->
        Item_node_sub_1_formula_v.map f_of_tag_cap for_cc1

  | Item_node_formula_t.Item_node_sub_2_formula for_cc2 ->
        Item_node_sub_2_formula_v.map f_of_tag_cap for_cc2

  | Item_node_formula_t.Item_node_sub_3_formula for_cc3 ->
        Item_node_sub_3_formula_v.map f_of_tag_cap for_cc3

  | Item_node_formula_t.Item_node_sub_4_formula for_cc4 ->
        Item_node_sub_4_formula_v.map f_of_tag_cap for_cc4

  | Item_node_formula_t.Item_node_sub_5_formula for_cc5 ->
        Item_node_sub_5_formula_v.map f_of_tag_cap for_cc5

  | Item_node_formula_t.Item_node_sub_6_formula for_cc6 ->
        Item_node_sub_6_formula_v.map f_of_tag_cap for_cc6
;;

let iter f_of_tag_cap for_iii = 
  match for_iii with 
  | Item_node_formula_t.Item_node_sub_1_formula for_cc1 ->
        Item_node_sub_1_formula_v.iter f_of_tag_cap for_cc1

  | Item_node_formula_t.Item_node_sub_2_formula for_cc2 ->
        Item_node_sub_2_formula_v.iter f_of_tag_cap for_cc2

  | Item_node_formula_t.Item_node_sub_3_formula for_cc3 ->
        Item_node_sub_3_formula_v.iter f_of_tag_cap for_cc3

  | Item_node_formula_t.Item_node_sub_4_formula for_cc4 ->
        Item_node_sub_4_formula_v.iter f_of_tag_cap for_cc4

  | Item_node_formula_t.Item_node_sub_5_formula for_cc5 ->
        Item_node_sub_5_formula_v.iter f_of_tag_cap for_cc5

  | Item_node_formula_t.Item_node_sub_6_formula for_cc6 ->
        Item_node_sub_6_formula_v.iter f_of_tag_cap for_cc6
;;

(** {6 Iterating_two_functions_for_formula} *)

let map2 f_of_tag_cap for_iii1 for_iii2 = 
  match (for_iii1, for_iii2) with
  | (Item_node_formula_t.Item_node_sub_1_formula for_cc11, 
     Item_node_formula_t.Item_node_sub_1_formula for_cc12) ->
	 Item_node_sub_1_formula_v.map2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_node_formula_t.Item_node_sub_2_formula for_cc21,
     Item_node_formula_t.Item_node_sub_2_formula for_cc22) ->
	 Item_node_sub_2_formula_v.map2 f_of_tag_cap for_cc21 for_cc22

  | (Item_node_formula_t.Item_node_sub_3_formula for_cc31, 
     Item_node_formula_t.Item_node_sub_3_formula for_cc32) ->
	 Item_node_sub_3_formula_v.map2 f_of_tag_cap for_cc31 for_cc32
	 
  | (Item_node_formula_t.Item_node_sub_4_formula for_cc41,
     Item_node_formula_t.Item_node_sub_4_formula for_cc42) ->
	 Item_node_sub_4_formula_v.map2 f_of_tag_cap for_cc41 for_cc42

  | (Item_node_formula_t.Item_node_sub_5_formula for_cc51, 
     Item_node_formula_t.Item_node_sub_5_formula for_cc52) ->
	 Item_node_sub_5_formula_v.map2 f_of_tag_cap for_cc51 for_cc52
	 
  | (Item_node_formula_t.Item_node_sub_6_formula for_cc61,
     Item_node_formula_t.Item_node_sub_6_formula for_cc62) ->
	 Item_node_sub_6_formula_v.map2 f_of_tag_cap for_cc61 for_cc62

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_iii1) (name for_iii2))
	"Check"
;;

let iter2 f_of_tag_cap for_iii1 for_iii2 = 
  match (for_iii1, for_iii2) with
  | (Item_node_formula_t.Item_node_sub_1_formula for_cc11, 
     Item_node_formula_t.Item_node_sub_1_formula for_cc12) ->
	 Item_node_sub_1_formula_v.iter2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_node_formula_t.Item_node_sub_2_formula for_cc21,
     Item_node_formula_t.Item_node_sub_2_formula for_cc22) ->
	 Item_node_sub_2_formula_v.iter2 f_of_tag_cap for_cc21 for_cc22

  | (Item_node_formula_t.Item_node_sub_3_formula for_cc31, 
     Item_node_formula_t.Item_node_sub_3_formula for_cc32) ->
	 Item_node_sub_3_formula_v.iter2 f_of_tag_cap for_cc31 for_cc32
	 
  | (Item_node_formula_t.Item_node_sub_4_formula for_cc41,
     Item_node_formula_t.Item_node_sub_4_formula for_cc42) ->
	 Item_node_sub_4_formula_v.iter2 f_of_tag_cap for_cc41 for_cc42

  | (Item_node_formula_t.Item_node_sub_5_formula for_cc51, 
     Item_node_formula_t.Item_node_sub_5_formula for_cc52) ->
	 Item_node_sub_5_formula_v.iter2 f_of_tag_cap for_cc51 for_cc52
	 
  | (Item_node_formula_t.Item_node_sub_6_formula for_cc61,
     Item_node_formula_t.Item_node_sub_6_formula for_cc62) ->
	 Item_node_sub_6_formula_v.iter2 f_of_tag_cap for_cc61 for_cc62

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_iii1) (name for_iii2))
	"Check"
;;

