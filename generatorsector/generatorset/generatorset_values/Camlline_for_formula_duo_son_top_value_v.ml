(** {3 Camlline_for_formula_duo_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_son_top_value_v";
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
    Camlline_for_formula_duo_son_top_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_top_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_top_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_son, sym_ent_top) = duo_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_for_das ->

      Format.sprintf "    %s_formula_t.%s for_das"
       (entity_name_capitalized sym_ent_top)
       (entity_name_capitalized sym_ent_son)

  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula ->

      Format.sprintf "    %s_formula_t.%s_formula"
       (entity_name_capitalized sym_ent_top)
       (entity_name_capitalized sym_ent_son)

  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in ->

      Format.sprintf "  let nam_%s = Tag_v.name for_%s in"
       (abbreviation_argument sym_ent_son)
       (abbreviation_argument sym_ent_top)

  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in ->

      Format.sprintf "  let nam_%s = Tag_v.name %s_symbol_v.name in"
       (abbreviation_argument sym_ent_son)
       (entity_name_capitalized sym_ent_top)  

  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow ->

      Format.sprintf "  | %s_formula_t.%s (s, _ ) ->"
       (entity_name_capitalized sym_ent_top)
       (entity_name_capitalized sym_ent_son)

  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_underscore_arrow ->

      Format.sprintf "  | %s_formula_t.%s _ ->"
       (entity_name_capitalized sym_ent_top)
       (entity_name_capitalized sym_ent_son)
;;
	

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula ->
     Camlline_for_formula_duo_son_top_value_t.Et_formula_tdot_es_formula str
  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow ->
     Camlline_for_formula_duo_son_top_value_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow str
  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_underscore_arrow ->
     Camlline_for_formula_duo_son_top_value_t.Pipe_et_formula_tdot_es_underscore_arrow str
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_for_das ->
     Camlline_for_formula_duo_son_top_value_t.Et_formula_tdot_es_for_das str
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in ->
     Camlline_for_formula_duo_son_top_value_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in str
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in ->
     Camlline_for_formula_duo_son_top_value_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in str

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
  | Camlline_for_formula_duo_son_top_value_t.Et_formula_tdot_es_formula str -> str 
  | Camlline_for_formula_duo_son_top_value_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow str -> str 
  | Camlline_for_formula_duo_son_top_value_t.Pipe_et_formula_tdot_es_underscore_arrow str -> str 
  | Camlline_for_formula_duo_son_top_value_t.Et_formula_tdot_es_for_das str -> str 
  | Camlline_for_formula_duo_son_top_value_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in str -> str 
  | Camlline_for_formula_duo_son_top_value_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in str -> str 

;;

