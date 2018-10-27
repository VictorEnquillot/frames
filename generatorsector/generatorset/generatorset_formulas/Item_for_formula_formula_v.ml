(** {3 Item_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Item_for_formula_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_iff = 
  match for_iff with
  | Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc1 ->
      Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
        (Item_for_formula_by_group_topsons_formula_v.symbol_of_formula for_cc1)

  | Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc2 ->
      Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
        (Item_for_formula_only_top_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_iff =
  let sym_iff = symbol_of_formula for_iff in
  Item_for_formula_symbol_v.name sym_iff
;;
(* ***
let longname for_iff =
  let sym_iff = symbol_of_formula for_iff in
  Item_for_formula_symbol_v.longname sym_iff
;;

let string_off for_iff =
  let sym_iff = symbol_of_formula for_iff in
  Item_for_formula_symbol_v.string_off sym_iff
;;

let fullname for_iff =
  let sym_iff = symbol_of_formula for_iff in
  Item_for_formula_symbol_v.longname sym_iff
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_iff soi_ite =
  match sym_iff with 
  | Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol sym_cc1 ->
      Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula 
        (Item_for_formula_by_group_topsons_formula_v.make sym_cc1 soi_ite)

  | Item_for_formula_symbol_t.Item_for_formula_only_top_symbol sym_cc2 ->
      Item_for_formula_formula_t.Item_for_formula_only_top_formula 
        (Item_for_formula_only_top_formula_v.make sym_cc2 soi_ite)
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_iff =
  let soi_ite = Tag_v.sole_index_off_tag tag_iff in
  let sym_iff = Tag_v.entity_off_tag tag_iff in
  make sym_iff soi_ite 
;; 

(** {6 Builder_tag_listing_off_formula} *)

let camlparagraph_tag_list_off_item_for_formula_formula for_iff =
  match for_iff with 
  | Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc1 ->
        Item_for_formula_by_group_topsons_formula_v.camlparagraph_tag_list_off_item_for_formula_by_group_topsons_formula for_cc1

  | Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc2 ->
        Item_for_formula_only_top_formula_v.camlparagraph_tag_list_off_item_for_formula_only_top_formula for_cc2
;;

(** {6 Builder_tag_listing_off_tag} *)

let camlparagraph_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlparagraph_tag_list_off_item_for_formula_formula for_ite
;;
    
(** {6 Builder_leaf_tag_listing_off_formula} *)

let camlline_tag_list_off_item_for_formula_formula for_iff =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_formula_formula 
      for_iff 
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

let camlline_tag_list_off_item_for_formula_tag tag_iff =
  let for_iff = retrieve tag_iff in
  camlline_tag_list_off_item_for_formula_formula for_iff
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_iff = 
  match for_iff with 
  | Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc1 ->
        Item_for_formula_by_group_topsons_formula_v.map f_of_tag_cap for_cc1

  | Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc2 ->
        Item_for_formula_only_top_formula_v.map f_of_tag_cap for_cc2
;;

let iter f_of_tag_cap for_iff = 
  match for_iff with 
  | Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc1 ->
        Item_for_formula_by_group_topsons_formula_v.iter f_of_tag_cap for_cc1

  | Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc2 ->
        Item_for_formula_only_top_formula_v.iter f_of_tag_cap for_cc2

;;

(** {6 Iterating_two_functions_for_formula} *)

let map2 f_of_tag_cap for_iff1 for_iff2 = 
  match (for_iff1, for_iff2) with
  | (Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc11, 
     Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc12) ->
	 Item_for_formula_by_group_topsons_formula_v.map2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc21,
     Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc22) ->
	 Item_for_formula_only_top_formula_v.map2 f_of_tag_cap for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_iff1) (name for_iff2))
	"Check"
;;

let iter2 f_of_tag_cap for_iff1 for_iff2 = 
  match (for_iff1, for_iff2) with
  | (Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc11, 
     Item_for_formula_formula_t.Item_for_formula_by_group_topsons_formula for_cc12) ->
	 Item_for_formula_by_group_topsons_formula_v.iter2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc21,
     Item_for_formula_formula_t.Item_for_formula_only_top_formula for_cc22) ->
	 Item_for_formula_only_top_formula_v.iter2 f_of_tag_cap for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_iff1) (name for_iff2))
	"Check"
;;

