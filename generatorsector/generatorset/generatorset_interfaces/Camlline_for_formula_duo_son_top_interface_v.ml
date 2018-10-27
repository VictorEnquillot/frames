(** {3 Camlline_for_formula_duo_son_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_son_top_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_son_top_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dotopset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_son_of_top sym_cst sym_ent_son sym_ent_top =
  match sym_cst with
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula
  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow
  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_underscore_arrow
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_for_das
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in ->

      [
       sym_ent_son;
       sym_ent_top;
     ]
;;


