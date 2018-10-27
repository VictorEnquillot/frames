(** {3 Section_for_symbol_body_son_bare_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_son_bare_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_body_son_bare_tag tag_sso =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_body_son_bare_tag 
      tag_sso 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_sso soi_sec =
  let tag_sso = Tag_v.make sym_sso soi_sec in
  let val_gro_l = group_value_list_off_section_for_symbol_body_son_bare_tag tag_sso in
  match sym_sso with
  | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol ->
      Section_for_symbol_body_son_bare_value_t.Make_ecstring_pattern_bare_for_symbol val_gro_l

  | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors ->
      Section_for_symbol_body_son_bare_value_t.Pipe_topson_symbol_type_bare_constructors val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sso =
  let sym_sso = Tag_v.entity_off_tag tag_sso in
  let soi_sec = Tag_v.sole_index_off_tag tag_sso in
  make sym_sso soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_body_son_bare_tag tag_sso =
  let val_gro_l = group_value_list_off_section_for_symbol_body_son_bare_tag tag_sso in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_body_son_bare_value val_sso =
  match val_sso with
  | Section_for_symbol_body_son_bare_value_t.Make_ecstring_pattern_bare_for_symbol val_gro_l -> val_gro_l
	
  | Section_for_symbol_body_son_bare_value_t.Pipe_topson_symbol_type_bare_constructors val_gro_l -> val_gro_l

;;
