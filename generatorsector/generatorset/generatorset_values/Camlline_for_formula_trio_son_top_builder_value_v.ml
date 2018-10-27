(** {3 Camlline_for_formula_trio_son_top_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_trio_son_top_builder_value_v";
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
    Camlline_for_formula_trio_son_top_builder_formula_v.entity_tag_list_off_camlline_for_formula_trio_son_top_builder_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_son, sym_ent_top, sym_ent_bui) = trio_of_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar ->

      Format.sprintf "        %s_formula_t.%s (s, tag_%s_l)"
	(entity_name_capitalized sym_ent_top)  
	(entity_name_capitalized sym_ent_son)  
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_tag_ab_l ->

      Format.sprintf "        %s_formula_t.%s tag_%s_l"
	(entity_name_capitalized sym_ent_top)  
	(entity_name_capitalized sym_ent_son)  
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l ->

      Format.sprintf "  | %s_formula_t.%s (s, tag_%s_l) -> tag_%s_l"
	(entity_name_capitalized sym_ent_top)  
	(entity_name_capitalized sym_ent_son)  
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l ->

      Format.sprintf "  | %s_formula_t.%s tag_%s_l -> tag_%s_l"
	(entity_name_capitalized sym_ent_top)  
	(entity_name_capitalized sym_ent_son)  
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)
;;
	

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar ->
     Camlline_for_formula_trio_son_top_builder_value_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar str
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_value_t.Et_formula_tdot_es_tag_ab_l str
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_value_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l str
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_value_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l str


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
  | Camlline_for_formula_trio_son_top_builder_value_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar str -> str 
  | Camlline_for_formula_trio_son_top_builder_value_t.Et_formula_tdot_es_tag_ab_l str -> str 
  | Camlline_for_formula_trio_son_top_builder_value_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l str -> str 
  | Camlline_for_formula_trio_son_top_builder_value_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l str -> str 

;;

