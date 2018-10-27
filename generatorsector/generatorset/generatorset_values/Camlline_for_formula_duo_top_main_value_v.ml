(** {3 Camlline_for_formula_duo_top_main_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_top_main_value_v";
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
    Camlline_for_formula_duo_top_main_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_main_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_main_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_top, sym_ent_mai) = duo_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in ->
   (* let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis *)

      if sym_ent_mai = sym_ent_top
      then 
	Format.sprintf "  "
      else
	Format.sprintf "  let sym_%s = %s_symbol_v.%s_symbol_of_%s_symbol sym_%s in"
	  (abbreviation_argument sym_ent_mai)
	  (entity_name_capitalized sym_ent_mai)
	  (entity_name sym_ent_mai)
	  (entity_name sym_ent_top)
	  (abbreviation_argument sym_ent_top)
	  
;;	

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in ->
     Camlline_for_formula_duo_top_main_value_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in str

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
  | Camlline_for_formula_duo_top_main_value_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in str -> str 

;;

