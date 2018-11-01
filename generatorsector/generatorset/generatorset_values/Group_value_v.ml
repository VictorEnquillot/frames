(** {3 Group_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_gro soi_gro =
  match sym_gro with
  | Group_symbol_t.Group_for_any_symbol sym_gfa ->
      Group_value_t.Group_for_any_value
	(Group_for_any_value_v.make sym_gfa soi_gro)

  | Group_symbol_t.Group_for_formula_symbol sym_gfs ->
      Group_value_t.Group_for_formula_value
	(Group_for_formula_value_v.make sym_gfs soi_gro)

  | Group_symbol_t.Group_for_symbol_symbol sym_gfs ->
      Group_value_t.Group_for_symbol_value
	(Group_for_symbol_value_v.make sym_gfs soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gro =
  let soi_gro = Tag_v.sole_index_off_tag tag_gro in
  let sym_gro = Tag_v.entity_off_tag tag_gro in
  make sym_gro soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_value val_gro =
  match val_gro with
  | Group_value_t.Group_for_any_value val_gfa ->
      Group_for_any_value_v.camlline_value_list_off_group_for_any_value val_gfa

  | Group_value_t.Group_for_symbol_value val_gfs ->
      Group_for_symbol_value_v.camlline_value_list_off_group_for_symbol_value val_gfs

  | Group_value_t.Group_for_formula_value val_gfs ->
      Group_for_formula_value_v.camlline_value_list_off_group_for_formula_value val_gfs
;;

let string_list_off_group_value val_gro =
  let val_cal_l = camlline_value_list_off_group_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_tag tag_gro =
  let val_gro = retrieve tag_gro in
  string_list_off_group_value val_gro
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_gro =
  let sym_gro = Tag_v.entity_off_tag tag_gro in
  let sym_cat = Group_tag_v.category_symbol_off_group_tag tag_gro in
  let sym_ent = Group_tag_v.entity_symbol_off_group_tag tag_gro in
  let sym_cof = Group_tag_v.contentfile_symbol_off_group_tag tag_gro in
  let sym_usf = Group_tag_v.usagefile_symbol_off_group_tag tag_gro in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Group_tag_v.item_symbol_off_group_tag tag_gro in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Group_symbol_v.name sym_gro) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_group_value oc val_gro =
  let val_cal_l = camlline_value_list_off_group_value val_gro in
  List.iter (Camlline_value_v.write_of_oc_of_camlline_value oc) val_cal_l ;
(*  output_string oc (Format.sprintf "@.") *)
;;

let write nam_dir tag_gro =
  let nof = fullnameoffile nam_dir tag_gro in
  let oc = oc_of_fullnameoffile nof in 

  let val_gro = retrieve tag_gro in
  write_of_oc_of_group_value oc val_gro;

  close_out oc;
;;



