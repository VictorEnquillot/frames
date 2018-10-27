(** {3 Camlline_for_formula_duo_top_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_top_builder_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_ctb soi_cal =
  let nam_fun = "string_of" in

  let tag_ctb = Tag_v.make sym_ctb soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_duo_top_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_builder_tag 
      tag_ctb 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ctb 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_top, sym_ent_bui) = duo_off_list nam_cod nam_fun sym_cal sym_ent_l in

  match sym_ctb with
  | Camlline_for_formula_duo_top_builder_symbol_t.Eb_tag_list_off_et_formula_for_at ->

      Format.sprintf "  %s_tag_list_off_%s_formula for_%s" 
       (entity_name sym_ent_bui)  
       (entity_name sym_ent_top)  
       (abbreviation_argument sym_ent_top)

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function ->

      Format.sprintf "let %s_tag_list_off_%s_formula = function" 
       (entity_name sym_ent_bui)  
       (entity_name sym_ent_top)  
 
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_tag_tag_at_equal ->

      Format.sprintf "let %s_tag_list_off_%s_tag tag_%s =" 
	(entity_name sym_ent_bui)  
	(entity_name sym_ent_top)  
        (abbreviation_argument sym_ent_top)
	
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal ->

      Format.sprintf "let iter2 f_of_tag_%s for_%s_1 for_%s_2 ="
       (abbreviation_argument sym_ent_bui)  
       (abbreviation_argument sym_ent_top)  
       (abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter_f_of_tag_ab_for_at_equal ->

      Format.sprintf "let iter f_of_tag_%s for_%s ="
       (abbreviation_argument sym_ent_bui)  
       (abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal ->

      Format.sprintf "let map2 f_of_tag_%s for_%s_1 for_%s_2 ="
       (abbreviation_argument sym_ent_bui)  
       (abbreviation_argument sym_ent_top)  
       (abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map_f_of_tag_ab_for_at_equal ->

      Format.sprintf "let map f_of_tag_%s for_%s ="
       (abbreviation_argument sym_ent_bui)  
       (abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in ->

      Format.sprintf "  let sym_%s_l = %s_interface_v.make_of_tuple tup_%s in"
	(abbreviation_argument sym_ent_bui)  
	(entity_name_capitalized sym_ent_top)
	(abbreviation_argument sym_ent_top)  
	
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in ->
      Format.sprintf "  let tag_%s_l_1 = %s_tag_list_off_%s_formula for_%s_1 in"
	(abbreviation_argument sym_ent_bui)  
	(entity_name sym_ent_bui)
	(entity_name sym_ent_top)
	(abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in ->

      Format.sprintf "  let tag_%s_l_2 = %s_tag_list_off_%s_formula for_%s_2 in"
	(abbreviation_argument sym_ent_bui)  
	(entity_name sym_ent_bui)
	(entity_name sym_ent_top)
	(abbreviation_argument sym_ent_top)  

  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in ->

      Format.sprintf "  let tag_%s_l = %s_tag_list_off_%s_formula for_%s in"
	(abbreviation_argument sym_ent_bui)  
	(entity_name sym_ent_bui)
	(entity_name sym_ent_top)
	(abbreviation_argument sym_ent_top)  
;;
	

(** {6 Making_of_value} *)

let make sym_ctb soi_cal =
  let str = string_of sym_ctb soi_cal in
  match sym_ctb with
  | Camlline_for_formula_duo_top_builder_symbol_t.Eb_tag_list_off_et_formula_for_at ->
     Camlline_for_formula_duo_top_builder_value_t.Eb_tag_list_off_et_formula_for_at str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function ->
     Camlline_for_formula_duo_top_builder_value_t.Let_eb_tag_list_off_et_formula_equal_function str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_tag_tag_at_equal ->
     Camlline_for_formula_duo_top_builder_value_t.Let_eb_tag_list_off_et_tag_tag_at_equal str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal ->
     Camlline_for_formula_duo_top_builder_value_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter_f_of_tag_ab_for_at_equal ->
     Camlline_for_formula_duo_top_builder_value_t.Let_iter_f_of_tag_ab_for_at_equal str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal ->
     Camlline_for_formula_duo_top_builder_value_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map_f_of_tag_ab_for_at_equal ->
     Camlline_for_formula_duo_top_builder_value_t.Let_map_f_of_tag_ab_for_at_equal str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in ->
     Camlline_for_formula_duo_top_builder_value_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in ->
     Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in ->
     Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in str
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in ->
     Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in str
;;

(** {6 Retrieving} *)

let retrieve tag_ctb =
  let sym_ctb = Tag_v.entity_off_tag tag_ctb in
  let soi_cal = Tag_v.sole_index_off_tag tag_ctb in
  make sym_ctb soi_cal
;;

(** {6 String_offing} *)

let string_off val_ctb =
  match val_ctb with
  | Camlline_for_formula_duo_top_builder_value_t.Eb_tag_list_off_et_formula_for_at str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_eb_tag_list_off_et_formula_equal_function str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_eb_tag_list_off_et_tag_tag_at_equal str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_iter_f_of_tag_ab_for_at_equal str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_map_f_of_tag_ab_for_at_equal str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in str -> str
  | Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in str -> str 
  | Camlline_for_formula_duo_top_builder_value_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in str -> str 
;;

