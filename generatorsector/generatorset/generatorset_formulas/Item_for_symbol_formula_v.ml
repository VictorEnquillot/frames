(** {3 Item_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Item_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_ifs = 
  match for_ifs with
  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_bare_formula for_cc1 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol
        (Item_for_symbol_each_grandson_bare_formula_v.symbol_of_formula for_cc1)

  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_notleaf_formula for_cc2 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
        (Item_for_symbol_each_grandson_notleaf_formula_v.symbol_of_formula for_cc2)

  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_ofstring_formula for_cc3 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol
        (Item_for_symbol_each_grandson_ofstring_formula_v.symbol_of_formula for_cc3)

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_bare_formula for_cc4 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
        (Item_for_symbol_each_topson_bare_formula_v.symbol_of_formula for_cc4)

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_notleaf_formula for_cc5 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
        (Item_for_symbol_each_topson_notleaf_formula_v.symbol_of_formula for_cc5)

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_ofstring_formula for_cc6 ->
      Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
        (Item_for_symbol_each_topson_ofstring_formula_v.symbol_of_formula for_cc6)

  | Item_for_symbol_formula_t.Item_for_symbol_only_top_formula for_cc7 ->
      Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol
        (Item_for_symbol_only_top_formula_v.symbol_of_formula for_cc7)

  | Item_for_symbol_formula_t.Item_for_symbol_by_group_topsons_formula for_cc8 ->
      Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
        (Item_for_symbol_by_group_topsons_formula_v.symbol_of_formula for_cc8)
;;


(** {6 Naming_for_formula} *)

let name for_ifs =
  let sym_ifs = symbol_of_formula for_ifs in
  Item_for_symbol_symbol_v.name sym_ifs
;;

let longname for_ifs =
  Format.sprintf "Item_t.%s" 
    (String.capitalize (name for_ifs))

let string_off for_ifs = "";;

let fullname for_ifs =
  Format.sprintf "%s \"%s\"" (longname for_ifs) (string_off for_ifs)
;;

(** {6 Making.} *)

let make sym_ifs soi_ite =
  match sym_ifs with 
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_cc2 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_grandson_bare_formula 
        (Item_for_symbol_each_grandson_bare_formula_v.make sym_cc2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_cc2 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_grandson_ofstring_formula 
        (Item_for_symbol_each_grandson_ofstring_formula_v.make sym_cc2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_cc3 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_grandson_notleaf_formula 
        (Item_for_symbol_each_grandson_notleaf_formula_v.make sym_cc3 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_cc4 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_topson_bare_formula 
        (Item_for_symbol_each_topson_bare_formula_v.make sym_cc4 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_cc4 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_topson_ofstring_formula 
        (Item_for_symbol_each_topson_ofstring_formula_v.make sym_cc4 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_cc5 ->
      Item_for_symbol_formula_t.Item_for_symbol_each_topson_notleaf_formula 
        (Item_for_symbol_each_topson_notleaf_formula_v.make sym_cc5 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_cc5 ->
      Item_for_symbol_formula_t.Item_for_symbol_by_group_topsons_formula 
        (Item_for_symbol_by_group_topsons_formula_v.make sym_cc5 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_cc6 ->
      Item_for_symbol_formula_t.Item_for_symbol_only_top_formula 
        (Item_for_symbol_only_top_formula_v.make sym_cc6 soi_ite)
;;

(** {6 Retrieving.} *)

let retrieve tag_ifs =
  let soi_ite = Tag_v.sole_index_off_tag tag_ifs in
  let sym_ifs = Tag_v.entity_off_tag tag_ifs in
  make sym_ifs soi_ite 
;; 

(** {6 Extracting.} *)

let camlparagraph_tag_list_off_item_for_symbol_formula for_ifs =
  match for_ifs with 
  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_bare_formula for_cc2 ->
        Item_for_symbol_each_grandson_bare_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_grandson_bare_formula for_cc2

  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_ofstring_formula for_cc2 ->
        Item_for_symbol_each_grandson_ofstring_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_grandson_ofstring_formula for_cc2

  | Item_for_symbol_formula_t.Item_for_symbol_each_grandson_notleaf_formula for_cc3 ->
        Item_for_symbol_each_grandson_notleaf_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_grandson_notleaf_formula for_cc3

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_bare_formula for_cc4 ->
        Item_for_symbol_each_topson_bare_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_topson_bare_formula for_cc4

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_ofstring_formula for_cc4 ->
        Item_for_symbol_each_topson_ofstring_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_topson_ofstring_formula for_cc4

  | Item_for_symbol_formula_t.Item_for_symbol_each_topson_notleaf_formula for_cc5 ->
        Item_for_symbol_each_topson_notleaf_formula_v.camlparagraph_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_cc5

  | Item_for_symbol_formula_t.Item_for_symbol_by_group_topsons_formula for_cc5 ->
        Item_for_symbol_by_group_topsons_formula_v.camlparagraph_tag_list_off_item_for_symbol_by_group_topsons_formula for_cc5

  | Item_for_symbol_formula_t.Item_for_symbol_only_top_formula for_cc6 ->
        Item_for_symbol_only_top_formula_v.camlparagraph_tag_list_off_item_for_symbol_only_top_formula for_cc6
;;

let camlparagraph_tag_list_off_item_for_symbol_tag tag_ifs =
  let for_ifs = retrieve tag_ifs in
  camlparagraph_tag_list_off_item_for_symbol_formula for_ifs
;;
    
let camlline_tag_list_off_item_for_symbol_formula for_ifs =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_symbol_formula 
      for_ifs 
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

let camlline_tag_list_off_item_for_symbol_tag tag_ifs =
  let for_ifs = retrieve tag_ifs in
  camlline_tag_list_off_item_for_symbol_formula for_ifs
;;

(** {6 Iterating.} *)

let map f for_ifs = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs in
  List.map f tag_cap_l
;;

let iter f for_ifs = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs in
  List.iter f tag_cap_l ;;

let map2 f for_ifs_1 for_ifs_2  = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs_2 in
  List.map2 f tag_cap_l_1 tag_cap_l_2
;;

let iter2 f for_ifs_1 for_ifs_2 = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_symbol_formula for_ifs_2 in
  List.iter2 f tag_cap_l_1 tag_cap_l_2 
;;

