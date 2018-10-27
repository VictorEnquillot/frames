(** {3 Group_for_formula_body_builder_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_builder_data_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_builder_data_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gbd =
  match sym_gbd with
  | Group_for_formula_body_builder_data_symbol_t.Data_formula_list ->
      (* let tag_dat_ll = List.map *)
      (*   Builder_formula_v.data_tag_list_off_builder_formula for_bui_l in *)
      (*   List.flatten tag_dat_ll *)
	
      let sym_ca1 = Camlline_for_formula_uno_data_symbol_v.let_tag_ad_ll_equal_list_dot_map in
      let sym_ca2 = Camlline_for_formula_duo_builder_data_symbol_v.eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in in
      let sym_ca3 = Camlline_for_formula_uno_data_symbol_v.list_dot_flatten_tag_ad_ll in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_data_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_data_symbol sym_ca3;
     ]
;;

