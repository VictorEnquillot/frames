(** {3 Camlline_for_formula_uno_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_builder_value_v";
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
    Camlline_for_formula_uno_builder_formula_v.entity_tag_list_off_camlline_for_formula_uno_builder_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_bui = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in ->

      Format.sprintf "  let for_%s_l = List.map %s_formula_v.retrieve tag_%s_l in"
	(abbreviation_argument sym_ent_bui)
	(entity_name_capitalized sym_ent_bui)
 	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in ->

      Format.sprintf "  let dss_%s_l = List.map dss_of_sym sym_%s_l in"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal ->

      Format.sprintf "  let soi_%s_l ="
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->

      Format.sprintf "  List.iter2 f_of_tag_%s tag_%s_l_1 tag_%s_l_2"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l ->

      Format.sprintf "  List.iter f_of_tag_%s tag_%s_l"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->

      Format.sprintf "  List.map2 f_of_tag_%s tag_%s_l_1 tag_%s_l_2"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l ->

      Format.sprintf "  List.map2 Tag_v.make sym_%s_l soi_%s_l"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l ->

      Format.sprintf "  List.map f_of_tag_%s tag_%s_l"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders ->

      Format.sprintf "  \"%s\""
	(entity_name sym_ent_bui)

  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l ->

      Format.sprintf "  Tools_fgnr_v.store_builder_dss_datastructure_dss_of_sym sym_%s_l soi_%s_l"
	(abbreviation_argument sym_ent_bui)
	(abbreviation_argument sym_ent_bui)

;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in ->
     Camlline_for_formula_uno_builder_value_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in str

  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in ->
      Camlline_for_formula_uno_builder_value_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in str
	
  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal ->
      Camlline_for_formula_uno_builder_value_t.Let_soi_ab_l_equal str
	
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->
     Camlline_for_formula_uno_builder_value_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 str
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l ->
     Camlline_for_formula_uno_builder_value_t.List_dot_iter_f_of_tag_ab_tag_ab_l str
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->
     Camlline_for_formula_uno_builder_value_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 str
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l ->
     Camlline_for_formula_uno_builder_value_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l str
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l ->
     Camlline_for_formula_uno_builder_value_t.List_dot_map_f_of_tag_ab_tag_ab_l str
  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders ->
     Camlline_for_formula_uno_builder_value_t.Double_quote_builders str
  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l ->
     Camlline_for_formula_uno_builder_value_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l str

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
  | Camlline_for_formula_uno_builder_value_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in str -> str 
  | Camlline_for_formula_uno_builder_value_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in str -> str
  | Camlline_for_formula_uno_builder_value_t.Let_soi_ab_l_equal str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_iter_f_of_tag_ab_tag_ab_l str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l str -> str 
  | Camlline_for_formula_uno_builder_value_t.List_dot_map_f_of_tag_ab_tag_ab_l str -> str 
  | Camlline_for_formula_uno_builder_value_t.Double_quote_builders str -> str 
  | Camlline_for_formula_uno_builder_value_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l str -> str 

;;

