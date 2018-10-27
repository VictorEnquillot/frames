(** {3 Item_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_stem_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlparagraph_value_list_off_item_stem_tag tag_iii =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_stem_tag 
      tag_iii 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making_for_value} *)

let make sym_iii soi_ite =
  let tag_iii = Tag_v.make sym_iii soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_stem_tag tag_iii in
  match sym_iii with
  | Item_stem_symbol_t.Leaf_1 ->
      Item_stem_value_t.Leaf_1 val_cap_l

  | Item_stem_symbol_t.Leaf_2 ->
      Item_stem_value_t.Leaf_2 val_cap_l

  | Item_stem_symbol_t.Leaf_3 ->
      Item_stem_value_t.Leaf_3 val_cap_l

  | Item_stem_symbol_t.Leaf_4 ->
      Item_stem_value_t.Leaf_4 val_cap_l

  | Item_stem_symbol_t.Leaf_5 ->
      Item_stem_value_t.Leaf_5 val_cap_l

  | Item_stem_symbol_t.Leaf_6 ->
      Item_stem_value_t.Leaf_6 val_cap_l

  | Item_stem_symbol_t.Leaf_7 ->
      Item_stem_value_t.Leaf_7 val_cap_l

  | Item_stem_symbol_t.Leaf_8 ->
      Item_stem_value_t.Leaf_8 val_cap_l
;;

(** {6 Retrieving} *)

let retrieve tag_iii =
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  make sym_iii soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_stem_tag tag_iii =
  let val_cap_l = camlparagraph_value_list_off_item_stem_tag tag_iii in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_stem_value val_iii =
  match val_iii with
  | Item_stem_value_t.Leaf_1 val_cap_l -> val_cap_l
	
  | Item_stem_value_t.Leaf_2 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_3 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_4 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_5 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_6 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_7 val_cap_l -> val_cap_l

  | Item_stem_value_t.Leaf_8 val_cap_l -> val_cap_l
;;
