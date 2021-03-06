(** {3 Camlline_for_formula_duo_localset_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_localset_builder_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cdb soi_cal =
  let nam_fun = "string_of" in

  let tag_cdb = Tag_v.make sym_cdb soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_duo_localset_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_localset_builder_tag 
      tag_cdb 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_cdb 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_dom, sym_ent_bui) = duo_off_list nam_cod nam_fun sym_cal sym_ent_l in

  match sym_cdb with
  | Camlline_for_formula_duo_localset_builder_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in ->

      Format.sprintf "  let dss_of_sym = %s_symbol_v.%s_symbol_of_%s_symbol in"
       (entity_name_capitalized sym_ent_dom)  
       (entity_name sym_ent_dom)  
       (entity_name sym_ent_bui)  

  | Camlline_for_formula_duo_localset_builder_symbol_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon ->

      Format.sprintf "  List.iter2 %s_symbol_by_sole_index_register_v.store soi_%s_l dss_%s_l;"
       (entity_name_capitalized sym_ent_dom)  
       (abbreviation_argument sym_ent_bui)
       (abbreviation_argument sym_ent_bui)
;;
	

(** {6 Making_of_value} *)

let make sym_cdb soi_cal =
  let str = string_of sym_cdb soi_cal in
  match sym_cdb with
  | Camlline_for_formula_duo_localset_builder_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in ->
     Camlline_for_formula_duo_localset_builder_value_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in str
  | Camlline_for_formula_duo_localset_builder_symbol_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon ->
     Camlline_for_formula_duo_localset_builder_value_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon str

;;

(** {6 Retrieving} *)

let retrieve tag_cdb =
  let sym_cdb = Tag_v.entity_off_tag tag_cdb in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdb in
  make sym_cdb soi_cal
;;

(** {6 String_offing} *)

let string_off val_cdb =
  match val_cdb with
  | Camlline_for_formula_duo_localset_builder_value_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in str -> str 
  | Camlline_for_formula_duo_localset_builder_value_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon str -> str 

;;

