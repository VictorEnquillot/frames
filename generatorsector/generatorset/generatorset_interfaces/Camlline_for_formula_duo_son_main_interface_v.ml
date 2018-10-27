(** {3 Camlline_for_formula_duo_son_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_son_main_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_son_main_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_duo sym_cut sym_ent_son sym_ent_mai =
  match sym_cut with
  | Camlline_for_formula_duo_son_main_symbol_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar ->

      [
       sym_ent_son;
       sym_ent_mai;
     ]
;;


