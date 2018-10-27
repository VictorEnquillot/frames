(** {3 Section_for_symbol_body_son_top_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_son_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_body_son_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_body_son_top_tag tag_sst =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_body_son_top_tag 
      tag_sst 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making} *)

let make sym_sst soi_sec =
  let tag_sst = Tag_v.make sym_sst soi_sec in
  let val_gro_l = group_value_list_off_section_for_symbol_body_son_top_tag tag_sst in
  match sym_sst with
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_onlyson_bare_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_onlyson_notleaf_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_onlyson_ofstring_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_one_topson_bare_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_one_topson_notleaf_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Is_one_topson_ofstring_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Name_topson_pattern_bare_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Name_topson_pattern_notleaf_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Name_topson_pattern_ofstring_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.Onlyson_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol ->
     Section_for_symbol_body_son_top_value_t.One_topson_off_pattern_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol ->
     Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_bare_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol ->
     Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_notleaf_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol ->
     Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_ofstring_for_symbol val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow ->
     Section_for_symbol_body_son_top_value_t.Try_make_of_topson_with_failure_arrow val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow ->
     Section_for_symbol_body_son_top_value_t.Try_name_of_topson_with_failure_arrow val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow ->
     Section_for_symbol_body_son_top_value_t.Try_string_off_of_topson_with_failure_arrow val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow ->
     Section_for_symbol_body_son_top_value_t.Try_top_of_topson_with_failure_arrow val_gro_l
  | Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol ->
     Section_for_symbol_body_son_top_value_t.Upgrade_topson_symbol val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  make sym_sst soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_body_son_top_tag tag_sst =
  let val_gro_l = group_value_list_off_section_for_symbol_body_son_top_tag tag_sst in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_body_son_top_value val_sst =
  match val_sst with
  | Section_for_symbol_body_son_top_value_t.Is_onlyson_bare_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Is_onlyson_notleaf_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Is_onlyson_ofstring_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Is_one_topson_bare_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Is_one_topson_notleaf_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Is_one_topson_ofstring_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Name_topson_pattern_bare_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Name_topson_pattern_notleaf_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Name_topson_pattern_ofstring_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Onlyson_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.One_topson_off_pattern_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_bare_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_notleaf_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.String_off_topson_pattern_ofstring_for_symbol val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Try_make_of_topson_with_failure_arrow val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Try_name_of_topson_with_failure_arrow val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Try_string_off_of_topson_with_failure_arrow val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Try_top_of_topson_with_failure_arrow val_gro_l -> val_gro_l 
  | Section_for_symbol_body_son_top_value_t.Upgrade_topson_symbol val_gro_l -> val_gro_l 
;;
