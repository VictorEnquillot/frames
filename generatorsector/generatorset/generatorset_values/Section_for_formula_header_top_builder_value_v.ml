(** {3 Section_for_formula_header_top_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_header_top_builder_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_header_top_builder_tag tag_stb =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_header_top_builder_tag 
      tag_stb 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_stb soi_sec =
  let tag_stb = Tag_v.make sym_stb soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_header_top_builder_tag tag_stb in
  match sym_stb with
  | Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula ->
     Section_for_formula_header_top_builder_value_t.Let_builder_tag_list_off_top_formula val_gro_l
  | Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_tag ->
     Section_for_formula_header_top_builder_value_t.Let_builder_tag_list_off_top_tag val_gro_l
  | Section_for_formula_header_top_builder_symbol_t.Let_iter2_for_formula ->
     Section_for_formula_header_top_builder_value_t.Let_iter2_for_formula val_gro_l
  | Section_for_formula_header_top_builder_symbol_t.Let_iter_for_formula ->
     Section_for_formula_header_top_builder_value_t.Let_iter_for_formula val_gro_l
  | Section_for_formula_header_top_builder_symbol_t.Let_map2_for_formula ->
     Section_for_formula_header_top_builder_value_t.Let_map2_for_formula val_gro_l
  | Section_for_formula_header_top_builder_symbol_t.Let_map_for_formula ->
     Section_for_formula_header_top_builder_value_t.Let_map_for_formula val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_stb =
  let sym_stb = Tag_v.entity_off_tag tag_stb in
  let soi_sec = Tag_v.sole_index_off_tag tag_stb in
  make sym_stb soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_header_top_builder_tag tag_stb =
  let val_gro_l = group_value_list_off_section_for_formula_header_top_builder_tag tag_stb in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_header_top_builder_value val_stb =
  match val_stb with
  | Section_for_formula_header_top_builder_value_t.Let_builder_tag_list_off_top_formula val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_builder_value_t.Let_builder_tag_list_off_top_tag val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_builder_value_t.Let_iter2_for_formula val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_builder_value_t.Let_iter_for_formula val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_builder_value_t.Let_map2_for_formula val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_builder_value_t.Let_map_for_formula val_gro_l -> val_gro_l 

;;
