(** {3 Camlline_for_formula_duo_top_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_top_builder_interface_v";
   "Needed-by : FGNR:Camlline_for_formula_interface_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Builderstructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_ctb sym_ent_top sym_ent_bui =
  match sym_ctb with
  | Camlline_for_formula_duo_top_builder_symbol_t.Eb_tag_list_off_et_formula_for_at
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_tag_tag_at_equal
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter_f_of_tag_ab_for_at_equal
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map_f_of_tag_ab_for_at_equal
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in ->

      [
       sym_ent_top;
       sym_ent_bui; 
     ]
;;


