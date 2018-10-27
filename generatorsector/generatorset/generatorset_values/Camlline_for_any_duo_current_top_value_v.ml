(** {3 Camlline_for_any_duo_current_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_current_top_value_v";
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
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_current_top_symbol sym_cdf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l in

  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cdf with
  | Camlline_for_any_duo_current_top_symbol_t.Let_ec_any_off_et_any_ac_at_equal -> (* let triangle_scalene_symbol_off_figureset_symbol sym_geo = *)
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let %s_off_%s %s = " 
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_for_any_duo_current_top_symbol_t.Let_is_ec_any_off_et_any_ac_at_equal ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let is_%s_off_%s %s =" 
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_for_any_duo_current_top_symbol_t.Let_is_ec_ac_at_equal ->
   (* let is_x sym_coo = *)

      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let is_%s %s =" 
	(entity_name sym_ent_c) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_ac_ac_equal ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let %s_of_%s %s = " 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 
	(abbreviation_categorized_argument sym_cat sym_ent_c)
;;

(** {6 Making_of_value} *)

let make sym_cdf soi_cal =
  let str = string_of sym_cdf soi_cal in
  match sym_cdf with
  | Camlline_for_any_duo_current_top_symbol_t.Let_ec_any_off_et_any_ac_at_equal ->
       Camlline_for_any_duo_current_top_value_t.Let_ec_any_off_et_any_ac_at_equal str

  | Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_ac_ac_equal ->
       Camlline_for_any_duo_current_top_value_t.Let_et_any_of_ec_any_ac_ac_equal str

  | Camlline_for_any_duo_current_top_symbol_t.Let_is_ec_any_off_et_any_ac_at_equal ->
       Camlline_for_any_duo_current_top_value_t.Let_is_ec_any_off_et_any_ac_at_equal str

  | Camlline_for_any_duo_current_top_symbol_t.Let_is_ec_ac_at_equal ->
       Camlline_for_any_duo_current_top_value_t.Let_is_ec_ac_at_equal str
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
  | Camlline_for_any_duo_current_top_value_t.Let_ec_any_off_et_any_ac_at_equal str ->
     str

  | Camlline_for_any_duo_current_top_value_t.Let_et_any_of_ec_any_ac_ac_equal str ->
     str

  | Camlline_for_any_duo_current_top_value_t.Let_is_ec_any_off_et_any_ac_at_equal str ->
     str

  | Camlline_for_any_duo_current_top_value_t.Let_is_ec_ac_at_equal str ->
     str
;;

