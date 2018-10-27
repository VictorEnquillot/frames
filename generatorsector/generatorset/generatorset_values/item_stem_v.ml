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

let camlparagraph_value_list_off_item_stem_tag tag_sss =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_stem_tag 
      tag_sss 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making_for_value} *)

let make sym_sss soi_ite =
  let tag_sss = Tag_v.make sym_sss soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_stem_tag tag_sss in
  match sym_sss with

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_ite = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_stem_tag tag_sss =
  let val_cap_l = camlparagraph_value_list_off_item_stem_tag tag_sss in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_stem_value val_sss =
  match val_sss with

;;
