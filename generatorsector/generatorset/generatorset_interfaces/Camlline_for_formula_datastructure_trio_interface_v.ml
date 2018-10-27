(** {3 Camlline_for_formula_datastructure_trio_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_datastructure_trio_interface_v";
   "Current : IGNR:Camlline_for_formula_datastructure_v";
   "Needed-by : FGNR:Camlline_for_formula_datastructure_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cut sym_ent_a sym_ent_b sym_ent_c =
  match sym_cut with
  | Camlline_for_formula_datastructure_trio_symbol_t.Das_vdot_name_nam_a_nam_b_nam_c_for_at ->
      [
       sym_ent_a;
       sym_ent_b;
       sym_ent_c;
     ]
;;


