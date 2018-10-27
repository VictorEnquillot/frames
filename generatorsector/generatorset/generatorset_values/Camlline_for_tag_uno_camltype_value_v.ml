(** {3 Camlline_for_tag_uno_camltype_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_uno_camltype_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cuc soi_cal =
  let tag_cuc = Tag_v.make sym_cuc soi_cal in
  let tag_ent_l = 
    Camlline_for_tag_uno_camltype_formula_v.entity_tag_list_off_camlline_for_tag_uno_camltype_tag 
      tag_cuc 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_tag_uno_camltype_symbol sym_cuc 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_top = uno_off_list nam_cod "string_of" sym_cal sym_ent_l in

  match sym_cuc with
  | Camlline_for_tag_uno_camltype_symbol_t.Type_et_tag_equal_et_symbol_tdot_et_symbol_tag ->

      Format.sprintf "type %s_tag = %s_symbol_t.%s_symbol Tag_t.tag"

       (abbreviation_argument sym_ent_top)
       (entity_name_capitalized sym_ent_top)  
       (entity_name sym_ent_top)  
;;
	

(** {6 Making_of_value} *)

let make sym_cuc soi_cal =
  let str = string_of sym_cuc soi_cal in
  match sym_cuc with
  | Camlline_for_tag_uno_camltype_symbol_t.Type_et_tag_equal_et_symbol_tdot_et_symbol_tag ->
     Camlline_for_tag_uno_camltype_value_t.Type_et_tag_equal_et_symbol_tdot_et_symbol_tag str

;;

(** {6 Retrieving} *)

let retrieve tag_cuc =
  let sym_cuc = Tag_v.entity_off_tag tag_cuc in
  let soi_cal = Tag_v.sole_index_off_tag tag_cuc in
  make sym_cuc soi_cal
;;

(** {6 String_offing} *)

let string_off val_cuc =
  match val_cuc with
  | Camlline_for_tag_uno_camltype_value_t.Type_et_tag_equal_et_symbol_tdot_et_symbol_tag str -> str 

;;

