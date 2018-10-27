(** {3 Item_each_grandson_notleaf_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_each_grandson_notleaf_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_ign soi_ite =
  match sym_ign with
  | Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_formula_symbol sym_is1 ->

      Utilities_v.not_yet_implemented nam_cod "make"
(*
      Item_each_grandson_notleaf_value_t.Item_each_grandson_notleaf_for_formula_value
	(Item_each_grandson_notleaf_for_formula_value_v.make sym_is1 soi_ite)
*)
  | Item_each_grandson_notleaf_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_is2 ->
      Item_each_grandson_notleaf_value_t.Item_for_symbol_each_grandson_notleaf_value
	(Item_for_symbol_each_grandson_notleaf_value_v.make sym_is2 soi_ite)

;;

(** {6 Retrieving} *)

let retrieve tag_ign =
  let soi_ite = Tag_v.sole_index_off_tag tag_ign in
  let sym_ign = Tag_v.entity_off_tag tag_ign in
  make sym_ign soi_ite
;;

(** {6 Extracting} *)

let camlparagraph_value_list_off_item_each_grandson_notleaf_value val_ign =
  match val_ign with
  | Item_each_grandson_notleaf_value_t.Item_each_grandson_notleaf_for_formula_value val_is1 ->
      Utilities_v.not_yet_implemented nam_cod "camlparagraph_value_list_off_item_each_grandson_notleaf_value"
(*
      Item_each_grandson_notleaf_for_formula_value_v.camlparagraph_value_list_off_item_each_grandson_notleaf_for_formula_value val_is1
*)
  | Item_each_grandson_notleaf_value_t.Item_for_symbol_each_grandson_notleaf_value val_is2 ->
      Item_for_symbol_each_grandson_notleaf_value_v.camlparagraph_value_list_off_item_for_symbol_each_grandson_notleaf_value val_is2

;;

let string_list_off_item_each_grandson_notleaf_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_each_grandson_notleaf_value val_ite in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

