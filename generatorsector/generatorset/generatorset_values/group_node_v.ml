(** {3 Group_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_node_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_ggg soi_gro =
  match sym_ggg with
  | Group_node_symbol_t.Group_node_sub_1_symbol sym_gfa ->
      Group_node_value_t.Group_node_sub_1_value
	(Group_node_sub_1_value_v.make sym_gfa soi_gro)

  | Group_node_symbol_t.Group_node_sub_2_symbol sym_gfs ->
      Group_node_value_t.Group_node_sub_2_value
	(Group_node_sub_2_value_v.make sym_gfs soi_gro)

  | Group_node_symbol_t.Group_node_sub_3_symbol sym_gfs ->
      Group_node_value_t.Group_node_sub_3_value
	(Group_node_sub_3_value_v.make sym_gfs soi_gro)

  | Group_node_symbol_t.Group_node_sub_4_symbol sym_gfs ->
      Group_node_value_t.Group_node_sub_4_value
	(Group_node_sub_4_value_v.make sym_gfs soi_gro)

  | Group_node_symbol_t.Group_node_sub_5_symbol sym_gfs ->
      Group_node_value_t.Group_node_sub_5_value
	(Group_node_sub_5_value_v.make sym_gfs soi_gro)

  | Group_node_symbol_t.Group_node_sub_6_symbol sym_gfs ->
      Group_node_value_t.Group_node_sub_6_value
	(Group_node_sub_6_value_v.make sym_gfs soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let soi_gro = Tag_v.sole_index_off_tag tag_ggg in
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  make sym_ggg soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_node_value val_gro =
  match val_gro with
  | Group_node_value_t.Group_node_sub_1_value val_gfa ->
      Group_node_sub_1_value_v.camlline_value_list_off_group_node_sub_1_value val_gfa

  | Group_node_value_t.Group_node_sub_2_value val_gfs ->
      Group_node_sub_2_value_v.camlline_value_list_off_group_node_sub_2_value val_gfs

  | Group_node_value_t.Group_node_sub_3_value val_gfs ->
      Group_node_sub_3_value_v.camlline_value_list_off_group_node_sub_3_value val_gfs

 | Group_node_value_t.Group_node_sub_4_value val_gfs ->
      Group_node_sub_4_value_v.camlline_value_list_off_group_node_sub_4_value val_gfs

  | Group_node_value_t.Group_node_sub_5_value val_gfs ->
      Group_node_sub_5_value_v.camlline_value_list_off_group_node_sub_5_value val_gfs

  | Group_node_value_t.Group_node_sub_6_value val_gfs ->
      Group_node_sub_6_value_v.camlline_value_list_off_group_node_sub_6_value val_gfs

;;

let string_list_off_group_node_value val_ggg =
  let val_cal_l = camlline_value_list_off_group_node_value val_ggg in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_node_tag tag_ggg =
  let val_ggg = retrieve tag_ggg in
  string_list_off_group_node_value val_ggg
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_ggg =
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  let tag_gro = Group_tag_v.group_tag_of_group_node_tag tag_ggg in
  let sym_cat = Group_tag_v.category_symbol_off_group_tag tag_ggg in
  let sym_ent = Group_tag_v.entity_symbol_off_group_tag tag_ggg in
  let sym_cof = Group_tag_v.contentfile_symbol_off_group_tag tag_ggg in
  let sym_usf = Group_tag_v.usagefile_symbol_off_group_tag tag_ggg in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Group_tag_v.item_symbol_off_group_tag tag_ggg in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Group_symbol_v.name sym_ggg) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_group_node_value oc val_gro =
  let val_cal_l = camlline_value_list_off_group_node_value val_gro in
  Group_formula_v.iter 
    (Camlline_value_v.write_of_oc_of_camlline_value oc) 
    val_cal_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_ggg =
  let nof = fullnameoffile nam_dir tag_ggg in
  let oc = oc_of_fullnameoffile nof in 

  let val_gro = retrieve tag_ggg in
  write_of_oc_of_group_node_value oc val_gro;

  close_out oc;
;;



