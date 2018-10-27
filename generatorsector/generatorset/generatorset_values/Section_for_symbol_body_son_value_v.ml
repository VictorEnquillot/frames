(** {3 Section_for_symbol_body_son_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_son_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_body_son_tag tag_sbs =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_body_son_tag 
      tag_sbs 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making} *)

let make sym_sbs soi_sec =
  match sym_sbs with
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol sym_ssb ->
      Section_for_symbol_body_son_value_t.Section_for_symbol_body_son_bare_value
	 (Section_for_symbol_body_son_bare_value_v.make sym_ssb soi_sec)

  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol sym_sso ->
      Section_for_symbol_body_son_value_t.Section_for_symbol_body_son_ofstring_value
	 (Section_for_symbol_body_son_ofstring_value_v.make sym_sso soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sbs =
  let sym_sbs = Tag_v.entity_off_tag tag_sbs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbs in
  make sym_sbs soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_body_son_tag tag_sbs =
  let val_gro_l = group_value_list_off_section_for_symbol_body_son_tag tag_sbs in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_body_son_value val_sbs =
  match val_sbs with
  | Section_for_symbol_body_son_value_t.Section_for_symbol_body_son_bare_value val_gro_l -> 
      Section_for_symbol_body_son_bare_value_v.group_value_list_off_section_for_symbol_body_son_bare_value val_gro_l  

  | Section_for_symbol_body_son_value_t.Section_for_symbol_body_son_ofstring_value val_gro_l -> 
      Section_for_symbol_body_son_ofstring_value_v.group_value_list_off_section_for_symbol_body_son_ofstring_value val_gro_l  
;;
