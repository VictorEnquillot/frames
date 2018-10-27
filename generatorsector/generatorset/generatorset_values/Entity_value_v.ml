(** {3 Entity__value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Entity_value_v";
   "Needed-by : VGNR:";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let contentfile_value_list_off_entity_tag tag_ent =
  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent in
  List.map Contentfile_value_v.retrieve tag_cof_l
;;

(** {6 Making_for_value} *)

let make sym_ent soi_ent =
  match sym_ent with
  | Entity_symbol_t.Entity_external_symbol sym_efs ->
      Utilities_v.not_yet_implemented nam_cod "make Entity_external_symbol"

  | Entity_symbol_t.Entity_fictive_symbol sym_efs ->
      Utilities_v.not_yet_implemented nam_cod "make Entity_fictive_symbol"

  | Entity_symbol_t.Entity_proper_symbol sym_enp ->
      Entity_value_t.Entity_proper_value
	(Entity_proper_value_v.make sym_enp soi_ent)
;;

(** {6 Retrieving} *)

let retrieve tag_ent =
  let soi_ent = Tag_v.sole_index_off_tag tag_ent in
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  make sym_ent soi_ent
;;

(** {6 Extracting} *)

let contentfile_value_list_off_entity_value val_ent =
  match val_ent with
  | Entity_value_t.Entity_proper_value val_enp ->
      Entity_proper_value_v.contentfile_value_list_off_entity_proper_value val_enp
(* ***
  | Entity_value_t.Entity_external_value val_efs ->
      Entity_external_value_v.contentfile_value_list_off_entity_external_value val_efs

  | Entity_value_t.Entity_fictive_value val_efs ->
      Entity_fictive_value_v.contentfile_value_list_off_entity_fictive_value val_efs
*** *)
;;

let string_list_off_entity_value val_ent =
  let val_cof_l = contentfile_value_list_off_entity_value val_ent in
  List.map Contentfile_value_v.string_list_off_contentfile_value val_cof_l
;;

