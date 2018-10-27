(** {3 Camlline_for_formula_uno_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_top_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_top_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_top sym_cut sym_ent_top =
  match sym_cut with
  | Camlline_for_formula_uno_top_symbol_t.For_at
  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in
  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function
  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal
  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal
  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in
  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name
  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in
  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in ->
      [
       sym_ent_top
     ]
;;


