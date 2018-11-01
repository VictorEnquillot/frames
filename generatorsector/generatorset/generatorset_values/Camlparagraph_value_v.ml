(** {3 Camlparagraph_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_of_value} *)

let make sym_cap soi_cap =
  match sym_cap with
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cfa ->
      Camlparagraph_value_t.Camlparagraph_for_any_value
	(Camlparagraph_for_any_value_v.make sym_cfa soi_cap)

  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cfs ->
      Camlparagraph_value_t.Camlparagraph_for_symbol_value
	(Camlparagraph_for_symbol_value_v.make sym_cfs soi_cap)

  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cfs ->
      Camlparagraph_value_t.Camlparagraph_for_formula_value
	(Camlparagraph_for_formula_value_v.make sym_cfs soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  make sym_cap soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_value val_cap =
  match val_cap with
  | Camlparagraph_value_t.Camlparagraph_for_any_value val_cfa ->
      Camlparagraph_for_any_value_v.section_value_list_off_camlparagraph_for_any_value val_cfa

  | Camlparagraph_value_t.Camlparagraph_for_symbol_value val_cfs ->
      Camlparagraph_for_symbol_value_v.section_value_list_off_camlparagraph_for_symbol_value val_cfs

  | Camlparagraph_value_t.Camlparagraph_for_formula_value val_cfs ->
      Camlparagraph_for_formula_value_v.section_value_list_off_camlparagraph_for_formula_value val_cfs

;;

let string_list_off_camlparagraph_value val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_value val_cap in
  List.flatten 
    (List.map Section_value_v.string_list_off_section_value val_sec_l)
;;

let string_list_off_camlparagraph_tag tag_cap =
  let val_cap = retrieve tag_cap in
  string_list_off_camlparagraph_value val_cap
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_cap =
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_cat = Camlparagraph_tag_v.category_symbol_off_camlparagraph_tag tag_cap in
  let sym_ent = Camlparagraph_tag_v.entity_symbol_off_camlparagraph_tag tag_cap in
  let sym_cof = Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag tag_cap in
  let sym_usf = Camlparagraph_tag_v.usagefile_symbol_off_camlparagraph_tag tag_cap in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Camlparagraph_tag_v.item_symbol_off_camlparagraph_tag tag_cap in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_symbol_v.string_off sym_ent) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Camlparagraph_symbol_v.name sym_cap) 
    suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_camlparagraph_value oc val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_value val_cap in
  List.iter 
    (Section_value_v.write_of_oc_of_section_value oc) 
    val_sec_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_cap =
  let nof = fullnameoffile nam_dir tag_cap in
  let oc = oc_of_fullnameoffile nof in 

  let val_cap = retrieve tag_cap in
  write_of_oc_of_camlparagraph_value oc val_cap;

  close_out oc;
;;



