(** {3 Camlline_for_formula_duo_top_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_top_data_value_v";
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
    Camlline_for_formula_duo_top_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_data_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_data_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_top, sym_ent_dat) = duo_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at ->

      Format.sprintf "  %s_tag_list_off_%s_formula for_%s"
	(entity_name sym_ent_dat)  
	(entity_name sym_ent_top)  
	(abbreviation_argument sym_ent_top)

  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function ->

      Format.sprintf "let %s_tag_list_off_%s_formula = function"
	(entity_name sym_ent_dat)  
	(entity_name sym_ent_top)  

  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal ->

      Format.sprintf "let %s_tag_list_off_%s_formula for_%s ="
	(entity_name sym_ent_dat)  
	(entity_name sym_ent_top)  
	(abbreviation_argument sym_ent_top)

  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal ->

      Format.sprintf "let %s_tag_list_off_%s_tag tag_%s ="
	(entity_name sym_ent_dat)  
	(entity_name sym_ent_top)  
	(abbreviation_argument sym_ent_top)

;;
	

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function ->
      Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_formula_equal_function str
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal ->
      Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_formula_for_at_equal str
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal ->
      Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_tag_tag_at_equal str
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at ->
      Camlline_for_formula_duo_top_data_value_t.Ed_tag_list_off_et_formula_for_at str
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
  | Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_formula_equal_function str -> str 
  | Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_formula_for_at_equal str -> str 
  | Camlline_for_formula_duo_top_data_value_t.Let_ed_tag_list_off_et_tag_tag_at_equal str -> str 
  | Camlline_for_formula_duo_top_data_value_t.Ed_tag_list_off_et_formula_for_at str -> str 
;;

