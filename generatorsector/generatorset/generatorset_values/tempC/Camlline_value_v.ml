(** {3 The functionalities for a Value for an Camlline of a Camlfile.}  *)

let nam_cod = "Camlline_value_v.ml";;

(** {6 Making.} *)

let make tag_cal =
  let soi_cal = Tag_v.sole_index_off_tag tag_cal in
  let sym_cal = Tag_v.symbol_off_tag tag_cal in

  match sym_cal with
  | Camlline_symbol_t.Camlline_constant_symbol sym_clc -> 
      Camlline_constant_value_v.make sym_clc soi_cal

  | Camlline_symbol_t.Camlline_datastructure_symbol sym_cld -> 
      Camlline_datastructure_value_v.make sym_cld soi_cal

  | Camlline_symbol_t.Camlline_duo_symbol sym_cld -> 
      Camlline_duo_value_v.make sym_cld soi_cal

  | Camlline_symbol_t.Camlline_trio_symbol sym_clt -> 
      Camlline_trio_value_v.make sym_clt soi_cal

  | Camlline_symbol_t.Camlline_uno_symbol sym_clu -> 
      Camlline_uno_value_v.make sym_clu soi_cal
;;

(** {6 Naming.} *)

let longname val_cal = val_cal;;

(** {6 Writing.} *)

let nameoffile nam_dir tag_cal =
  let sym_cal = Tag_v.symbol_off_tag tag_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_enp = Camlline_tag_v.entity_proper_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in
  let sym_usf = Camlline_tag_v.usagefile_symbol_off_camlline_tag tag_cal in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Camlline_tag_v.item_symbol_off_camlline_tag tag_cal in
  let sym_cap = Camlline_tag_v.camlparagraph_symbol_off_camlline_tag tag_cal in

  let nam_fil = Format.sprintf "%s_%s_%s_%s_%s%s.%s" 
    (Entity_proper_symbol_v.string_off sym_enp) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Camlparagraph_symbol_v.name sym_cap) 
    (Camlline_symbol_v.name sym_cal) 
    suf_mod ext_caf
  in 
  nam_dir ^ nam_fil
;;

let write_of_oc_of_camlline_value oc val_cal =
  output_string oc (Format.sprintf "%s@." val_cal)
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_write_of_string_of_string_of_nameoffile nam_cod "oc" nof
;; 

let write nam_dir tag_cal =
  let nof = nameoffile nam_dir tag_cal in
  let oc = oc_of_nameoffile nof in 

  let val_cal = make tag_cal in
  write_of_oc_of_camlline_value oc val_cal;

  close_out oc;
;;

