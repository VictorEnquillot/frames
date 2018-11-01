(** {3 The functionalities for a Value for an Camlline of a Camlfile.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_node_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let make sym_cal soi_cal =
  match sym_cal with
  | Camlline_symbol_t.Camlline_constant_symbol sym_clc ->
      Camlline_value_t.Camlline_constant_value  
	(Camlline_constant_value_v.make sym_clc soi_cal)

  | Camlline_symbol_t.Camlline_for_any_symbol sym_clu -> 
      Camlline_value_t.Camlline_for_any_value
	(Camlline_for_any_value_v.make sym_clu soi_cal)

  | Camlline_symbol_t.Camlline_for_formula_symbol sym_cld -> 
      Camlline_value_t.Camlline_for_formula_value 
	(Camlline_for_formula_value_v.make sym_cld soi_cal)

  | Camlline_symbol_t.Camlline_for_symbol_symbol sym_cld -> 
      Camlline_value_t.Camlline_for_symbol_value 
	(Camlline_for_symbol_value_v.make sym_cld soi_cal)

  | Camlline_symbol_t.Camlline_for_tag_symbol sym_cld -> 
      Camlline_value_t.Camlline_for_tag_value 
	(Camlline_for_tag_value_v.make sym_cld soi_cal)
;;

let retrieve tag_cal =
  let soi_cal = Tag_v.sole_index_off_tag tag_cal in
  let sym_cal = Tag_v.entity_off_tag tag_cal in
  make sym_cal soi_cal
;;

let string_off val_cal =
  match val_cal with
  | Camlline_value_t.Camlline_constant_value val_cac ->
      Camlline_constant_value_v.string_off val_cac

  | Camlline_value_t.Camlline_for_formula_value val_cad -> 
	Camlline_for_formula_value_v.string_off val_cad

  | Camlline_value_t.Camlline_for_symbol_value val_cad -> 
	Camlline_for_symbol_value_v.string_off val_cad

  | Camlline_value_t.Camlline_for_tag_value val_cad -> 
	Camlline_for_tag_value_v.string_off val_cad

  | Camlline_value_t.Camlline_for_any_value val_cau -> 
	Camlline_for_any_value_v.string_off val_cau
;;

let string_off_camlline_tag tag_cal =
  let val_cal = retrieve tag_cal in
  string_off val_cal
;;

(** {6 Writing.} *)

let fullnameoffile nam_dir tag_cal =
  let sym_cal = Tag_v.entity_off_tag tag_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_ent = Camlline_tag_v.entity_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in
  let sym_usf = Camlline_tag_v.usagefile_symbol_off_camlline_tag tag_cal in
  let suf_mod = Tools_vgnr_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Tools_vgnr_v.module_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Camlline_tag_v.item_symbol_off_camlline_tag tag_cal in
  let sym_cap = Camlline_tag_v.camlparagraph_symbol_off_camlline_tag tag_cal in

  let nam_fil = Format.sprintf "%s_%s_%s_%s_%s%s.%s" 
      (Entity_symbol_v.string_off sym_ent) 
      (Category_symbol_v.name sym_cat) 
      (Item_symbol_v.name sym_ite) 
      (Camlparagraph_symbol_v.name sym_cap) 
      (Camlline_symbol_v.name sym_cal) 
      suf_mod ext_caf
  in 
  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let write_of_oc_of_camlline_value oc val_cal =
  let str = string_off val_cal in
  output_string oc (Format.sprintf "%s@." str)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

let write nam_dir tag_cal =
  let nof = fullnameoffile nam_dir tag_cal in
  let oc = oc_of_fullnameoffile nof in 

  let val_cal = retrieve tag_cal in
  write_of_oc_of_camlline_value oc val_cal;

  close_out oc;
;;

