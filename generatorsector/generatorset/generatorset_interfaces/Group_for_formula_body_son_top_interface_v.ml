(** {3 Group_for_formula_body_son_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_son_top_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_son_top_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_bare ->
(*  | Top_formula_t.Son _ -> *) 
(*      Top_symbol_t.Son *)
   
      let sym_ca1 = Camlline_for_formula_duo_son_top_symbol_v.pipe_et_formula_tdot_es_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_duo_son_top_bare_symbol_v.et_symbol_tdot_es in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_ca2;
     ]

  | Group_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_notleaf ->
(*  | Top_formula_t.Son_formula for_cc1 -> *)
(*      Top_symbol_t.Son_symbol *)
(*        (Son_formula_v.symbol_of_formula for_cc1) *)
      
      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow in
      let sym_ca2 = Camlline_for_symbol_duo_son_top_notleaf_symbol_v.et_symbol_tdot_es_symbol in
      let sym_ca3 = Camlline_for_formula_uno_son_symbol_v.lpar_es_formula_vdot_symbol_of_formula_for_as_rpar in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_son_symbol sym_ca3;
     ]

  | Group_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_ofstring ->
(*  | Top_formula_t.Son (s, _) -> *) 
(*      Top_symbol_t.Son s *)

      let sym_ca1 = Camlline_for_formula_duo_son_top_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow in
     let sym_ca2 = Camlline_for_symbol_duo_son_top_ofstring_symbol_v.et_symbol_tdot_es_sarg in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_ca2;
     ]
;;

