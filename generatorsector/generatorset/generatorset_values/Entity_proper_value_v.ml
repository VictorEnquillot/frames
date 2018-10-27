(** {3 Entity_proper_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Entity_proper_value_v";
   "Needed-by : VGNR:Entity_proper_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let contentfile_value_list_off_entity_proper_tag tag_enp =
  let tag_cof_l = Entity_proper_formula_v.contentfile_tag_list_off_entity_proper_tag tag_enp in
  List.map Contentfile_value_v.retrieve tag_cof_l
;;

(** {6 Making_for_value} *)

let make sym_enp soi_ent =
  let tag_enp = Tag_v.make sym_enp soi_ent in
  let val_cof_l = contentfile_value_list_off_entity_proper_tag tag_enp in
  match sym_enp with
  | Entity_proper_symbol_t.Entity_proper_with_one_son str ->
      Entity_proper_value_t.Entity_proper_with_one_son (str, val_cof_l)

  | Entity_proper_symbol_t.Entity_proper_with_sons str ->
      Entity_proper_value_t.Entity_proper_with_sons (str, val_cof_l)

;;

(** {6 Retrieving} *)

let retrieve tag_enp =
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  let soi_ent = Tag_v.sole_index_off_tag tag_enp in
  make sym_enp soi_ent
;;

(** {6 Extracting} *)

let contentfile_value_list_off_entity_proper_value val_enp =
  match val_enp with
  | Entity_proper_value_t.Entity_proper_with_one_son (str, val_cof_l) -> val_cof_l
	
  | Entity_proper_value_t.Entity_proper_with_sons (str, val_cof_l) -> val_cof_l

;;

let string_list_off_entity_proper_value val_enp =
  let val_cof_l = contentfile_value_list_off_entity_proper_value val_enp in
  List.flatten 
    (List.map Contentfile_value_v.string_list_off_contentfile_value val_cof_l)
;;

let string_list_off_entity_proper_tag tag_enp =
  let val_enp = retrieve tag_enp in
  string_list_off_entity_proper_value val_enp
;;

