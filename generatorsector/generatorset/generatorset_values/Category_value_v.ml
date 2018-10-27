(** {3 Category_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Category_value_v";
   "Needed-by : VGNR:Category_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node and Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let entity_value_list_off_category_tag tag_cat =
  let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat in
  List.map Entity_value_v.retrieve tag_ent_l
;;

(** {6 Making_for_value} *)

let make sym_cat soi_cat =
  let tag_cat = Tag_v.make sym_cat soi_cat in
  let val_ent_l = entity_value_list_off_category_tag tag_cat in
  match sym_cat with
  | Category_symbol_t.Any ->
      Category_value_t.Any val_ent_l

  | Category_symbol_t.Formula ->
      Category_value_t.Formula val_ent_l

  | Category_symbol_t.Mark ->
      Category_value_t.Mark val_ent_l

  | Category_symbol_t.Path ->
      Category_value_t.Path val_ent_l

  | Category_symbol_t.Property ->
      Category_value_t.Property val_ent_l

  | Category_symbol_t.Provider ->
      Category_value_t.Provider val_ent_l

  | Category_symbol_t.Symbol ->
      Category_value_t.Symbol val_ent_l

  | Category_symbol_t.Tag ->
      Category_value_t.Tag val_ent_l

  | Category_symbol_t.Value ->
      Category_value_t.Value val_ent_l

  | Category_symbol_t.Empty ->
      Category_value_t.Empty val_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cat =
  let soi_cat = Tag_v.sole_index_off_tag tag_cat in
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  make sym_cat soi_cat
;;

(** {6 Extracting} *)

let entity_value_list_off_category_value val_cat =
  match val_cat with
   | Category_value_t.Any val_ent_l -> val_ent_l
	
  | Category_value_t.Formula val_ent_l -> val_ent_l

  | Category_value_t.Mark val_ent_l -> val_ent_l

  | Category_value_t.Path val_ent_l -> val_ent_l

  | Category_value_t.Property val_ent_l -> val_ent_l

  | Category_value_t.Provider val_ent_l -> val_ent_l

  | Category_value_t.Symbol val_ent_l -> val_ent_l

  | Category_value_t.Tag val_ent_l -> val_ent_l

  | Category_value_t.Value val_ent_l -> val_ent_l

  | Category_value_t.Empty val_ent_l -> val_ent_l
;;

let string_list_off_category_value val_cat =
  let val_ent_l = entity_value_list_off_category_value val_cat in
  List.map Entity_value_v.string_list_off_entity_value val_ent_l
;;

