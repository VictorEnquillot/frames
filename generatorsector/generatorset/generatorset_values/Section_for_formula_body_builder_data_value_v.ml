(** {3 Section_for_formula_body_builder_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_body_builder_data_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_body_builder_data_tag tag_sbd =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_body_builder_data_tag 
      tag_sbd 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_sbd soi_sec =
  let tag_sbd = Tag_v.make sym_sbd soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_body_builder_data_tag tag_sbd in
  match sym_sbd with
  | Section_for_formula_body_builder_data_symbol_t.Data_formula_list ->
     Section_for_formula_body_builder_data_value_t.Data_formula_list val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sbd =
  let sym_sbd = Tag_v.entity_off_tag tag_sbd in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbd in
  make sym_sbd soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_body_builder_data_tag tag_sbd =
  let val_gro_l = group_value_list_off_section_for_formula_body_builder_data_tag tag_sbd in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_body_builder_data_value val_sbd =
  match val_sbd with
  | Section_for_formula_body_builder_data_value_t.Data_formula_list val_gro_l -> val_gro_l 

;;
