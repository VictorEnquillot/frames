(** {3 Camlline_for_formula_uno_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_main_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_main_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_main sym_cut sym_ent_mai =
  match sym_cut with
  | Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in ->
      [
       sym_ent_mai
     ]
;;


