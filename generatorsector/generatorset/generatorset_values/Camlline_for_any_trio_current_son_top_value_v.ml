(** {3 Camlline_for_any_trio_current_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_trio_current_son_top_value_v";
   "Needed-by : VGNR:Camlline_duo_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cdf soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cdf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2, sym_ent_3) = Tools_vgnr_v.trio_of_list nam_cod "make" sym_cal sym_ent_l in

  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cdf with
  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any -> (* let triangle_isoceles_equilateral = triangle_symbol_of_triangle_isoceles_symbol Triangle_isoceles_symbol_v.triangle_isoceles_equilateral;;*)

      let sym_ent_c = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in
      let sym_ent_t = sym_ent_3 in
      Format.sprintf "let %s = %s_of_%s %s_v.%s;;" 
	(entity_name sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(entity_name sym_ent_c) 

  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg -> (* let triangle_isoceles_equilateral s = triangle_symbol_of_triangle_isoceles_symbol (Triangle_isoceles_symbol_v.triangle_isoceles_equilateral s);;*)

      let sym_ent_c = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in
      let sym_ent_t = sym_ent_3 in
      Format.sprintf "let %s s = %s_of_%s (%s_v.%s s);;" 
	(entity_name sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(entity_name sym_ent_c) 
;;

(** {6 Making_of_value} *)

let make sym_cdf soi_cal =
  let str = string_of sym_cdf soi_cal in
  match sym_cdf with
  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any ->
       Camlline_for_any_trio_current_son_top_value_t.Let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any str

  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg -> 
      Camlline_for_any_trio_current_son_top_value_t.Let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg str
;;

(** {6 Retrieving} *)

let retrieve tag_cdf =
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdf in
  make sym_cdf soi_cal
;;

(** {6 String_offing} *)

let string_off val_cdf =
  match val_cdf with
  | Camlline_for_any_trio_current_son_top_value_t.Let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any str -> str

  | Camlline_for_any_trio_current_son_top_value_t.Let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg str -> str 
;;

