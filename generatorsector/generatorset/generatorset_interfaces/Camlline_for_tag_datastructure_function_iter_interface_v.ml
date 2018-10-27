(** {3 Camlline_for_tag_datastructure_function_iter_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_tag_datastructure_function_iter_interface_v";
   "Current : IGNR:Camlline_for_tag_datastructure_function_make_v";
   "Needed-by : FGNR:Camlline_for_tag_datastructure_function_make_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure_function_make for Leaf Entities"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cfi sym_ent_bui =
  match sym_cfi with
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map_equal_das_vdot_map
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map2_equal_das_vdot_map2
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter_equal_das_vdot_iter
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter2_equal_das_vdot_iter2 ->
      [
       sym_ent_bui;
     ]
;;


