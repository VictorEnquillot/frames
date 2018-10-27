(** {3 Section_for_any_body_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_body_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_any_body_top_tag tag_sbt =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_any_body_top_tag 
      tag_sbt 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_sbt soi_sec =
  let tag_sbt = Tag_v.make sym_sbt soi_sec in
  let val_gro_l = group_value_list_off_section_for_any_body_top_tag tag_sbt in
  match sym_sbt with
  | Section_for_any_body_top_symbol_t.Sprintf_for_any_fullname ->
     Section_for_any_body_top_value_t.Sprintf_for_any_fullname val_gro_l
  | Section_for_any_body_top_symbol_t.Sprintf_for_any_longname ->
     Section_for_any_body_top_value_t.Sprintf_for_any_longname val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  make sym_sbt soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_any_body_top_tag tag_sbt =
  let val_gro_l = group_value_list_off_section_for_any_body_top_tag tag_sbt in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_any_body_top_value val_sbt =
  match val_sbt with
  | Section_for_any_body_top_value_t.Sprintf_for_any_fullname val_gro_l -> val_gro_l 
  | Section_for_any_body_top_value_t.Sprintf_for_any_longname val_gro_l -> val_gro_l 

;;
