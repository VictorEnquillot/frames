(** {3 Camlline_for_formula_uno_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_data_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cud soi_cal =
  let tag_cud = Tag_v.make sym_cud soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_uno_data_formula_v.entity_tag_list_off_camlline_for_formula_uno_data_tag 
      tag_cud 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_data_symbol sym_cud 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_dat = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cud with
  | Camlline_for_formula_uno_data_symbol_t.Double_quote_data ->

      Format.sprintf "  \"%s\""
	(abbreviation_argument sym_ent_dat)
 
  | Camlline_for_formula_uno_data_symbol_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in ->
 
      Format.sprintf "  let gss_%s_l = List.map gss_of_sym sym_%s_l in"
	(abbreviation_argument sym_ent_dat)
	(abbreviation_argument sym_ent_dat)

  | Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal ->

      Format.sprintf "  let soi_%s_l ="
	(abbreviation_argument sym_ent_dat)
 
  | Camlline_for_formula_uno_data_symbol_t.Let_tag_ad_ll_equal_list_dot_map ->

      Format.sprintf "  let tag_%s_ll = List.map"
	(abbreviation_argument sym_ent_dat)
 
  | Camlline_for_formula_uno_data_symbol_t.List_dot_flatten_tag_ad_ll ->

      Format.sprintf "  List.flatten tag_%s_ll"
	(abbreviation_argument sym_ent_dat)
 
  | Camlline_for_formula_uno_data_symbol_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l ->
 
      Format.sprintf "  List.map2 Tag_v.make sym_%s_l soi_%s_l"
	(abbreviation_argument sym_ent_dat)
	(abbreviation_argument sym_ent_dat)
;;
	

(** {6 Making_of_value} *)

let make sym_cud soi_cal =
  let str = string_of sym_cud soi_cal in
  match sym_cud with
  | Camlline_for_formula_uno_data_symbol_t.Double_quote_data ->
     Camlline_for_formula_uno_data_value_t.Double_quote_data str
  | Camlline_for_formula_uno_data_symbol_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in ->
     Camlline_for_formula_uno_data_value_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in str
  | Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal ->
     Camlline_for_formula_uno_data_value_t.Let_soi_ad_l_equal str
  | Camlline_for_formula_uno_data_symbol_t.Let_tag_ad_ll_equal_list_dot_map ->
     Camlline_for_formula_uno_data_value_t.Let_tag_ad_ll_equal_list_dot_map str
  | Camlline_for_formula_uno_data_symbol_t.List_dot_flatten_tag_ad_ll ->
     Camlline_for_formula_uno_data_value_t.List_dot_flatten_tag_ad_ll str
  | Camlline_for_formula_uno_data_symbol_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l ->
     Camlline_for_formula_uno_data_value_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l str

;;

(** {6 Retrieving} *)

let retrieve tag_cud =
  let sym_cud = Tag_v.entity_off_tag tag_cud in
  let soi_cal = Tag_v.sole_index_off_tag tag_cud in
  make sym_cud soi_cal
;;

(** {6 String_offing} *)

let string_off val_cud =
  match val_cud with
  | Camlline_for_formula_uno_data_value_t.Double_quote_data str -> str 
  | Camlline_for_formula_uno_data_value_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in str -> str 
  | Camlline_for_formula_uno_data_value_t.Let_soi_ad_l_equal str -> str 
  | Camlline_for_formula_uno_data_value_t.Let_tag_ad_ll_equal_list_dot_map str -> str 
  | Camlline_for_formula_uno_data_value_t.List_dot_flatten_tag_ad_ll str -> str 
  | Camlline_for_formula_uno_data_value_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l str -> str 

;;

