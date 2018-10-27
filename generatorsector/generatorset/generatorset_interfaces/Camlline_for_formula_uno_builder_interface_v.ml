(** {3 Camlline_for_formula_uno_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_builder_interface_v";
   "Current : IGNR:Camlline_for_formula_uno_builder_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_builder_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cub sym_ent_bui =
  match sym_cub with
  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders
  | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in
  | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l
  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l ->

      [
       sym_ent_bui;
     ]
;;


