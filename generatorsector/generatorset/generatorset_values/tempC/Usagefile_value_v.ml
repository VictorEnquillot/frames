(** {3 The functionalities for a Value for an Usagefile of a Camlfile.}  *)

let nam_cod = "Usagefile_value_v.ml";;

(** {6 Aliases} *)

(** {6 Making.} *)

let make tag_usf =
  let for_usf = Usagefile_formula_v.retrieve tag_usf in
  Usagefile_formula_v.map Item_value_v.make for_usf
;;

(** {6 Writing.} *)

let longname val_usf =
  List_v.name_with_separator (fun s-> s) "; "  
    (Usagefile_formula_v.map Item_value_v.longname val_usf) 
;;

let nameoffile nam_dir tag_usf =
  let sym_usf = Usagefile_tag_v.usagefile_symbol_off_usagefile_tag tag_usf in

  let sym_cat = Usagefile_tag_v.category_symbol_off_usagefile_tag tag_usf in
  let sym_enp = Usagefile_tag_v.entity_proper_symbol_off_usagefile_tag tag_usf in
  let sym_cof = Usagefile_tag_v.contentfile_symbol_off_usagefile_tag tag_usf in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in
  let ext_caf = Usagefile_symbol_v.camlfile_extension_of_usagefile_symbol sym_usf in

  let nam_fil = Format.sprintf "%s_%s%s.%s" 
      (Entity_proper_symbol_v.string_off sym_enp) 
      (Category_symbol_v.name sym_cat) 
      suf_mod ext_caf
  in
  nam_dir ^ nam_fil
;;

let write_of_oc_of_usagefile_value oc val_usf =
  Usagefile_formula_v.iter 
    (Item_value_v.write_of_oc_of_item_value oc) val_usf;
  output_string oc (Format.sprintf "@.")
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_write_of_string_of_string_of_nameoffile nam_cod "oc" nof
;; 

let write nam_dir tag_usf =
  let nof = nameoffile nam_dir tag_usf in
  let oc = oc_of_nameoffile nof in 
  let val_usf = make tag_usf in

  write_of_oc_of_usagefile_value oc val_usf;
  close_out oc;
;;

(** {6 Extracting.} *)

let item_value_list_off_usagefile_value val_usf =
  val_usf
;;

let camlparagraph_value_list_off_usagefile_value val_usf =
  let val_ite_l = item_value_list_off_usagefile_value val_usf in
    let val_cap_ll =
      List.map 
	Item_value_v.camlparagraph_value_list_off_item_value val_ite_l 
    in
    List.flatten val_cap_ll
;;

let camlline_value_list_off_usagefile_value val_usf =
  let val_cap_l = camlparagraph_value_list_off_usagefile_value val_usf in
  let val_cal_ll =
    List.map Camlparagraph_value_v.camlline_value_list_off_camlparagraph_value val_cap_l 
  in
  List.flatten val_cal_ll
;;
