(** {3 Section_for_formula_header_top_main_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_header_top_main_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_header_top_main_tag tag_ =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_header_top_main_tag 
      tag_ 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_ soi_sec =
  let tag_ = Tag_v.make sym_ soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_header_top_main_tag tag_ in
  match sym_ with
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons ->
     Section_for_formula_header_top_main_value_t.Let_build_n_store_basic_sons val_gro_l
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons ->
     Section_for_formula_header_top_main_value_t.Let_build_n_store_proper_sons val_gro_l
  | Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with ->
     Section_for_formula_header_top_main_value_t.Let_make_arguments_equal_match_with val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_ =
  let sym_ = Tag_v.entity_off_tag tag_ in
  let soi_sec = Tag_v.sole_index_off_tag tag_ in
  make sym_ soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_header_top_main_tag tag_ =
  let val_gro_l = group_value_list_off_section_for_formula_header_top_main_tag tag_ in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_header_top_main_value val_ =
  match val_ with
  | Section_for_formula_header_top_main_value_t.Let_build_n_store_basic_sons val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_main_value_t.Let_build_n_store_proper_sons val_gro_l -> val_gro_l 
  | Section_for_formula_header_top_main_value_t.Let_make_arguments_equal_match_with val_gro_l -> val_gro_l 

;;
