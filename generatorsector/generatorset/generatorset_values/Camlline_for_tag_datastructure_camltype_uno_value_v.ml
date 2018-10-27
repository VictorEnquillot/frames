(** {3 Camlline_for_tag_datastructure_camltype_uno_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_datastructure_camltype_uno_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_ccu soi_cal =
  let tag_ccu = Tag_v.make sym_ccu soi_cal in
  let tag_ent_l = 
    Camlline_for_tag_datastructure_camltype_uno_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_camltype_uno_tag 
      tag_ccu 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_ccu 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_a = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_ccu with
  | Camlline_for_tag_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar ->
 
      Format.sprintf "  (tag_%s)"
	(abbreviation_argument sym_ent_a)
;;
	
(** {6 Making_of_value} *)

let make sym_ccu soi_cal =
  let str = string_of sym_ccu soi_cal in
  match sym_ccu with
  | Camlline_for_tag_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar ->
     Camlline_for_tag_datastructure_camltype_uno_value_t.Lpar_a_tag_rpar str

;;

(** {6 Retrieving} *)

let retrieve tag_ccu =
  let sym_ccu = Tag_v.entity_off_tag tag_ccu in
  let soi_cal = Tag_v.sole_index_off_tag tag_ccu in
  make sym_ccu soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccu =
  match val_ccu with
  | Camlline_for_tag_datastructure_camltype_uno_value_t.Lpar_a_tag_rpar str -> str 

;;

