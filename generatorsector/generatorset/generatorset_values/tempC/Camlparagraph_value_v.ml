(** {3 The functionalities for a Value for an Camlparagraph of a Camlfile.}  *)

let nam_cod = "Camlparagraph_value_v.ml";;

(** {6 Making.} *)

let make tag_cap =
  let for_cap = Camlparagraph_formula_v.retrieve tag_cap in
  Camlparagraph_formula_v.map Camlline_value_v.make for_cap
;;

(** {6 Writing.} *)

let longname val_cap =
  List_v.name_with_separator (fun s-> s) "; "  
    (Camlparagraph_formula_v.map Camlline_value_v.longname val_cap) 
;;

let write_of_oc_of_camlparagraph_value oc val_cap =
  Camlparagraph_formula_v.iter (Camlline_value_v.write_of_oc_of_camlline_value oc) val_cap ;
  output_string oc (Format.sprintf "@.")
;;

(** {6 Extracting.} *)

let camlline_value_list_off_camlparagraph_value val_cap =
  val_cap
;;

(** {6 Writing.} *)

let nameoffile nam_dir tag_cap =
  let sym_cap = Tag_v.symbol_off_tag tag_cap in
  let sym_cat = Camlparagraph_tag_v.category_symbol_off_camlparagraph_tag tag_cap in
  let sym_enp = Camlparagraph_tag_v.entity_proper_symbol_off_camlparagraph_tag tag_cap in
  let sym_cof = Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag tag_cap in
  let sym_usf = Camlparagraph_tag_v.usagefile_symbol_off_camlparagraph_tag tag_cap in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in
  let sym_ite = Camlparagraph_tag_v.item_symbol_off_camlparagraph_tag tag_cap in

  let nam_fil = Format.sprintf "%s_%s_%s_%s%s.%s" 
    (Entity_proper_symbol_v.string_off sym_enp) (Category_symbol_v.name sym_cat) 
    (Item_symbol_v.name sym_ite) (Camlparagraph_symbol_v.name sym_cap) 
    suf_mod ext_caf
  in 
  nam_dir ^ nam_fil
;;

let write_of_oc_of_camlparagraph_value oc val_cap =
  Camlparagraph_formula_v.iter 
    (Camlline_value_v.write_of_oc_of_camlline_value oc) 
    val_cap ;
  output_string oc (Format.sprintf "@.")
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_write_of_string_of_string_of_nameoffile nam_cod "oc" nof
;; 

let write nam_dir tag_cap =
  let nof = nameoffile nam_dir tag_cap in
  let oc = oc_of_nameoffile nof in 

  let val_cap = make tag_cap in
  write_of_oc_of_camlparagraph_value oc val_cap;

  close_out oc;
;;

