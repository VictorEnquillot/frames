(** {3 Section_for_formula_body_son_top_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_body_son_top_data_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_body_son_top_data_tag tag_std =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_body_son_top_data_tag 
      tag_std 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_std soi_sec =
  let tag_std = Tag_v.make sym_std soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_body_son_top_data_tag tag_std in
  match sym_std with
  | Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_bare_for_formula ->
     Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_bare_for_formula val_gro_l
  | Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_notleaf_for_formula ->
     Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_notleaf_for_formula val_gro_l
  | Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_ofstring_for_formula ->
     Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_ofstring_for_formula val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_std =
  let sym_std = Tag_v.entity_off_tag tag_std in
  let soi_sec = Tag_v.sole_index_off_tag tag_std in
  make sym_std soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_body_son_top_data_tag tag_std =
  let val_gro_l = group_value_list_off_section_for_formula_body_son_top_data_tag tag_std in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_body_son_top_data_value val_std =
  match val_std with
  | Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_bare_for_formula val_gro_l -> val_gro_l 
  | Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_notleaf_for_formula val_gro_l -> val_gro_l 
  | Section_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_ofstring_for_formula val_gro_l -> val_gro_l 

;;
