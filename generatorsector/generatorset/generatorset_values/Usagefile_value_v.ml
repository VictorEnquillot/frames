(** {3 Usagefile_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Usagefile_value_v";
   "Needed-by : VGNR:Contentfile_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_usf soi_usf =
  match sym_usf with
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_is1 ->
      Usagefile_value_t.Usagefile_for_symbol_value
	(Usagefile_for_symbol_value_v.make sym_is1 soi_usf)

  | Usagefile_symbol_t.Usagefile_for_formula_symbol sym_is1 ->
      Usagefile_value_t.Usagefile_for_formula_value
	(Usagefile_for_formula_value_v.make sym_is1 soi_usf)

;;

(** {6 Retrieving} *)

let retrieve tag_usf =
  let soi_usf = Tag_v.sole_index_off_tag tag_usf in
  let sym_usf = Tag_v.entity_off_tag tag_usf in
  make sym_usf soi_usf
;;

(** {6 Extracting} *)

let item_value_list_off_usagefile_value val_usf =
  match val_usf with
  | Usagefile_value_t.Usagefile_for_symbol_value val_is1 ->
      Usagefile_for_symbol_value_v.item_value_list_off_usagefile_for_symbol_value val_is1

  | Usagefile_value_t.Usagefile_for_formula_value val_is1 ->
      Usagefile_for_formula_value_v.item_value_list_off_usagefile_for_formula_value val_is1

;;

let item_value_list_off_usagefile_tag tag_usf =
  let val_usf = retrieve tag_usf in
  item_value_list_off_usagefile_value val_usf
;;

let string_list_off_usagefile_value val_usf =
  let val_ite_l = item_value_list_off_usagefile_value val_usf in
  List.flatten
    (List.map Item_value_v.string_list_off_item_value val_ite_l)
;;

let string_list_off_usagefile_tag tag_usf =
  let val_usf = retrieve tag_usf in
  string_list_off_usagefile_value val_usf
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_usf =
  let sym_usf = Tag_v.entity_off_tag tag_usf in
  let sym_cat = Usagefile_tag_v.category_symbol_off_usagefile_tag tag_usf in
  let sym_ent = Usagefile_tag_v.entity_symbol_off_usagefile_tag tag_usf in
  let sym_cof = Usagefile_tag_v.contentfile_symbol_off_usagefile_tag tag_usf in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s%s.%s" 
      (Entity_symbol_v.string_off sym_ent)
      (Category_symbol_v.name sym_cat) 
      suf_mod ext_caf
  in

  nam_dir ^ (String.capitalize nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_usagefile_value oc val_usf =
  let val_ite_l = item_value_list_off_usagefile_value val_usf in
  List.iter 
    (Item_value_v.write_of_oc_of_item_value oc) 
    val_ite_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_usf =
  let nof = fullnameoffile nam_dir tag_usf in
  let oc = oc_of_fullnameoffile nof in 

  let val_usf = retrieve tag_usf in
  write_of_oc_of_usagefile_value oc val_usf;

  close_out oc;
;;



