(** {3 Group_for_formula_body_main_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_main_builder_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_main_builder_interface_v";
   "What-is-it : It defines the Main_builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gmb =
  match sym_gmb with
  | Group_for_formula_body_main_builder_symbol_t.Builder_node_symbol_builder_list ->
(*  let sym_bui_l = Builder_symbol_list_by_main_tag_provider_v.provide tag_bui *)

      let sym_ca1 = Camlline_for_formula_duo_main_builder_symbol_v.let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_ca1;
     ]

  | Group_for_formula_body_main_builder_symbol_t.Sole_index_builder_list ->
  (* let soi_bui_l = *)
  (*   Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
  (*     1 (List.length sym_bui_l) soi_top in *)

      let sym_ca1 = Camlline_for_formula_uno_builder_symbol_v.let_soi_ab_l_equal in
      let sym_ca2 = Camlline_constant_function_symbol_v.sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index in
      let sym_ca3 = Camlline_for_formula_duo_main_builder_symbol_v.one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_ca3;
     ]
;;



