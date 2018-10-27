(** {3 Item_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_node_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_iii soi_ite =
  match sym_iii with
  | Item_node_symbol_t.Item_node_sub_1_symbol sym_is1 ->
      Item_node_value_t.Item_node_sub_1_value
	(Item_node_sub_1_value_v.make sym_is1 soi_ite)

  | Item_node_symbol_t.Item_node_sub_2_symbol sym_is2 ->
      Item_node_value_t.Item_node_sub_2_value
	(Item_node_sub_2_value_v.make sym_is2 soi_ite)

  | Item_node_symbol_t.Item_node_sub_3_symbol sym_is2 ->
      Item_node_value_t.Item_node_sub_3_value
	(Item_node_sub_3_value_v.make sym_is2 soi_ite)

  | Item_node_symbol_t.Item_node_sub_4_symbol sym_is2 ->
      Item_node_value_t.Item_node_sub_4_value
	(Item_node_sub_4_value_v.make sym_is2 soi_ite)

  | Item_node_symbol_t.Item_node_sub_5_symbol sym_is2 ->
      Item_node_value_t.Item_node_sub_5_value
	(Item_node_sub_5_value_v.make sym_is2 soi_ite)

  | Item_node_symbol_t.Item_node_sub_6_symbol sym_is2 ->
      Item_node_value_t.Item_node_sub_6_value
	(Item_node_sub_6_value_v.make sym_is2 soi_ite)
;;

(** {6 Retrieving} *)

let retrieve tag_iii =
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  make sym_iii soi_ite
;;

(** {6 Extracting} *)

let camlparagraph_value_list_off_item_node_value val_iii =
  match val_iii with
  | Item_node_value_t.Item_node_sub_1_value val_is1 ->
      Item_node_sub_1_value_v.camlparagraph_value_list_off_item_node_sub_1_value val_is1

  | Item_node_value_t.Item_node_sub_2_value val_is2 ->
      Item_node_sub_2_value_v.camlparagraph_value_list_off_item_node_sub_2_value val_is2

  | Item_node_value_t.Item_node_sub_3_value val_is3 ->
      Item_node_sub_3_value_v.camlparagraph_value_list_off_item_node_sub_3_value val_is3

 | Item_node_value_t.Item_node_sub_4_value val_is4 ->
      Item_node_sub_4_value_v.camlparagraph_value_list_off_item_node_sub_4_value val_is4

  | Item_node_value_t.Item_node_sub_5_value val_is5 ->
      Item_node_sub_5_value_v.camlparagraph_value_list_off_item_node_sub_5_value val_is5

  | Item_node_value_t.Item_node_sub_6_value val_is6 ->
      Item_node_sub_6_value_v.camlparagraph_value_list_off_item_node_sub_6_value val_is6
;;

let string_list_off_item_node_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_node_value val_ite in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_ite =
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_cat = Item_tag_v.category_symbol_off_item_tag tag_ite in
  let sym_ent = Item_tag_v.entity_symbol_off_item_tag tag_ite in
  let sym_cof = Item_tag_v.contentfile_symbol_off_item_tag tag_ite in
  let sym_usf = Item_tag_v.usagefile_symbol_off_item_tag tag_ite in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s_%s%s.%s" 
      (Entity_symbol_v.string_off sym_ent)
      (Category_symbol_v.name sym_cat) (Item_symbol_v.name sym_ite) 
      suf_mod ext_caf
  in

  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_item_node_value oc val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_node_value val_ite in
  List.iter 
    (Camlparagraph_value_v.write_of_oc_of_camlparagraph_value oc) 
    val_cap_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_ite =
  let nof = fullnameoffile nam_dir tag_ite in
  let oc = oc_of_fullnameoffile nof in 

  let val_ite = retrieve tag_ite in
  write_of_oc_of_item_node_value oc val_ite;

  close_out oc;
;;



