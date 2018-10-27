(** {3 Camlparagraph_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_node_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_ccc soi_cap =
  match sym_ccc with
  | Camlparagraph_node_symbol_t.Camlparagraph_node_sub_1_symbol sym_gfa ->
      Camlparagraph_node_value_t.Camlparagraph_node_sub_1_value
	(Camlparagraph_node_sub_1_value_v.make sym_gfa soi_cap)

  | Camlparagraph_node_symbol_t.Camlparagraph_node_sub_2_symbol sym_gfs ->
      Camlparagraph_node_value_t.Camlparagraph_node_sub_2_value
	(Camlparagraph_node_sub_2_value_v.make sym_gfs soi_cap)

  | Camlparagraph_node_symbol_t.Camlparagraph_node_sub_3_symbol sym_gfs ->
      Camlparagraph_node_value_t.Camlparagraph_node_sub_3_value
	(Camlparagraph_node_sub_3_value_v.make sym_gfs soi_cap)

  | Camlparagraph_node_symbol_t.Camlparagraph_node_sub_4_symbol sym_gfs ->
      Camlparagraph_node_value_t.Camlparagraph_node_sub_4_value
	(Camlparagraph_node_sub_4_value_v.make sym_gfs soi_cap)

  | Camlparagraph_node_symbol_t.Camlparagraph_node_sub_5_symbol sym_gfs ->
      Camlparagraph_node_value_t.Camlparagraph_node_sub_5_value
	(Camlparagraph_node_sub_5_value_v.make sym_gfs soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cap = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_node_value val_ccc =
  match val_ccc with
  | Camlparagraph_node_value_t.Camlparagraph_node_sub_1_value val_gfa ->
      Camlparagraph_node_sub_1_value_v.section_value_list_off_camlparagraph_node_sub_1_value val_gfa

  | Camlparagraph_node_value_t.Camlparagraph_node_sub_2_value val_gfs ->
      Camlparagraph_node_sub_2_value_v.section_value_list_off_camlparagraph_node_sub_2_value val_gfs

  | Camlparagraph_node_value_t.Camlparagraph_node_sub_3_value val_gfs ->
      Camlparagraph_node_sub_3_value_v.section_value_list_off_camlparagraph_node_sub_3_value val_gfs

 | Camlparagraph_node_value_t.Camlparagraph_node_sub_4_value val_gfs ->
      Camlparagraph_node_sub_4_value_v.section_value_list_off_camlparagraph_node_sub_4_value val_gfs

  | Camlparagraph_node_value_t.Camlparagraph_node_sub_5_value val_gfs ->
      Camlparagraph_node_sub_5_value_v.section_value_list_off_camlparagraph_node_sub_5_value val_gfs
;;

let string_list_off_camlparagraph_node_value val_ccc =
  let val_sec_l = section_value_list_off_camlparagraph_node_value val_ccc in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let string_list_off_camlparagraph_node_tag tag_ccc =
  let val_ccc = retrieve tag_ccc in
  string_list_off_camlparagraph_node_value val_ccc
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_ccc =
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  let tag_cap = Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_node_tag tag_ccc in
  let sym_cat = Camlparagraph_tag_v.category_symbol_off_camlparagraph_tag tag_ccc in
  let sym_ent = Camlparagraph_tag_v.entity_symbol_off_camlparagraph_tag tag_ccc in
  let sym_cof = Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag tag_ccc in
  let sym_usf = Camlparagraph_tag_v.usagefile_symbol_off_camlparagraph_tag tag_ccc in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Camlparagraph_tag_v.item_symbol_off_camlparagraph_tag tag_ccc in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Camlparagraph_symbol_v.name sym_ccc) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_camlparagraph_node_value oc val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_node_value val_cap in
  List.iter 
    (Section_value_v.write_of_oc_of_section_value oc) 
    val_sec_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_ccc =
  let nof = fullnameoffile nam_dir tag_ccc in
  let oc = oc_of_fullnameoffile nof in 

  let val_cap = retrieve tag_ccc in
  write_of_oc_of_camlparagraph_node_value oc val_cap;

  close_out oc;
;;



