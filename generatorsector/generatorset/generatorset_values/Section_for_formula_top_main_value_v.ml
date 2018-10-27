(** {3 Section_for_formula_top_main_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_top_main_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_formula_top_main_tag tag_stm =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_formula_top_main_tag 
      tag_stm 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_stm soi_sec =
  let tag_stm = Tag_v.make sym_stm soi_sec in
  let val_gro_l = group_value_list_off_section_for_formula_top_main_tag tag_stm in
  match sym_stm with
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_arguments_equal ->
     Section_for_formula_header_top_main_value_t.Let_build_n_store_arguments_equal tag_gro_l
  | Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with ->
     Section_for_formula_header_top_main_value_t.Let_make_arguments_equal_match_with tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_stm =
  let sym_stm = Tag_v.entity_off_tag tag_stm in
  let soi_sec = Tag_v.sole_index_off_tag tag_stm in
  make sym_stm soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_formula_top_main_tag tag_stm =
  let val_gro_l = group_value_list_off_section_for_formula_top_main_tag tag_stm in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_formula_top_main_value val_stm =
  match val_stm with
  | Section_for_formula_header_top_main_value_t.Let_build_n_store_arguments_equal tag_gro_l -> tag_gro_l 
  | Section_for_formula_header_top_main_value_t.Let_make_arguments_equal_match_with tag_gro_l -> tag_gro_l 

;;
