(** {3 Section_for_formula_body_top_main_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_body_top_main_builder_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_body_top_main_builder_tag tag_smb =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_body_top_main_builder_tag 
      tag_smb 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_smb soi_sec =
  let tag_smb = Tag_v.make sym_smb soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_body_top_main_builder_tag tag_smb in
  match sym_smb with
  | Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list ->
     Section_for_formula_body_top_main_builder_value_t.Builder_node_sole_index_builder_list val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_smb =
  let sym_smb = Tag_v.entity_off_tag tag_smb in
  let soi_sec = Tag_v.sole_index_off_tag tag_smb in
  make sym_smb soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_body_top_main_builder_tag tag_smb =
  let val_gro_l = group_value_list_off_section_for_formula_body_top_main_builder_tag tag_smb in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_body_top_main_builder_value val_smb =
  match val_smb with
  | Section_for_formula_body_top_main_builder_value_t.Builder_node_sole_index_builder_list val_gro_l -> val_gro_l 
;;
