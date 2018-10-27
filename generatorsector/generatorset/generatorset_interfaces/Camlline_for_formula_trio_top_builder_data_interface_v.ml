(** {3 Camlline_for_formula_trio_top_builder_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_trio_top_builder_data_interface_v";
   "Needed-by : FGNR:Camlline_for_formula_trio_top_builder_data_formula_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cbd sym_ent_top sym_ent_bui sym_ent_dat =
  match sym_cbd with
  | Camlline_for_formula_trio_top_builder_data_symbol_t.Let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in ->
      [
       sym_ent_top;
       sym_ent_bui; 
       sym_ent_dat;
     ]
;;


