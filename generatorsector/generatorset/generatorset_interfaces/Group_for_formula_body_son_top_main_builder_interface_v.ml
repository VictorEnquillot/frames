(** {3 Group_for_formula_body_son_top_main_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_son_top_main_builder_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_son_top_main_builder_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gtm =
  match sym_gtm with
  | Group_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_bare_for_formula ->
      (* | Top_symbol_t.Son ->  *)
      (*   let tag_bui_l = build_n_store sym_top soi_mai in *)
      (*   Top_formula_t.Son tag_bui_l *)
      
      let sym_ca1 = Camlline_for_symbol_duo_son_top_symbol_v.pipe_et_symbol_tdot_es_arrow in
      let sym_ca2 = Camlline_for_formula_trio_top_main_builder_symbol_v.let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in in
      let sym_ca3 = Camlline_for_formula_trio_son_top_builder_symbol_v.et_formula_tdot_es_tag_ab_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_ca3;
     ]

  | Group_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_ofstring_for_formula ->
     (* | Top_symbol_t.Son s ->  *)
     (*   let tag_bui_l = build_n_store sym_top soi_mai in *)
     (*   Top_formula_t.Son (s, tag_bui_l) *)

      let sym_ca1 = Camlline_for_symbol_duo_son_top_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow in
      let sym_ca2 = Camlline_for_formula_trio_top_main_builder_symbol_v.let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in in
      let sym_ca3 = Camlline_for_formula_trio_son_top_builder_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_ca3;
     ]
;;

