(** {3 Section_for_symbol_body_current_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_current_son_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_body_current_son_top_tag tag_sst =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_body_current_son_top_tag 
      tag_sst 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making} *)

let make sym_sst soi_sec =
  let tag_sst = Tag_v.make sym_sst soi_sec in
  let val_gro_l = group_value_list_off_section_for_symbol_body_current_son_top_tag tag_sst in
  match sym_sst with
  | Section_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol ->
      Section_for_symbol_body_current_son_top_value_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol val_gro_l

  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end ->
      Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_notleaf_end val_gro_l

  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_bare_end ->
      Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_bare_end val_gro_l

  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_ofstring_end ->
      Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_ofstring_end val_gro_l

  | Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol ->
      Section_for_symbol_body_current_son_top_value_t.Upgrade_grandson_symbol val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  make sym_sst soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_body_current_son_top_tag tag_sst =
  let val_gro_l = group_value_list_off_section_for_symbol_body_current_son_top_tag tag_sst in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_body_current_son_top_value val_sst =
  match val_sst with
  | Section_for_symbol_body_current_son_top_value_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol val_gro_l -> val_gro_l
  | Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_notleaf_end val_gro_l -> val_gro_l
  | Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_bare_end val_gro_l -> val_gro_l
  | Section_for_symbol_body_current_son_top_value_t.If_not_is_topson_begin_ofstring_end val_gro_l -> val_gro_l
  | Section_for_symbol_body_current_son_top_value_t.Upgrade_grandson_symbol val_gro_l -> val_gro_l
;;
