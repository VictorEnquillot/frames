(** {3 Section_for_any_header_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_header_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_any_header_top_tag tag_sht =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_any_header_top_tag 
      tag_sht 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making_for_value} *)

let make sym_sht soi_sec =
  let tag_sht = Tag_v.make sym_sht soi_sec in
  let val_gro_l = group_value_list_off_section_for_any_header_top_tag tag_sht in
  match sym_sht with
  | Section_for_any_header_top_symbol_t.Camlfile_title ->
     Section_for_any_header_top_value_t.Camlfile_title val_gro_l
  | Section_for_any_header_top_symbol_t.Item_title ->
     Section_for_any_header_top_value_t.Item_title val_gro_l
  | Section_for_any_header_top_symbol_t.Let_name_argument_equal ->
     Section_for_any_header_top_value_t.Let_name_argument_equal val_gro_l
  | Section_for_any_header_top_symbol_t.Let_longname_argument_equal ->
     Section_for_any_header_top_value_t.Let_longname_argument_equal val_gro_l
  | Section_for_any_header_top_symbol_t.Let_fullname_argument_equal ->
     Section_for_any_header_top_value_t.Let_fullname_argument_equal val_gro_l
  | Section_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal ->
     Section_for_any_header_top_value_t.Let_retrieve_tag_top_equal val_gro_l
  | Section_for_any_header_top_symbol_t.Let_string_off_argument_equal ->
     Section_for_any_header_top_value_t.Let_string_off_argument_equal val_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  make sym_sht soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_any_header_top_tag tag_sht =
  let val_gro_l = group_value_list_off_section_for_any_header_top_tag tag_sht in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_any_header_top_value val_sht =
  match val_sht with
  | Section_for_any_header_top_value_t.Camlfile_title val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Item_title val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Let_name_argument_equal val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Let_longname_argument_equal val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Let_fullname_argument_equal val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Let_retrieve_tag_top_equal val_gro_l -> val_gro_l 
  | Section_for_any_header_top_value_t.Let_string_off_argument_equal val_gro_l -> val_gro_l 

;;
