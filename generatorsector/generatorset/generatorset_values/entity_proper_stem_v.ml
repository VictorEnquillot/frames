(** {3 Entity_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Entity_stem_value_v";
   "Needed-by : VGNR:Entity_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let contentfile_value_list_off_entity_stem_tag tag_eee =
  let tag_ent = 
    Entity_tag_v.entity_tag_of_entity_stem_tag 
      tag_eee 
  in
  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent in
  List.map Contentfile_value_v.retrieve tag_cof_l
;;

(** {6 Making_for_value} *)

let make sym_eee soi_ent =
  let tag_eee = Tag_v.make sym_eee soi_ent in
  let val_cof_l = contentfile_value_list_off_entity_stem_tag tag_eee in
  match sym_eee with
  | Entity_stem_symbol_t.Leaf_1 ->
      Entity_stem_value_t.Leaf_1 val_cof_l

  | Entity_stem_symbol_t.Leaf_2 ->
      Entity_stem_value_t.Leaf_2 val_cof_l

  | Entity_stem_symbol_t.Leaf_3 ->
      Entity_stem_value_t.Leaf_3 val_cof_l

  | Entity_stem_symbol_t.Leaf_4 ->
      Entity_stem_value_t.Leaf_4 val_cof_l

  | Entity_stem_symbol_t.Leaf_5 ->
      Entity_stem_value_t.Leaf_5 val_cof_l

  | Entity_stem_symbol_t.Leaf_6 ->
      Entity_stem_value_t.Leaf_6 val_cof_l
;;

(** {6 Retrieving} *)

let retrieve tag_eee =
  let sym_eee = Tag_v.entity_off_tag tag_eee in
  let soi_ent = Tag_v.sole_index_off_tag tag_eee in
  make sym_eee soi_ent
;;

(** {6 Extracting} *)

let string_list_off_entity_stem_tag tag_eee =
  let val_cof_l = contentfile_value_list_off_entity_stem_tag tag_eee in
  List.map Contentfile_value_v.string_list_off_contentfile_value val_cof_l
;;

let contentfile_value_list_off_entity_stem_value val_eee =
  match val_eee with
  | Entity_stem_value_t.Leaf_1 val_cof_l -> val_cof_l
	
  | Entity_stem_value_t.Leaf_2 val_cof_l -> val_cof_l

  | Entity_stem_value_t.Leaf_3 val_cof_l -> val_cof_l

  | Entity_stem_value_t.Leaf_4 val_cof_l -> val_cof_l

  | Entity_stem_value_t.Leaf_5 val_cof_l -> val_cof_l

  | Entity_stem_value_t.Leaf_6 val_cof_l -> val_cof_l
;;
