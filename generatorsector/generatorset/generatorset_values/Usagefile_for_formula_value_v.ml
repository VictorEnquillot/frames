(** {3 Usagefile_for_formula_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Usagefile_for_formula_value_v";
   "Needed-by : VGNR:Usagefile_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let item_value_list_off_usagefile_for_formula_tag tag_uff =
  let tag_usf = 
    Usagefile_tag_v.usagefile_tag_of_usagefile_for_formula_tag 
      tag_uff 
  in
  let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf in
  List.map Item_value_v.retrieve tag_ite_l
;;

(** {6 Making_for_value} *)

let make sym_uff soi_usf =
  let tag_uff = Tag_v.make sym_uff soi_usf in
  let val_ite_l = item_value_list_off_usagefile_for_formula_tag tag_uff in
  match sym_uff with
  | Usagefile_for_formula_symbol_t.Implementation_for_formula ->
     Usagefile_for_formula_value_t.Implementation_for_formula val_ite_l
  | Usagefile_for_formula_symbol_t.Interface_for_formula ->
     Usagefile_for_formula_value_t.Interface_for_formula val_ite_l

;;

(** {6 Retrieving} *)

let retrieve tag_uff =
  let sym_uff = Tag_v.entity_off_tag tag_uff in
  let soi_usf = Tag_v.sole_index_off_tag tag_uff in
  make sym_uff soi_usf
;;

(** {6 Extracting} *)

let string_list_off_usagefile_for_formula_tag tag_uff =
  let val_ite_l = item_value_list_off_usagefile_for_formula_tag tag_uff in
  List.map Item_value_v.string_list_off_item_value val_ite_l
;;

let item_value_list_off_usagefile_for_formula_value val_uff =
  match val_uff with
  | Usagefile_for_formula_value_t.Implementation_for_formula val_ite_l -> val_ite_l 
  | Usagefile_for_formula_value_t.Interface_for_formula val_ite_l -> val_ite_l 

;;
