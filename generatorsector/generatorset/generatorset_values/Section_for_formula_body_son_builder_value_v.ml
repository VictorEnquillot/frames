(** {3 Section_for_formula_body_son_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_body_son_builder_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_body_son_builder_tag tag_ssb =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_body_son_builder_tag 
      tag_ssb 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_ssb soi_sec =
  let tag_ssb = Tag_v.make sym_ssb soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_body_son_builder_tag tag_ssb in
  match sym_ssb with
  | Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors ->
     Section_for_formula_body_son_builder_value_t.Pipe_topson_formula_type_bare_constructors val_gro_l
  | Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors ->
     Section_for_formula_body_son_builder_value_t.Pipe_topson_formula_type_ofstring_constructors val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  make sym_ssb soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_body_son_builder_tag tag_ssb =
  let val_gro_l = group_value_list_off_section_for_formula_body_son_builder_tag tag_ssb in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_body_son_builder_value val_ssb =
  match val_ssb with
  | Section_for_formula_body_son_builder_value_t.Pipe_topson_formula_type_bare_constructors val_gro_l -> val_gro_l 
  | Section_for_formula_body_son_builder_value_t.Pipe_topson_formula_type_ofstring_constructors val_gro_l -> val_gro_l 

;;
