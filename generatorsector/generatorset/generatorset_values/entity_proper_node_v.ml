(** {3 Entity_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Entity_node_value_v";
   "Needed-by : VGNR:Entity_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_eee soi_ent =
  match sym_eee with
  | Entity_node_symbol_t.Entity_node_sub_1_symbol sym_efa ->
      Entity_node_value_t.Entity_node_sub_1_value
	(Entity_node_sub_1_value_v.make sym_efa soi_ent)

  | Entity_node_symbol_t.Entity_node_sub_2_symbol sym_efs ->
      Entity_node_value_t.Entity_node_sub_2_value
	(Entity_node_sub_2_value_v.make sym_efs soi_ent)

  | Entity_node_symbol_t.Entity_node_sub_3_symbol sym_efs ->
      Entity_node_value_t.Entity_node_sub_3_value
	(Entity_node_sub_3_value_v.make sym_efs soi_ent)

  | Entity_node_symbol_t.Entity_node_sub_4_symbol sym_efs ->
      Entity_node_value_t.Entity_node_sub_4_value
	(Entity_node_sub_4_value_v.make sym_efs soi_ent)

  | Entity_node_symbol_t.Entity_node_sub_5_symbol sym_efs ->
      Entity_node_value_t.Entity_node_sub_5_value
	(Entity_node_sub_5_value_v.make sym_efs soi_ent)
;;

(** {6 Retrieving} *)

let retrieve tag_eee =
  let soi_ent = Tag_v.sole_index_off_tag tag_eee in
  let sym_eee = Tag_v.entity_off_tag tag_eee in
  make sym_eee soi_ent
;;

(** {6 Extracting} *)

let contentfile_value_list_off_entity_node_value val_eee =
  match val_eee with
  | Entity_node_value_t.Entity_node_sub_1_value val_efa ->
      Entity_node_sub_1_value_v.contentfile_value_list_off_entity_node_sub_1_value val_efa

  | Entity_node_value_t.Entity_node_sub_2_value val_efs ->
      Entity_node_sub_2_value_v.contentfile_value_list_off_entity_node_sub_2_value val_efs

  | Entity_node_value_t.Entity_node_sub_3_value val_efs ->
      Entity_node_sub_3_value_v.contentfile_value_list_off_entity_node_sub_3_value val_efs

 | Entity_node_value_t.Entity_node_sub_4_value val_efs ->
      Entity_node_sub_4_value_v.contentfile_value_list_off_entity_node_sub_4_value val_efs

  | Entity_node_value_t.Entity_node_sub_5_value val_efs ->
      Entity_node_sub_5_value_v.contentfile_value_list_off_entity_node_sub_5_value val_efs
;;

let string_list_off_entity_node_value val_ent =
  let val_cof_l = contentfile_value_list_off_entity_node_value val_ent in
  List.map Contentfile_value_v.string_list_off_contentfile_value val_cof_l
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_eee =
  let sym_eee = Tag_v.entity_off_tag tag_eee in
  let tag_ent = Entity_tag_v.entity_tag_of_entity_node_tag tag_eee in
  let sym_cat = Entity_tag_v.category_symbol_off_entity_tag tag_eee in
  let sym_ent = Entity_tag_v.entity_symbol_off_entity_tag tag_eee in
  let sym_cof = Entity_tag_v.contentfile_symbol_off_entity_tag tag_eee in
  let sym_usf = Entity_tag_v.usagefile_symbol_off_entity_tag tag_eee in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Entity_tag_v.item_symbol_off_entity_tag tag_eee in

  let nam_fil = Format.sprintf "%s%s.%s" 
    (Entity_symbol_v.name sym_eee) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_entity_node_value oc val_ent =
  let val_cof_l = contentfile_value_list_off_entity_node_value val_ent in
  List.iter 
    (Contentfile_value_v.write_of_oc_of_contentfile_value oc) 
    val_cof_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_eee =
  let nof = fullnameoffile nam_dir tag_eee in
  let oc = oc_of_fullnameoffile nof in 

  let val_ent = retrieve tag_eee in
  write_of_oc_of_entity_node_value oc val_ent;

  close_out oc;
;;



