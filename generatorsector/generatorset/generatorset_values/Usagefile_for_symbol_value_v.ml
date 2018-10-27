(** {3 Usagefile_for_symbol_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Usagefile_for_symbol_value_v";
   "Needed-by : VGNR:Usagefile_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let item_value_list_off_usagefile_for_symbol_tag tag_uim =
  let tag_ufs = 
    Usagefile_tag_v.usagefile_tag_of_usagefile_for_symbol_tag 
      tag_uim 
  in
  let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_ufs in
  List.map Item_value_v.retrieve tag_ite_l
;;

(** {6 Making_for_value} *)

let make sym_uim soi_ufs =
  let tag_uim = Tag_v.make sym_uim soi_ufs in
  let val_ite_l = item_value_list_off_usagefile_for_symbol_tag tag_uim in
  match sym_uim with
  | Usagefile_for_symbol_symbol_t.Implementation_for_symbol ->
      Usagefile_for_symbol_value_t.Implementation_for_symbol val_ite_l

  | Usagefile_for_symbol_symbol_t.Interface_for_symbol ->
      Usagefile_for_symbol_value_t.Interface_for_symbol val_ite_l
;;

(** {6 Retrieving} *)

let retrieve tag_uim =
  let sym_uim = Tag_v.entity_off_tag tag_uim in
  let soi_ufs = Tag_v.sole_index_off_tag tag_uim in
  make sym_uim soi_ufs
;;

(** {6 Extracting} *)

let string_list_off_usagefile_for_symbol_tag tag_uim =
  let val_ite_l = item_value_list_off_usagefile_for_symbol_tag tag_uim in
  List.map Item_value_v.string_list_off_item_value val_ite_l
;;

let item_value_list_off_usagefile_for_symbol_value val_uim =
  match val_uim with
  | Usagefile_for_symbol_value_t.Implementation_for_symbol val_ite_l -> val_ite_l
	
  | Usagefile_for_symbol_value_t.Interface_for_symbol val_ite_l -> val_ite_l
;;
