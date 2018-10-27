(** {3 Camlline_for_formula_trio_top_main_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_trio_top_main_builder_value_v";
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
    Camlline_for_formula_trio_top_main_builder_formula_v.entity_tag_list_off_camlline_for_formula_trio_top_main_builder_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_top, sym_ent_mai, sym_ent_bui) = trio_of_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_trio_top_main_builder_symbol_t.Let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in ->

      Format.sprintf "      let tag_%s_l = build_n_store sym_%s soi_%s in"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_top)
	(abbreviation_argument sym_ent_mai)
	

;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_trio_top_main_builder_symbol_t.Let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in ->
     Camlline_for_formula_trio_top_main_builder_value_t.Let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in str

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
  | Camlline_for_formula_trio_top_main_builder_value_t.Let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in str -> str 

;;

