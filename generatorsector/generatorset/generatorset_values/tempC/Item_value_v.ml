(** {3 The functionalities for a Value for an Item of a Camlfile.}  *)

let nam_cod = "Item_value_v.ml";;

(** {6 Aliases} *)


(** {6 Making.} *)

let make tag_ite =
  let for_ite = Item_formula_v.retrieve tag_ite in
  Item_formula_v.map Camlparagraph_value_v.make for_ite
;;

(** {6 Writing.} *)

let longname val_ite =
  List_v.name_with_separator (fun s-> s) "; "  
    (Item_formula_v.map Camlparagraph_value_v.longname val_ite) 
;;

let nameoffile nam_dir tag_ite =
  let sym_ite = Tag_v.symbol_off_tag tag_ite in
  let sym_cat = Item_tag_v.category_symbol_off_item_tag tag_ite in
  let sym_enp = Item_tag_v.entity_proper_symbol_off_item_tag tag_ite in
  let sym_cof = Item_tag_v.contentfile_symbol_off_item_tag tag_ite in
  let sym_usf = Item_tag_v.usagefile_symbol_off_item_tag tag_ite in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s_%s%s.%s" 
      (Entity_proper_symbol_v.string_off sym_enp) 
      (Category_symbol_v.name sym_cat) (Item_symbol_v.name sym_ite) 
      suf_mod ext_caf
  in
  nam_dir ^ nam_fil
;;

let write_of_oc_of_item_value oc val_ite =
  Item_formula_v.iter 
    (Camlparagraph_value_v.write_of_oc_of_camlparagraph_value oc) 
    val_ite ;
  output_string oc (Format.sprintf "@.")
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_write_of_string_of_string_of_nameoffile nam_cod "oc" nof
;; 

let write nam_dir tag_ite =
  let nof = nameoffile nam_dir tag_ite in
  let oc = oc_of_nameoffile nof in 

  let val_ite = make tag_ite in
  write_of_oc_of_item_value oc val_ite;

  close_out oc;
;;

(** {6 Extracting.} *)

let camlparagraph_value_list_off_item_value val_ite =
  val_ite
;;

let camlline_value_list_off_item_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_value val_ite in
    let val_cal_ll =
      List.map 
	Camlparagraph_value_v.camlline_value_list_off_camlparagraph_value 
	val_cap_l 
    in
    List.flatten val_cal_ll
;;
