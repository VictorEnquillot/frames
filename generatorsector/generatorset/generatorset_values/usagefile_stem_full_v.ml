(** {3 Usagefile_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Usagefile_stem_value_v";
   "Needed-by : VGNR:Usagefile_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let item_value_list_off_usagefile_stem_tag tag_uuu =
  let tag_usf = 
    Usagefile_tag_v.usagefile_tag_of_usagefile_stem_tag 
      tag_uuu 
  in
  let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf in
  List.map Item_value_v.retrieve tag_ite_l
;;

(** {6 Making_for_value} *)

let make sym_uuu soi_usf =
  let tag_uuu = Tag_v.make sym_uuu soi_usf in
  let val_ite_l = item_value_list_off_usagefile_stem_tag tag_uuu in
  match sym_uuu with
  | Usagefile_stem_symbol_t.Leaf_1 ->
      Usagefile_stem_value_t.Leaf_1 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_2 ->
      Usagefile_stem_value_t.Leaf_2 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_3 ->
      Usagefile_stem_value_t.Leaf_3 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_4 ->
      Usagefile_stem_value_t.Leaf_4 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_5 ->
      Usagefile_stem_value_t.Leaf_5 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_6 ->
      Usagefile_stem_value_t.Leaf_6 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_7 ->
      Usagefile_stem_value_t.Leaf_7 val_ite_l

  | Usagefile_stem_symbol_t.Leaf_8 ->
      Usagefile_stem_value_t.Leaf_8 val_ite_l
;;

(** {6 Retrieving} *)

let retrieve tag_uuu =
  let sym_uuu = Tag_v.entity_off_tag tag_uuu in
  let soi_usf = Tag_v.sole_index_off_tag tag_uuu in
  make sym_uuu soi_usf
;;

(** {6 Extracting} *)

let string_list_off_usagefile_stem_tag tag_uuu =
  let val_ite_l = item_value_list_off_usagefile_stem_tag tag_uuu in
  List.map Item_value_v.string_list_off_item_value val_ite_l
;;

let item_value_list_off_usagefile_stem_value val_uuu =
  match val_uuu with
  | Usagefile_stem_value_t.Leaf_1 val_ite_l -> val_ite_l
	
  | Usagefile_stem_value_t.Leaf_2 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_3 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_4 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_5 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_6 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_7 val_ite_l -> val_ite_l

  | Usagefile_stem_value_t.Leaf_8 val_ite_l -> val_ite_l
;;
