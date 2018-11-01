(** {3 Usagefile_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Usagefile_node_value_v";
   "Needed-by : VGNR:Usagefile_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_uuu soi_usf =
  match sym_uuu with
  | Usagefile_node_symbol_t.Usagefile_node_sub_1_symbol sym_is1 ->
      Usagefile_node_value_t.Usagefile_node_sub_1_value
	(Usagefile_node_sub_1_value_v.make sym_is1 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_2_symbol sym_is2 ->
      Usagefile_node_value_t.Usagefile_node_sub_2_value
	(Usagefile_node_sub_2_value_v.make sym_is2 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_3_symbol sym_is2 ->
      Usagefile_node_value_t.Usagefile_node_sub_3_value
	(Usagefile_node_sub_3_value_v.make sym_is2 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_4_symbol sym_is2 ->
      Usagefile_node_value_t.Usagefile_node_sub_4_value
	(Usagefile_node_sub_4_value_v.make sym_is2 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_5_symbol sym_is2 ->
      Usagefile_node_value_t.Usagefile_node_sub_5_value
	(Usagefile_node_sub_5_value_v.make sym_is2 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_6_symbol sym_is2 ->
      Usagefile_node_value_t.Usagefile_node_sub_6_value
	(Usagefile_node_sub_6_value_v.make sym_is2 soi_usf)
;;

(** {6 Retrieving} *)

let retrieve tag_uuu =
  let soi_usf = Tag_v.sole_index_off_tag tag_uuu in
  let sym_uuu = Tag_v.entity_off_tag tag_uuu in
  make sym_uuu soi_usf
;;

(** {6 Extracting} *)

let item_value_list_off_usagefile_node_value val_uuu =
  match val_uuu with
  | Usagefile_node_value_t.Usagefile_node_sub_1_value val_is1 ->
      Usagefile_node_sub_1_value_v.item_value_list_off_usagefile_node_sub_1_value val_is1

  | Usagefile_node_value_t.Usagefile_node_sub_2_value val_is2 ->
      Usagefile_node_sub_2_value_v.item_value_list_off_usagefile_node_sub_2_value val_is2

  | Usagefile_node_value_t.Usagefile_node_sub_3_value val_is3 ->
      Usagefile_node_sub_3_value_v.item_value_list_off_usagefile_node_sub_3_value val_is3

 | Usagefile_node_value_t.Usagefile_node_sub_4_value val_is4 ->
      Usagefile_node_sub_4_value_v.item_value_list_off_usagefile_node_sub_4_value val_is4

  | Usagefile_node_value_t.Usagefile_node_sub_5_value val_is5 ->
      Usagefile_node_sub_5_value_v.item_value_list_off_usagefile_node_sub_5_value val_is5

  | Usagefile_node_value_t.Usagefile_node_sub_6_value val_is6 ->
      Usagefile_node_sub_6_value_v.item_value_list_off_usagefile_node_sub_6_value val_is6
;;

let string_list_off_usagefile_node_value val_usf =
  let val_ite_l = item_value_list_off_usagefile_node_value val_usf in
  List.map Item_value_v.string_list_off_item_value val_ite_l
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_usf =
  let sym_usf = Tag_v.entity_off_tag tag_usf in
  let sym_cat = Usagefile_tag_v.category_symbol_off_usagefile_tag tag_usf in
  let sym_ent = Usagefile_tag_v.entity_symbol_off_usagefile_tag tag_usf in
  let sym_cof = Usagefile_tag_v.contentfile_symbol_off_usagefile_tag tag_usf in
  let sym_usf = Usagefile_tag_v.usagefile_symbol_off_usagefile_tag tag_usf in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s_%s%s.%s" 
      (Entity_symbol_v.string_off sym_ent)
      (Category_symbol_v.name sym_cat) (Usagefile_symbol_v.name sym_usf) 
      suf_mod ext_caf
  in

  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_usagefile_node_value oc val_usf =
  let val_ite_l = item_value_list_off_usagefile_node_value val_usf in
  List.usfr 
    (Item_value_v.write_of_oc_of_item_value oc) 
    val_ite_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_usf =
  let nof = fullnameoffile nam_dir tag_usf in
  let oc = oc_of_fullnameoffile nof in 

  let val_usf = retrieve tag_usf in
  write_of_oc_of_usagefile_node_value oc val_usf;

  close_out oc;
;;



