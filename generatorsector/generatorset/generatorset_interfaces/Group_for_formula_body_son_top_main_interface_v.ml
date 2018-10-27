(** {3 Group_for_formula_body_son_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_son_top_main_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_son_top_main_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gtm =
  match sym_gtm with
  | Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula ->
      (* | Top_symbol_t.Son_symbol sym_son -> *)
      (*     Top_formula_t.Son_formula  *)
      (*       (Son_interface_v.make sym_son soi_mai) *)
      
     let sym_ca1 = Camlline_for_symbol_duo_son_top_symbol_v.pipe_et_symbol_tdot_es_symbol_sym_as_arrow in
     let sym_ca2 = Camlline_for_formula_duo_son_top_symbol_v.et_formula_tdot_es_formula in
     let sym_ca3 = Camlline_for_formula_duo_son_main_symbol_v.lpar_es_formula_vdot_make_sym_as_soi_am_rpar in
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_ca1;
      Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_top_symbol sym_ca2;
      Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_main_symbol sym_ca3;
    ]

;;

