(** {3 Camlline_for_any_duo_current_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_current_son_value_v";
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
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_current_son_symbol sym_cdf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_cur, sym_ent_son) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l in

  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_ite = Camlline_tag_v.item_symbol_off_camlline_tag tag_cal in

  let sym_cof_val = Contentfile_symbol_v.value_alone in

  match sym_cdf with
  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as -> 
   (*     Triangle_symbol_v.triangle_isoceles_symbol_off_triangle_symbol sym_tri *)

      Format.sprintf "    %s_v.%s_off_%s %s" 
	(module_name_capitalized sym_cat sym_ent_son) 
	(module_name sym_cat sym_ent_cur) 
	(module_name sym_cat sym_ent_son) 
	(abbreviation_categorized_argument sym_cat sym_ent_son)

  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
   (* "      Triangle_symbol_v.is_triangle_isoceles_symbol_off_triangle_symbol sym_tri" *)

      Format.sprintf "%s%s.is_%s_off_%s %s"
	(space_for_querying sym_ite)
	(module_name_capitalized_suffixed sym_cat sym_ent_son sym_cof_val)
        (module_name sym_cat sym_ent_cur) 
	(module_name sym_cat sym_ent_son) 
	(abbreviation_categorized_argument sym_cat sym_ent_son)

  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_ac_as ->
   (* "      Coordinate_cartesian_symbol_v.is_x sym_coo" *)

      Format.sprintf "%s%s.is_%s %s"
	(space_for_querying sym_ite)
	(module_name_capitalized_suffixed sym_cat sym_ent_son sym_cof_val)
        (entity_name sym_ent_cur) 
	(abbreviation_categorized_argument sym_cat sym_ent_son)

  | Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in ->

      Format.sprintf "  let %s = %s.%s_of_%s %s in" 
	(abbreviation_categorized_argument sym_cat sym_ent_son)
	(module_name_capitalized_suffixed sym_cat sym_ent_son sym_cof_val)
	(module_name sym_cat sym_ent_son) 
	(module_name sym_cat sym_ent_cur) 
	(abbreviation_categorized_argument sym_cat sym_ent_cur)

;;

(** {6 Making_of_value} *)

let make sym_cdf soi_cal =
  let str = string_of sym_cdf soi_cal in
  match sym_cdf with
  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
       Camlline_for_any_duo_current_son_value_t.Es_any_vdot_ec_any_off_es_any_ac_as str

  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
       Camlline_for_any_duo_current_son_value_t.Es_any_vdot_is_ec_any_off_es_any_ac_as str

  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_ac_as ->
       Camlline_for_any_duo_current_son_value_t.Es_any_vdot_is_ec_ac_as str

  | Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in ->
       Camlline_for_any_duo_current_son_value_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in str

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
  | Camlline_for_any_duo_current_son_value_t.Es_any_vdot_ec_any_off_es_any_ac_as str -> str

  | Camlline_for_any_duo_current_son_value_t.Es_any_vdot_is_ec_any_off_es_any_ac_as str -> str

  | Camlline_for_any_duo_current_son_value_t.Es_any_vdot_is_ec_ac_as str -> str

  | Camlline_for_any_duo_current_son_value_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in str -> str

;;

