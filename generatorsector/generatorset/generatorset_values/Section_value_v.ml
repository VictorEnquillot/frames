(** {3 Section_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_sec soi_sec =
  match sym_sec with
  | Section_symbol_t.Section_for_formula_symbol sym_gfa ->
      Section_value_t.Section_for_formula_value
	(Section_for_formula_value_v.make sym_gfa soi_sec)

  | Section_symbol_t.Section_for_symbol_symbol sym_gfa ->
      Section_value_t.Section_for_symbol_value
	(Section_for_symbol_value_v.make sym_gfa soi_sec)

  | Section_symbol_t.Section_for_any_symbol sym_gfs ->
      Section_value_t.Section_for_any_value
	(Section_for_any_value_v.make sym_gfs soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sec =
  let soi_sec = Tag_v.sole_index_off_tag tag_sec in
  let sym_sec = Tag_v.entity_off_tag tag_sec in
  make sym_sec soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_value val_sec =
  match val_sec with
  | Section_value_t.Section_for_formula_value val_gfa ->
      Section_for_formula_value_v.group_value_list_off_section_for_formula_value val_gfa

  | Section_value_t.Section_for_symbol_value val_gfa ->
      Section_for_symbol_value_v.group_value_list_off_section_for_symbol_value val_gfa

  | Section_value_t.Section_for_any_value val_gfs ->
      Section_for_any_value_v.group_value_list_off_section_for_any_value val_gfs

;;

let string_list_off_section_value val_sec =
  let val_gro_l = group_value_list_off_section_value val_sec in
  List.flatten (List.map Group_value_v.string_list_off_group_value val_gro_l)
;;

let string_list_off_section_tag tag_sec =
  let val_sec = retrieve tag_sec in
  string_list_off_section_value val_sec
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_sec =
  let sym_sec = Tag_v.entity_off_tag tag_sec in
  let sym_cat = Section_tag_v.category_symbol_off_section_tag tag_sec in
  let sym_ent = Section_tag_v.entity_symbol_off_section_tag tag_sec in
  let sym_cof = Section_tag_v.contentfile_symbol_off_section_tag tag_sec in
  let sym_usf = Section_tag_v.usagefile_symbol_off_section_tag tag_sec in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Section_tag_v.item_symbol_off_section_tag tag_sec in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Section_symbol_v.name sym_sec) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_section_value oc val_sec =
  let val_gro_l = group_value_list_off_section_value val_sec in
  List.iter 
    (Group_value_v.write_of_oc_of_group_value oc) 
    val_gro_l ;
(*  output_string oc (Format.sprintf "@.") *)
;;

let write nam_dir tag_sec =
  let nof = fullnameoffile nam_dir tag_sec in
  let oc = oc_of_fullnameoffile nof in 

  let val_sec = retrieve tag_sec in
  write_of_oc_of_section_value oc val_sec;

  close_out oc;
;;



