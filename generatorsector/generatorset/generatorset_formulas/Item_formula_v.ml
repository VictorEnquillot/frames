(** {3 Item_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Item_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_leaf : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_ite = 
  match for_ite with
  | Item_formula_t.Item_for_any_only_top_formula for_cc1 ->
      Item_symbol_t.Item_for_any_only_top_symbol
        (Item_for_any_only_top_formula_v.symbol_of_formula for_cc1)

  | Item_formula_t.Item_for_formula_formula for_cc2 ->
      Item_symbol_t.Item_for_formula_symbol
        (Item_for_formula_formula_v.symbol_of_formula for_cc2)

  | Item_formula_t.Item_for_symbol_formula for_cc3 ->
      Item_symbol_t.Item_for_symbol_symbol
        (Item_for_symbol_formula_v.symbol_of_formula for_cc3)
;;

(** {6 Naming_for_formula} *)

let name for_ite =
  let sym_ite = symbol_of_formula for_ite in
  Item_symbol_v.name sym_ite
;;
(* ***
let longname for_ite =
  let sym_ite = symbol_of_formula for_ite in
  Item_symbol_v.longname sym_ite
;;

let string_off for_ite =
  let sym_ite = symbol_of_formula for_ite in
  Item_symbol_v.string_off sym_ite
;;

let fullname for_ite =
  let sym_ite = symbol_of_formula for_ite in
  Item_symbol_v.longname sym_ite
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ite soi_ite =
  match sym_ite with 
  | Item_symbol_t.Item_for_any_only_top_symbol sym_cc1 ->
      Item_formula_t.Item_for_any_only_top_formula 
        (Item_for_any_only_top_formula_v.make sym_cc1 soi_ite)

  | Item_symbol_t.Item_for_formula_symbol sym_cc2 ->
      Item_formula_t.Item_for_formula_formula 
        (Item_for_formula_formula_v.make sym_cc2 soi_ite)

  | Item_symbol_t.Item_for_symbol_symbol sym_cc3 ->
      Item_formula_t.Item_for_symbol_formula 
        (Item_for_symbol_formula_v.make sym_cc3 soi_ite)
;;

(** {6 Retrieving} *)

let retrieve tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  make sym_ite soi_ite 
;; 

(** {6 Builder_tag_listing} *)

let camlparagraph_tag_list_off_item_formula for_ite =
  match for_ite with 
  | Item_formula_t.Item_for_any_only_top_formula for_cc1 ->
        Item_for_any_only_top_formula_v.camlparagraph_tag_list_off_item_for_any_only_top_formula for_cc1

  | Item_formula_t.Item_for_formula_formula for_cc2 ->
        Item_for_formula_formula_v.camlparagraph_tag_list_off_item_for_formula_formula for_cc2

  | Item_formula_t.Item_for_symbol_formula for_cc3 ->
        Item_for_symbol_formula_v.camlparagraph_tag_list_off_item_for_symbol_formula for_cc3
;;

let camlparagraph_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlparagraph_tag_list_off_item_formula for_ite
;;
    
let camlline_tag_list_off_item_formula for_ite =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_formula 
      for_ite 
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

let camlline_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_item_formula for_ite
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_ite = 
  match for_ite with 
  | Item_formula_t.Item_for_formula_formula for_cc2 ->
        Item_for_formula_formula_v.map f_of_tag_cap for_cc2

  | Item_formula_t.Item_for_symbol_formula for_cc3 ->
        Item_for_symbol_formula_v.map f_of_tag_cap for_cc3

  | Item_formula_t.Item_for_any_only_top_formula for_cc1 ->
        Item_for_any_only_top_formula_v.map f_of_tag_cap for_cc1

;;

let iter f_of_tag_cap for_ite = 
  match for_ite with 
  | Item_formula_t.Item_for_any_only_top_formula for_cc1 ->
        Item_for_any_only_top_formula_v.iter f_of_tag_cap for_cc1

  | Item_formula_t.Item_for_formula_formula for_cc2 ->
        Item_for_formula_formula_v.iter f_of_tag_cap for_cc2

  | Item_formula_t.Item_for_symbol_formula for_cc3 ->
        Item_for_symbol_formula_v.iter f_of_tag_cap for_cc3



;;

let map2 f_of_tag_cap for_ite1 for_ite2 = 
  match (for_ite1, for_ite2) with
  | (Item_formula_t.Item_for_any_only_top_formula for_cc11, 
     Item_formula_t.Item_for_any_only_top_formula for_cc12) ->
	 Item_for_any_only_top_formula_v.map2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_formula_t.Item_for_formula_formula for_cc21,
     Item_formula_t.Item_for_formula_formula for_cc22) ->
	 Item_for_formula_formula_v.map2 f_of_tag_cap for_cc21 for_cc22

  | (Item_formula_t.Item_for_symbol_formula for_cc31, 
     Item_formula_t.Item_for_symbol_formula for_cc32) ->
	 Item_for_symbol_formula_v.map2 f_of_tag_cap for_cc31 for_cc32

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_ite1) (name for_ite2))
	"Check"
;;

let iter2 f_of_tag_cap for_ite1 for_ite2 = 
  match (for_ite1, for_ite2) with
  | (Item_formula_t.Item_for_any_only_top_formula for_cc11, 
     Item_formula_t.Item_for_any_only_top_formula for_cc12) ->
	 Item_for_any_only_top_formula_v.iter2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Item_formula_t.Item_for_formula_formula for_cc21,
     Item_formula_t.Item_for_formula_formula for_cc22) ->
	 Item_for_formula_formula_v.iter2 f_of_tag_cap for_cc21 for_cc22

  | (Item_formula_t.Item_for_symbol_formula for_cc31, 
     Item_formula_t.Item_for_symbol_formula for_cc32) ->
	 Item_for_symbol_formula_v.iter2 f_of_tag_cap for_cc31 for_cc32
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Item type" 
	(Format.sprintf "couple (%s, %s)" (name for_ite1) (name for_ite2))
	"Check"
;;

(** {6 Making.} *)

let make sym_ite soi_ite =
  match sym_ite with 
  | Item_symbol_t.Item_for_formula_symbol sym_cc1 ->
      Item_formula_t.Item_for_formula_formula 
        (Item_for_formula_formula_v.make sym_cc1 soi_ite)

  | Item_symbol_t.Item_for_symbol_symbol sym_cc1 ->
      Item_formula_t.Item_for_symbol_formula 
        (Item_for_symbol_formula_v.make sym_cc1 soi_ite)

  | Item_symbol_t.Item_for_any_only_top_symbol sym_cc2 ->
      Item_formula_t.Item_for_any_only_top_formula 
        (Item_for_any_only_top_formula_v.make sym_cc2 soi_ite)
;;

(** {6 Retrieving.} *)

let retrieve tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  make sym_ite soi_ite 
;; 

(** {6 Extracting.} *)

let camlparagraph_tag_list_off_item_formula for_ite =
  match for_ite with 
  | Item_formula_t.Item_for_formula_formula for_cc1 ->
        Item_for_formula_formula_v.camlparagraph_tag_list_off_item_for_formula_formula for_cc1

  | Item_formula_t.Item_for_symbol_formula for_cc1 ->
        Item_for_symbol_formula_v.camlparagraph_tag_list_off_item_for_symbol_formula for_cc1

  | Item_formula_t.Item_for_any_only_top_formula for_cc2 ->
        Item_for_any_only_top_formula_v.camlparagraph_tag_list_off_item_for_any_only_top_formula for_cc2

;;

let camlparagraph_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlparagraph_tag_list_off_item_formula for_ite
;;
    
let camlline_tag_list_off_item_formula for_ite =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_formula 
      for_ite 
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

let camlline_tag_list_off_item_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_item_formula for_ite
;;

(** {6 Iterating.} *)

let map f for_ite = 
  let tag_cal_l = camlline_tag_list_off_item_formula for_ite in
  List.map f tag_cal_l
;;

let iter f for_ite = 
  let tag_cal_l = camlline_tag_list_off_item_formula for_ite in
  List.iter f tag_cal_l ;;

let map2 f for_ite_1 for_ite_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_item_formula for_ite_1 in
  let tag_cal_l_2 = camlline_tag_list_off_item_formula for_ite_2 in
  List.map2 f tag_cal_l_1 tag_cal_l_2
;;

let iter2 f for_ite_1 for_ite_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_item_formula for_ite_1 in
  let tag_cal_l_2 = camlline_tag_list_off_item_formula for_ite_2 in
  List.iter2 f tag_cal_l_1 tag_cal_l_2 
;;

