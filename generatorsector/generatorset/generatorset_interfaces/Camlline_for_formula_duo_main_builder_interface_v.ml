(** {3 Camlline_for_formula_duo_main_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_main_builder_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_main_builder_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_duo sym_cut sym_ent_mai sym_ent_bui =
  match sym_cut with
  | Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in
 | Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in ->

      [
       sym_ent_mai;
       sym_ent_bui;
     ]
;;


