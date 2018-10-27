(** {3 Section_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_node_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_sss soi_sec =
  match sym_sss with
  | Section_node_symbol_t.Section_node_sub_1_symbol sym_gfa ->
      Section_node_value_t.Section_node_sub_1_value
	(Section_node_sub_1_value_v.make sym_gfa soi_sec)

  | Section_node_symbol_t.Section_node_sub_2_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_2_value
	(Section_node_sub_2_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_3_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_3_value
	(Section_node_sub_3_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_4_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_4_value
	(Section_node_sub_4_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_5_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_5_value
	(Section_node_sub_5_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_6_symbol sym_gfa ->
      Section_node_value_t.Section_node_sub_6_value
	(Section_node_sub_6_value_v.make sym_gfa soi_sec)

  | Section_node_symbol_t.Section_node_sub_7_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_7_value
	(Section_node_sub_7_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_8_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_8_value
	(Section_node_sub_8_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub_9_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub_9_value
	(Section_node_sub_9_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub10_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub10_value
	(Section_node_sub10_value_v.make sym_gfs soi_sec)

  | Section_node_symbol_t.Section_node_sub11_symbol sym_gfs ->
      Section_node_value_t.Section_node_sub11_value
	(Section_node_sub11_value_v.make sym_gfs soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_node_value val_sss =
  match val_sss with
  | Section_node_value_t.Section_node_sub_1_value val_gfa ->
      Section_node_sub_1_value_v.group_value_list_off_section_node_sub_1_value val_gfa

  | Section_node_value_t.Section_node_sub_2_value val_gfs ->
      Section_node_sub_2_value_v.group_value_list_off_section_node_sub_2_value val_gfs

  | Section_node_value_t.Section_node_sub_3_value val_gfs ->
      Section_node_sub_3_value_v.group_value_list_off_section_node_sub_3_value val_gfs

 | Section_node_value_t.Section_node_sub_4_value val_gfs ->
      Section_node_sub_4_value_v.group_value_list_off_section_node_sub_4_value val_gfs

  | Section_node_value_t.Section_node_sub_5_value val_gfs ->
      Section_node_sub_5_value_v.group_value_list_off_section_node_sub_5_value val_gfs

  | Section_node_value_t.Section_node_sub_6_value val_gfa ->
      Section_node_sub_6_value_v.group_value_list_off_section_node_sub_6_value val_gfa

  | Section_node_value_t.Section_node_sub_7_value val_gfs ->
      Section_node_sub_7_value_v.group_value_list_off_section_node_sub_7_value val_gfs

  | Section_node_value_t.Section_node_sub_8_value val_gfs ->
      Section_node_sub_8_value_v.group_value_list_off_section_node_sub_8_value val_gfs

  | Section_node_value_t.Section_node_sub_9_value val_gfs ->
      Section_node_sub_9_value_v.group_value_list_off_section_node_sub_9_value val_gfs

  | Section_node_value_t.Section_node_sub10_value val_gfs ->
      Section_node_sub10_value_v.group_value_list_off_section_node_sub10_value val_gfs

  | Section_node_value_t.Section_node_sub11_value val_gfs ->
      Section_node_sub11_value_v.group_value_list_off_section_node_sub11_value val_gfs
;;

let string_list_off_section_node_value val_sec =
  let val_gro_l = group_value_list_off_section_node_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let tag_sec = Section_tag_v.section_tag_of_section_node_tag tag_sss in
  let sym_cat = Section_tag_v.category_symbol_off_section_tag tag_sss in
  let sym_ent = Section_tag_v.entity_symbol_off_section_tag tag_sss in
  let sym_cof = Section_tag_v.contentfile_symbol_off_section_tag tag_sss in
  let sym_usf = Section_tag_v.usagefile_symbol_off_section_tag tag_sss in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Section_tag_v.item_symbol_off_section_tag tag_sss in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Section_symbol_v.name sym_sss) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_section_node_value oc val_sec =
  let val_gro_l = group_value_list_off_section_node_value val_sec in
  List.iter 
    (Group_value_v.write_of_oc_of_group_value oc) 
    val_gro_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_sss =
  let nof = fullnameoffile nam_dir tag_sss in
  let oc = oc_of_fullnameoffile nof in 

  let val_sec = retrieve tag_sss in
  write_of_oc_of_section_node_value oc val_sec;

  close_out oc;
;;



