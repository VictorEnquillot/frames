(** {3 Group_for_formula_body_localset_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_localset_builder_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_localset_builder_interface_v";
   "What-is-it : It defines the Localset_builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dolocalset_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gmb =
  match sym_gmb with
  | Group_for_formula_body_localset_builder_symbol_t.Localset_symbol_builder_list ->
  (* let dss_of_sym = Localset_symbol_v.domain_symbol_of_builder_symbol in *)
  (* let dss_bui_l = List.map dss_of_sym sym_bui_l in *)

      let sym_ca1 = Camlline_for_formula_duo_localset_builder_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in in
      let sym_ca2 = Camlline_for_formula_uno_builder_symbol_v.let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca2;
     ]

  | Group_for_formula_body_localset_builder_symbol_t.Store_builder_tag_list ->
(* List.iter2 Localset_symbol_by_sole_index_register_v.store soi_bui_l dss_bui_l; *)
 	
      let sym_ca1 = Camlline_for_formula_duo_localset_builder_symbol_v.list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ca1;
     ]

;;



