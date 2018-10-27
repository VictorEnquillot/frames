(** {3 Camlline_for_formula_uno_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_son_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_uno_son_formula_v.entity_tag_list_off_camlline_for_formula_uno_son_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_son_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_uno_son_symbol_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar ->

      Format.sprintf "      (%s_formula_v.symbol_of_formula for_%s)"
	(entity_name_capitalized sym_ent)  
	(abbreviation_argument sym_ent)	
	
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_map_for_as ->

      Format.sprintf "  %s_formula_v.map for_%s)"
	(entity_name_capitalized sym_ent)  
	(abbreviation_argument sym_ent)	

  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_name_for_as ->

      Format.sprintf "  %s_formula_v.name for_%s)"
	(entity_name_capitalized sym_ent)  
	(abbreviation_argument sym_ent)	

  | Camlline_for_formula_uno_son_symbol_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in ->

      Format.sprintf "  let tag_%s = Tag_v.make sym_%s soi_%s in"
	(abbreviation_argument sym_ent)	
	(abbreviation_argument sym_ent)	
	(abbreviation_argument sym_ent)	

;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_uno_son_symbol_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar ->
     Camlline_for_formula_uno_son_value_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar str
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_map_for_as ->
     Camlline_for_formula_uno_son_value_t.Es_formula_vdot_map_for_as str
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_name_for_as ->
     Camlline_for_formula_uno_son_value_t.Es_formula_vdot_name_for_as str
  | Camlline_for_formula_uno_son_symbol_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in ->
     Camlline_for_formula_uno_son_value_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in str
;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfs =
  match val_cfs with
  | Camlline_for_formula_uno_son_value_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar str -> str 
  | Camlline_for_formula_uno_son_value_t.Es_formula_vdot_map_for_as str -> str 
  | Camlline_for_formula_uno_son_value_t.Es_formula_vdot_name_for_as str -> str 
  | Camlline_for_formula_uno_son_value_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in str -> str 
;;

