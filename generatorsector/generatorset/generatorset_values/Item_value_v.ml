(** {3 Item_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_ite soi_ite =
  match sym_ite with
  | Item_symbol_t.Item_for_formula_symbol sym_iat ->
      Item_value_t.Item_for_formula_value
	(Item_for_formula_value_v.make sym_iat soi_ite)

  | Item_symbol_t.Item_for_symbol_symbol sym_iat ->
      Item_value_t.Item_for_symbol_value
	(Item_for_symbol_value_v.make sym_iat soi_ite)

  | Item_symbol_t.Item_for_any_only_top_symbol sym_igl ->
      Item_value_t.Item_for_any_only_top_value
	(Item_for_any_only_top_value_v.make sym_igl soi_ite)
;;

(** {6 Retrieving} *)

let retrieve tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  make sym_ite soi_ite
;;

(** {6 Extracting} *)

let camlparagraph_value_list_off_item_value val_ite =
  match val_ite with
  | Item_value_t.Item_for_formula_value val_iat ->
      Item_for_formula_value_v.camlparagraph_value_list_off_item_for_formula_value val_iat

  | Item_value_t.Item_for_symbol_value val_iat ->
      Item_for_symbol_value_v.camlparagraph_value_list_off_item_for_symbol_value val_iat

  | Item_value_t.Item_for_any_only_top_value val_igl ->
      Item_for_any_only_top_value_v.camlparagraph_value_list_off_item_for_any_only_top_value val_igl

;;

let camlparagraph_value_list_off_item_tag tag_ite =
  let val_ite = retrieve tag_ite in
  camlparagraph_value_list_off_item_value val_ite
;;

let string_list_off_item_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_value val_ite in
  List.flatten 
    (List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l)
;;

let string_list_off_item_tag tag_ite =
  let val_ite = retrieve tag_ite in
  string_list_off_item_value val_ite
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_ite =
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_cat = Item_tag_v.category_symbol_off_item_tag tag_ite in
  let sym_ent = Item_tag_v.entity_symbol_off_item_tag tag_ite in
  let sym_cof = Item_tag_v.contentfile_symbol_off_item_tag tag_ite in
  let sym_usf = Item_tag_v.usagefile_symbol_off_item_tag tag_ite in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s_%s%s.%s" 
      (Entity_symbol_v.string_off sym_ent)
      (Category_symbol_v.name sym_cat) 
      (Item_symbol_v.name sym_ite) 
      suf_mod ext_caf
  in

  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_item_value oc val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_value val_ite in
  List.iter 
    (Camlparagraph_value_v.write_of_oc_of_camlparagraph_value oc) 
    val_cap_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_ite =
  let nof = fullnameoffile nam_dir tag_ite in
  let oc = oc_of_fullnameoffile nof in 

  let val_ite = retrieve tag_ite in
  write_of_oc_of_item_value oc val_ite;

  close_out oc;
;;



