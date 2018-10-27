(** {3 Group_for_formula_body_son_top_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_son_top_data_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_son_top_data_interface_v";
   "What-is-it : It defines the Data_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dodataset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_bare_for_formula ->
(*  | Top_formula_t.Son tag_dat_l -> tag_dat_l *)
      
      let sym_ca1 = Camlline_for_formula_trio_son_top_data_symbol_v.pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_ca1;
     ]

  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_notleaf_for_formula ->
      (* | Top_formula_t.Son_formula for_son -> *)
      (*   Son_formula_v.data_tag_list_off_son_formula for_son *)
      
      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow in
      let sym_ca2 = Camlline_for_formula_duo_son_data_symbol_v.es_formula_vdot_ed_tag_list_off_es_formula_for_as in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_data_symbol sym_ca2;
     ]

  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_ofstring_for_formula ->
(*  | Top_formula_t.Son (s, tag_dat_l) -> tag_dat_l *)

      let sym_ca1 = Camlline_for_formula_trio_son_top_data_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_ca1;
     ]
;;

