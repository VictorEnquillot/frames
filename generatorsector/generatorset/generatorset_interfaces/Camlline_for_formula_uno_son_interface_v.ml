(** {3 Camlline_for_formula_uno_son_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_son_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_son_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_son sym_cut sym_ent_son =
  match sym_cut with
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_map_for_as
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_name_for_as
  | Camlline_for_formula_uno_son_symbol_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in 
  | Camlline_for_formula_uno_son_symbol_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar ->

      [
       sym_ent_son
     ]
;;


