(** {3 Camlline_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_stem_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_sss soi_cal =
  let tag_sss = Tag_v.make sym_sss soi_cal in
  let tag_ent_l = 
    Camlline_stem_formula_v.entity_tag_list_off_camlline_stem_tag 
      tag_sss 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_stem_symbol sym_sss 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Contentfile_symbol_v.value_alone in

  match sym_sss with

      Format.sprintf "    failwith \"Not_%s:%s:make\"" 
       (abbreviation_argument sym_ent)
       (entity_name sym_ent)  
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
;;
	

(** {6 Making_of_value} *)

let make sym_sss soi_cal =
  let str = string_of sym_sss soi_cal in
  match sym_sss with

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_cal = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_cal
;;

(** {6 String_offing} *)

let string_off val_sss =
  match val_sss with

;;

