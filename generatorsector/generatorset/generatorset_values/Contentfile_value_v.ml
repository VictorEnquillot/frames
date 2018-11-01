(** {3 Contentfile_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Contentfile_value_v";
   "Needed-by : VGNR:";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let usagefile_value_list_off_contentfile_tag tag_cof =
  let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof in
  List.map Usagefile_value_v.retrieve tag_usf_l
;;

(** {6 Making_for_value} *)

let make sym_cof soi_cof =
  let tag_cof = Tag_v.make sym_cof soi_cof in
  let val_usf_l = usagefile_value_list_off_contentfile_tag tag_cof in
  match sym_cof with
  | Contentfile_symbol_t.Type_alone ->
      Contentfile_value_t.Type_alone val_usf_l

  | Contentfile_symbol_t.Type_n_value ->
      Contentfile_value_t.Type_n_value val_usf_l

  | Contentfile_symbol_t.Value_alone ->
      Contentfile_value_t.Value_alone val_usf_l
;;

(** {6 Retrieving} *)

let retrieve tag_cof =
  let sym_cof = Tag_v.entity_off_tag tag_cof in
  let soi_cof = Tag_v.sole_index_off_tag tag_cof in
  make sym_cof soi_cof
;;

(** {6 Extracting} *)

let usagefile_value_list_off_contentfile_value val_cof =
  match val_cof with
  | Contentfile_value_t.Type_alone val_usf_l -> val_usf_l
	
  | Contentfile_value_t.Type_n_value val_usf_l -> val_usf_l

  | Contentfile_value_t.Value_alone val_usf_l -> val_usf_l
;;

let string_list_off_contentfile_value val_cof =
  let val_usf_l = usagefile_value_list_off_contentfile_value val_cof in
  List.map Usagefile_value_v.string_list_off_usagefile_value val_usf_l
;;

(** {6 Nameoffiling} *)

let fullnameoffile nam_dir tag_cof =
  let sym_cof = Tag_v.entity_off_tag tag_cof in
  let suf_mod = Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof in

  let nam_fil = Format.sprintf "%s%s" 
    (Contentfile_symbol_v.name sym_cof) 
    suf_mod 
  in 
  nam_dir ^ (String.capitalize_ascii nam_fil)
;;

let oc_of_fullnameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

(** {6 Writing} *)

let write_of_oc_of_contentfile_value oc val_cof =
  let val_usf_l = usagefile_value_list_off_contentfile_value val_cof in
  List.iter 
    (Usagefile_value_v.write_of_oc_of_usagefile_value oc) 
    val_usf_l ;
  output_string oc (Format.sprintf "@.")
;;

let write nam_dir tag_cof =
  let nof = fullnameoffile nam_dir tag_cof in
  let oc = oc_of_fullnameoffile nof in 

  let val_cof = retrieve tag_cof in
  write_of_oc_of_contentfile_value oc val_cof;

  close_out oc;
;;



